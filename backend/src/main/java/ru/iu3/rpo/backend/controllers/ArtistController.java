package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Artist;
import ru.iu3.rpo.backend.models.Country;
import ru.iu3.rpo.backend.models.Painting;
import ru.iu3.rpo.backend.repositories.ArtistRepository;
import ru.iu3.rpo.backend.repositories.CountryRepository;

import javax.validation.Valid;
import java.util.*;

@RestController
@RequestMapping("/api/v1")
public class ArtistController {
    @Autowired
    ArtistRepository artistRepository;

    @Autowired
    CountryRepository countryRepository;

    @GetMapping("/artists")
    public List<Artist> getAllArtists() {
        return artistRepository.findAll();
    }

    @GetMapping("/artists/{id}/paintings")
    public ResponseEntity<List<Painting>>getArtistPaintings(@PathVariable(value="id") Long artistId) {
        Optional<Artist> ca = artistRepository.findById(artistId);
        if (ca.isPresent())
        {
            return ResponseEntity.ok(ca.get().paintings);
        }
        return ResponseEntity.ok(new ArrayList<Painting>());
    }

    @PostMapping("/artists")
    public ResponseEntity<Object> addArtist(@Valid @RequestBody Artist artist) {
        try {
            if (artist.name.matches("[А-Я][а-я]+\\s[А-Я][а-я]+([а-я]*|\\s[А-Я][а-я]+)")) {
                Optional<Country> cc = countryRepository.findById(artist.country.id);
                if (cc.isPresent())
                {
                    artist.country=cc.get();
                }
                Artist na = artistRepository.save(artist);
                return ResponseEntity.ok(na);
            }
            else throw new Exception("Wrong artist name field format");
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("artists.name_UNIQUE"))
                error = "Artist is already in the system";
            else if (ex.getMessage().contains("Wrong artist name field format"))
                error="Wrong artist name field format";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
    }

    @PutMapping("/artists/{id}")
    public ResponseEntity<Object> editArtistInfo(@PathVariable(value="id") Long countryId, @Valid @RequestBody Artist artistDetails){
        Artist artist = null;
        Optional<Artist> ca = artistRepository.findById(countryId);
        try {
            if (ca.isPresent()) {
                artist = ca.get();
                if (artistDetails.name.matches("[А-Я][а-я]+\\s[А-Я][а-я]+([а-я]*|\\s[А-Я][а-я]+)")) {
                    artist.name = artistDetails.name;
                    artist.century=artistDetails.century;
                    Optional<Country> ce = countryRepository.findById(artistDetails.country.id);
                    if (ce.isPresent()){
                        artist.country=ce.get();
                    }
                    artistRepository.save(artist);
                }
                else throw new Exception("Wrong artist name field format");
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "artist could not be found");
            }
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("artist could not be found"))
                error = "artist could not be found";
            else if (ex.getMessage().contains("Wrong artist name field format"))
                error="Wrong artist name field format";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
        return ResponseEntity.ok(artist);
    }

    @DeleteMapping("/artists/{id}")
    public Map<String, Boolean> deleteArtistInfo(@PathVariable(value="id") Long artistId)
    {
        Optional<Artist> artist = artistRepository.findById(artistId);
        Map<String, Boolean> response = new HashMap<>();
        if (artist.isPresent())
        {
            artistRepository.delete(artist.get());
            response.put("deleted", Boolean.TRUE);
        }
        else
        {
            response.put("deleted", Boolean.FALSE);
        }
        return response;
    }
}
