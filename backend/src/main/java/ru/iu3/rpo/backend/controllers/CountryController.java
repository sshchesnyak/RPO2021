package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Artist;
import ru.iu3.rpo.backend.models.Country;
import ru.iu3.rpo.backend.repositories.CountryRepository;
import ru.iu3.rpo.backend.repositories.ArtistRepository;
import ru.iu3.rpo.backend.tools.DataValidationException;

import javax.validation.Valid;
import java.util.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class CountryController {
    @Autowired
    CountryRepository countryRepository;

    @GetMapping("/countries")
    public List<Country> getAllCountries() {
        return countryRepository.findAll();
    }

    @GetMapping("/countries/{id}")
    public ResponseEntity<Country> getCountry(@PathVariable(value="id") Long countryId) throws DataValidationException {
        Country country = countryRepository.findById(countryId).orElseThrow(()->new DataValidationException("Country with the following id not found"));
        return ResponseEntity.ok(country);
    }

    @GetMapping("/countries/{id}/artists")
    public ResponseEntity<List<Artist>>getCountryArtists(@PathVariable(value="id") Long countryId) {
        Optional<Country> cc = countryRepository.findById(countryId);
        if (cc.isPresent())
        {
            return ResponseEntity.ok(cc.get().artists);
        }
        return ResponseEntity.ok(new ArrayList<Artist>());
    }

    @PostMapping("/countries")
    public ResponseEntity<Object> createCountry(@Valid @RequestBody Country country) throws DataValidationException{
        try {
            if (country.name.matches("[А-Я][а-я]+")) {
                Country nc = countryRepository.save(country);
                return ResponseEntity.ok(nc);
            }
            else throw new Exception("Wrong country field format");
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("countries.name_UNIQUE"))
                throw new DataValidationException("Country already in existence");
            else if (ex.getMessage().contains("Wrong country field format"))
                throw new DataValidationException("Wrong country field format");
            else
                throw new DataValidationException("Unidentified error");
        }
    }

    @PutMapping("/countries/{id}")
    public ResponseEntity<Object> updateCountry(@PathVariable(value="id") Long countryId, @Valid @RequestBody Country countryDetails) throws DataValidationException{
        Country country = countryRepository.findById(countryId).orElseThrow(()->new DataValidationException("Country with that id could not be found"));
        try {
            if (countryDetails.name.matches("[А-Я][а-я]+")) {
                country.name = countryDetails.name;
                countryRepository.save(country);
                return ResponseEntity.ok(country);
            }
            else throw new Exception("Wrong country field format");
        }
        catch (Exception ex){
            if (ex.getMessage().contains("country could not be found"))
                throw new DataValidationException("country could not be found");
            else if (ex.getMessage().contains("Wrong country field format"))
                throw new DataValidationException("Wrong country field format");
            else
                throw new DataValidationException("Unidentified error");
        }
    }

    @PostMapping("/deletecountries")
    public ResponseEntity deleteCountries(@Valid @RequestBody List<Country> countries)
    {
        countryRepository.deleteAll(countries);
        return new ResponseEntity(HttpStatus.OK);
    }
}
