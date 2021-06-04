package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Painting;
import ru.iu3.rpo.backend.models.Artist;
import ru.iu3.rpo.backend.models.Museum;
import ru.iu3.rpo.backend.repositories.PaintingRepository;
import ru.iu3.rpo.backend.repositories.ArtistRepository;
import ru.iu3.rpo.backend.repositories.MuseumRepository;

import javax.validation.Valid;
import java.util.*;

@RestController
@RequestMapping("/api/v1")
public class PaintingController {
    @Autowired
    PaintingRepository paintingRepository;

    @Autowired
    ArtistRepository artistRepository;

    @Autowired
    MuseumRepository museumRepository;

    @GetMapping("/paintings")
    public List<Painting> getAllPaintings() {
        return paintingRepository.findAll();
    }

    @PostMapping("/paintings")
    public ResponseEntity<Object> addPainting(@Valid @RequestBody Painting painting) {
        try {
            Optional<Artist> ca = artistRepository.findById(painting.artist.id);
            if (ca.isPresent())
            {
                painting.artist=ca.get();
            }
            else throw new Exception("Something bad happened 1");
            Optional<Museum> cm = museumRepository.findById(painting.museum.id);
            if (cm.isPresent())
            {
                painting.museum=cm.get();
            }
            else throw new Exception("Something bad happened 2");
            Painting np = paintingRepository.save(painting);
            return ResponseEntity.ok(np);
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("painting.name_UNIQUE"))
                error = "Painting with that name already in the system";
            else if (ex.getMessage().contains("Something bad happened 1"))
                error = "Something bad happened 1";
            else if (ex.getMessage().contains("Something bad happened 2"))
                error = "Something bad happened 2";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
    }

    @PutMapping("/paintings/{id}")
    public ResponseEntity<Object> editPaintingInfo(@PathVariable(value="id") Long paintingId, @Valid @RequestBody Painting paintingDetails){
        Painting painting = null;
        Optional<Painting> cp = paintingRepository.findById(paintingId);
        try {
            if (cp.isPresent()) {
                painting = cp.get();
                painting.name = paintingDetails.name;
                painting.year = paintingDetails.year;
                Optional<Artist> ae = artistRepository.findById(paintingDetails.artist.id);
                Optional<Museum> me = museumRepository.findById(paintingDetails.museum.id);
                if (ae.isPresent()){
                    painting.artist = ae.get();
                }
                if (me.isPresent()){
                    painting.museum = me.get();
                }
                paintingRepository.save(painting);
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "painting could not be found");
            }
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("painting could not be found"))
                error = "painting could not be found";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
        return ResponseEntity.ok(painting);
    }

    @DeleteMapping("/paintings/{id}")
    public Map<String, Boolean> deletePaintingInfo(@PathVariable(value="id") Long paintingId)
    {
        Optional<Painting> painting = paintingRepository.findById(paintingId);
        Map<String, Boolean> response = new HashMap<>();
        if (painting.isPresent())
        {
            paintingRepository.delete(painting.get());
            response.put("deleted", Boolean.TRUE);
        }
        else
        {
            response.put("deleted", Boolean.FALSE);
        }
        return response;
    }
}
