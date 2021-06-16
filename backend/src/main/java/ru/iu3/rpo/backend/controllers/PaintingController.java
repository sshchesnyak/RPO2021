package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.iu3.rpo.backend.models.Country;
import ru.iu3.rpo.backend.models.Painting;
import ru.iu3.rpo.backend.models.Artist;
import ru.iu3.rpo.backend.models.Museum;
import ru.iu3.rpo.backend.repositories.PaintingRepository;
import ru.iu3.rpo.backend.repositories.ArtistRepository;
import ru.iu3.rpo.backend.repositories.MuseumRepository;
import ru.iu3.rpo.backend.tools.DataValidationException;

import javax.validation.Valid;
import java.util.*;

@CrossOrigin(origins = "http://localhost:3000")
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
    public Page<Painting> getAllPaintings(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return paintingRepository.findAll(PageRequest.of(page,limit, Sort.by(Sort.Direction.ASC,"name")));
    }

    @GetMapping("/paintings/{id}")
    public ResponseEntity<Painting> getPainting(@PathVariable(value="id") Long paintingId) throws DataValidationException {
        Painting painting = paintingRepository.findById(paintingId).orElseThrow(()->new DataValidationException("Country with the following id not found"));
        return ResponseEntity.ok(painting);
    }

    @PostMapping("/paintings")
    public ResponseEntity<Object> addPainting(@Valid @RequestBody Painting painting) throws DataValidationException {
        try {
            Artist artist = artistRepository.findById(painting.artist.id).orElseThrow(()->new DataValidationException("Artist with the following id not found"));
            painting.artist=artist;
            Museum museum = museumRepository.findById(painting.museum.id).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
            painting.museum=museum;
            Painting np = paintingRepository.save(painting);
            return ResponseEntity.ok(np);
        }
        catch (Exception ex){
            if (ex.getMessage().contains("painting.name_UNIQUE"))
                throw new DataValidationException("Painting with that name already in the system");
            else
                throw new DataValidationException("Unidentified error");
        }
    }

    @PutMapping("/paintings/{id}")
    public ResponseEntity<Object> editPaintingInfo(@PathVariable(value="id") Long paintingId, @Valid @RequestBody Painting paintingDetails) throws DataValidationException{
        Painting painting = paintingRepository.findById(paintingId).orElseThrow(()->new DataValidationException("Painting with the following id not found"));
        try {
            painting.name = paintingDetails.name;
            painting.year = paintingDetails.year;
            Artist artist = artistRepository.findById(paintingDetails.artist.id).orElseThrow(()->new DataValidationException("Artist with the following id not found"));
            Museum museum = museumRepository.findById(paintingDetails.museum.id).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
            painting.artist = artist;
            painting.museum = museum;
            paintingRepository.save(painting);
        }
        catch (Exception ex){
            if (ex.getMessage().contains("painting could not be found"))
                throw new DataValidationException("painting could not be found");
            else
                throw new DataValidationException("Unidentified error");
        }
        return ResponseEntity.ok(painting);
    }

    @PostMapping("/deletepaintings")
    public ResponseEntity deletePaintingInfo(@Valid @RequestBody List<Painting> paintings)
    {
        paintingRepository.deleteAll(paintings);
        return new ResponseEntity(HttpStatus.OK);
    }
}
