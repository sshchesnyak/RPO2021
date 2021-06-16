package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Artist;
import ru.iu3.rpo.backend.models.Country;
import ru.iu3.rpo.backend.models.Painting;
import ru.iu3.rpo.backend.repositories.ArtistRepository;
import ru.iu3.rpo.backend.repositories.CountryRepository;
import ru.iu3.rpo.backend.tools.DataValidationException;

import javax.validation.Valid;
import java.util.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class ArtistController {
    @Autowired
    ArtistRepository artistRepository;

    @Autowired
    CountryRepository countryRepository;

    @GetMapping("/artists")
    public Page<Artist> getAllArtists(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return artistRepository.findAll(PageRequest.of(page,limit, Sort.by(Sort.Direction.ASC,"name")));
    }

    @GetMapping("/allartists")
    public List<Artist> getAllTheArtists() {
        return artistRepository.findAll();
    }

    @GetMapping("/artists/{id}")
    public ResponseEntity<Artist> getArtist(@PathVariable(value="id") Long artistId) throws DataValidationException {
        Artist artist = artistRepository.findById(artistId).orElseThrow(()->new DataValidationException("Artist with the following id not found"));
        return ResponseEntity.ok(artist);
    }

    @GetMapping("/artists/{id}/paintings")
    public ResponseEntity<List<Painting>>getArtistPaintings(@PathVariable(value="id") Long artistId) throws DataValidationException {
        Artist artist = artistRepository.findById(artistId).orElseThrow(()->new DataValidationException("Artist with the following id not found"));
        return ResponseEntity.ok(artist.paintings);
    }

    @PostMapping("/artists")
    public ResponseEntity<Object> addArtist(@Valid @RequestBody Artist artist) throws DataValidationException{
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
            if (ex.getMessage().contains("artists.name_UNIQUE"))
                throw new DataValidationException("Artist is already in the system");
            else if (ex.getMessage().contains("Wrong artist name field format"))
                throw new DataValidationException("Wrong artist name field format");
            else
                throw new DataValidationException("Unidentified error");
        }
    }

    @PutMapping("/artists/{id}")
    public ResponseEntity<Object> editArtistInfo(@PathVariable(value="id") Long artistId, @Valid @RequestBody Artist artistDetails) throws DataValidationException{
        Artist artist = artistRepository.findById(artistId).orElseThrow(()->new DataValidationException("Artist with that id could not be found"));
        try {
            if (artistDetails.name.matches("[А-Я][а-я]+\\s[А-Я][а-я]+([а-я]*|\\s[А-Я][а-я]+)")) {
                artist.name = artistDetails.name;
                artist.century=artistDetails.century;
                Country ce = countryRepository.findById(artistDetails.country.id).orElseThrow(()->new DataValidationException("Country with that id could not be found"));
                artist.country=ce;
                artistRepository.save(artist);
            }
            else throw new Exception("Wrong artist name field format");
        }
        catch (Exception ex){
            if (ex.getMessage().contains("artist could not be found"))
                throw new DataValidationException("artist could not be found");
            else if (ex.getMessage().contains("Wrong artist name field format"))
                throw new DataValidationException("Wrong artist name field format");
            else
                throw new DataValidationException("Unidentified error");
        }
        return ResponseEntity.ok(artist);
    }

    @PostMapping("/deleteartists")
    public ResponseEntity deleteArtistInfo(@Valid @RequestBody List<Artist> artists)
    {
        artistRepository.deleteAll(artists);
        return new ResponseEntity(HttpStatus.OK);
    }
}
