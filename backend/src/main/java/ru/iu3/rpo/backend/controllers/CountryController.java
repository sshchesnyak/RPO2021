package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Country;
import ru.iu3.rpo.backend.repositories.CountryRepository;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@RestController
@RequestMapping("/api/v1")
public class CountryController {
    @Autowired
    CountryRepository countryRepository;

    @GetMapping("/countries")
    public List<Country> getAllCountries() {
        return countryRepository.findAll();
    }

    @PostMapping("/countries")
    public ResponseEntity<Object> createCountry(@Valid @RequestBody Country country) {
        try {
            if (country.name.matches("[А-Я][а-я]*")) {
                Country nc = countryRepository.save(country);
                return ResponseEntity.ok(nc);
            }
            else throw new Exception("Wrong country field format");
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("countries.name_UNIQUE"))
                error = "Country already in existence";
            else if (ex.getMessage().contains("Wrong country field format"))
                error="Wrong country field format";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
    }

    @PutMapping("/countries/{id}")
    public ResponseEntity<Object> updateCountry(@PathVariable(value="id") Long countryId, @Valid @RequestBody Country countryDetails){
        Country country = null;
        Optional<Country> cc = countryRepository.findById(countryId);
        try {
            if (cc.isPresent()) {
                country = cc.get();
                if (countryDetails.name.matches("[А-Я][а-я]*")) {
                    country.name = countryDetails.name;
                    countryRepository.save(country);
                }
                else throw new Exception("Wrong country field format");
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "country could not be found");
            }
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("country could not be found"))
                error = "country could not be found";
            else if (ex.getMessage().contains("Wrong country field format"))
                error="Wrong country field format";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
        return ResponseEntity.ok(country);
    }

    @DeleteMapping("/countries/{id}")
    public Map<String, Boolean> deleteCountry(@PathVariable(value="id") Long countryId)
    {
        Optional<Country> country = countryRepository.findById(countryId);
        Map<String, Boolean> response = new HashMap<>();
        if (country.isPresent())
        {
            countryRepository.delete(country.get());
            response.put("deleted", Boolean.TRUE);
        }
        else
        {
            response.put("deleted", Boolean.FALSE);
        }
        return response;
    }
}
