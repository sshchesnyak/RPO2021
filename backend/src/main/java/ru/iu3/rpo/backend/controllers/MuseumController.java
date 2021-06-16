package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.*;
import ru.iu3.rpo.backend.repositories.MuseumRepository;
import ru.iu3.rpo.backend.repositories.PaintingRepository;
import ru.iu3.rpo.backend.repositories.UserRepository;
import ru.iu3.rpo.backend.tools.DataValidationException;

import javax.validation.Valid;
import java.util.*;
import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class MuseumController {
    @Autowired
    MuseumRepository museumRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    PaintingRepository paintingRepository;

    @GetMapping("/museums")
    public Page<Museum> getAllMuseums(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return museumRepository.findAll(PageRequest.of(page,limit, Sort.by(Sort.Direction.ASC,"name")));
    }

    @GetMapping("/allmuseums")
    public List<Museum> getAllTheMuseums() {
        return museumRepository.findAll();
    }

    @GetMapping("/museums/{id}")
    public ResponseEntity<Museum> getMuseum(@PathVariable(value="id") Long museumId) throws DataValidationException {
        Museum museum = museumRepository.findById(museumId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        return ResponseEntity.ok(museum);
    }

    @GetMapping("/museums/{id}/users")
    public ResponseEntity<Set<User>>getMuseumUsers(@PathVariable(value="id") Long museumId) throws DataValidationException {
        Museum museum = museumRepository.findById(museumId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        return ResponseEntity.ok(museum.users);
    }

    @GetMapping("/museums/{id}/paintings")
    public ResponseEntity<List<Painting>>getMuseumPaintings(@PathVariable(value="id") Long museumId) throws DataValidationException{
        Museum museum = museumRepository.findById(museumId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        return ResponseEntity.ok(museum.paintings);
    }

    @PostMapping("/museums")
    public ResponseEntity<Object> createMuseum(@Valid @RequestBody Museum museum) throws DataValidationException{
        try {
            Museum nm = museumRepository.save(museum);
            return ResponseEntity.ok(nm);
        }
        catch (Exception ex){
            if (ex.getMessage().contains("museums.name_UNIQUE"))
                throw new DataValidationException("Museum with that name already in existence");
            else
                throw new DataValidationException("Unidentified error");
        }
    }

    @PostMapping("/museums/{id}/addusers")
    public ResponseEntity<Object> addUsers(@PathVariable(value="id") Long museumId, @Valid @RequestBody Set<User> users) throws DataValidationException{
        Museum museum = museumRepository.findById(museumId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        for (User u : users){
            User user = userRepository.findById(u.id).orElseThrow(()->new DataValidationException("User with the following id not found"));
            museum.addUser(user);
        }
        museumRepository.save(museum);
        return ResponseEntity.ok(museum);
    }

    @PostMapping("/users/{id}/removeusers")
    public ResponseEntity<Object> removeUsers(@PathVariable(value="id") Long museumId, @Valid @RequestBody Set<User> users) throws DataValidationException{
        Museum museum = museumRepository.findById(museumId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        for (User u : users){
            museum.removeUser(u);
        }
        museumRepository.save(museum);
        return ResponseEntity.ok(museum);
    }

    @PostMapping("/museums/{id}/addpaintings")
    public ResponseEntity<Object> addPaintings(@PathVariable(value="id") Long museumId, @Valid @RequestBody List<Painting> paintings) throws DataValidationException{
        Museum museum = museumRepository.findById(museumId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        for (Painting p : paintings){
            Painting painting = paintingRepository.findById(p.id).orElseThrow(()->new DataValidationException("Painting with the following id not found"));
            if (p.museum==museum){
                museum.addPainting(painting);
            }
        }
        museumRepository.save(museum);
        return ResponseEntity.ok(museum);
    }

    @PostMapping("/users/{id}/removepaintings")
    public ResponseEntity<Object> removePaintings(@PathVariable(value="id") Long museumId, @Valid @RequestBody List<Painting> paintings) throws DataValidationException{
        Museum museum = museumRepository.findById(museumId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        for (Painting p : paintings){
            museum.removePainting(p);
        }
        museumRepository.save(museum);
        return ResponseEntity.ok(museum);
    }

    @PutMapping("/museums/{id}")
    public ResponseEntity<Object> updateMuseum(@PathVariable(value="id") Long museumId, @Valid @RequestBody Museum museumDetails) throws DataValidationException{
        Museum museum = museumRepository.findById(museumId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        try {
            museum.name = museumDetails.name;
            museum.location = museumDetails.location;
            museumRepository.save(museum);
        }
        catch (Exception ex){
            if (ex.getMessage().contains("museum could not be found"))
                throw new DataValidationException("museum could not be found");
            else
                throw new DataValidationException("Unidentified error");
        }
        return ResponseEntity.ok(museum);
    }

    @PostMapping("/deletemuseums")
    public ResponseEntity deleteMuseum(@Valid @RequestBody List<Museum> museums)
    {
        museumRepository.deleteAll(museums);
        return new ResponseEntity(HttpStatus.OK);
    }
}
