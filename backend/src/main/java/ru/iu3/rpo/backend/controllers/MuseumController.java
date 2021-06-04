package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Artist;
import ru.iu3.rpo.backend.models.Museum;
import ru.iu3.rpo.backend.models.Painting;
import ru.iu3.rpo.backend.models.User;
import ru.iu3.rpo.backend.repositories.MuseumRepository;
import ru.iu3.rpo.backend.repositories.PaintingRepository;
import ru.iu3.rpo.backend.repositories.UserRepository;

import javax.validation.Valid;
import java.util.*;
import java.util.List;

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
    public List<Museum> getAllMuseums() {
        return museumRepository.findAll();
    }

    @GetMapping("/museums/{id}/users")
    public ResponseEntity<Set<User>>getMuseumUsers(@PathVariable(value="id") Long museumId) {
        Optional<Museum> cm = museumRepository.findById(museumId);
        if (cm.isPresent())
        {
            return ResponseEntity.ok(cm.get().users);
        }
        return ResponseEntity.ok(new HashSet<User>());
    }

    @GetMapping("/museums/{id}/paintings")
    public ResponseEntity<List<Painting>>getMuseumPaintings(@PathVariable(value="id") Long museumId) {
        Optional<Museum> cm = museumRepository.findById(museumId);
        if (cm.isPresent())
        {
            return ResponseEntity.ok(cm.get().paintings);
        }
        return ResponseEntity.ok(new ArrayList<Painting>());
    }

    @PostMapping("/museums")
    public ResponseEntity<Object> createMuseum(@Valid @RequestBody Museum museum) {
        try {
            Museum nm = museumRepository.save(museum);
            return ResponseEntity.ok(nm);
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("museums.name_UNIQUE"))
                error = "Museum with that name already in existence";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
    }

    @PostMapping("/museums/{id}/addusers")
    public ResponseEntity<Object> addUsers(@PathVariable(value="id") Long museumId, @Valid @RequestBody Set<User> users) {
        Optional<Museum> cm = museumRepository.findById(museumId);
        int cnt=0;
        if (cm.isPresent()){
            Museum m = cm.get();
            for (User u : users){
                Optional<User> cu = userRepository.findById(u.id);
                if (cu.isPresent()){
                    m.addUser(cu.get());
                    cnt++;
                }
            }
            museumRepository.save(m);
        }
        Map<String,String> response = new HashMap<>();
        response.put("count",String.valueOf(cnt));
        return ResponseEntity.ok(response);
    }

    @PostMapping("/users/{id}/removeusers")
    public ResponseEntity<Object> removeUsers(@PathVariable(value="id") Long museumId, @Valid @RequestBody Set<User> users){
        Optional<Museum> cm = museumRepository.findById(museumId);
        int cnt=0;
        if (cm.isPresent()){
            Museum m = cm.get();
            for (User u : users){
                m.removeUser(u);
                cnt++;
            }
            museumRepository.save(m);
        }
        Map<String,String> response = new HashMap<>();
        response.put("count",String.valueOf(cnt));
        return ResponseEntity.ok(response);
    }

    @PostMapping("/museums/{id}/addpaintings")
    public ResponseEntity<Object> addPaintings(@PathVariable(value="id") Long museumId, @Valid @RequestBody List<Painting> paintings) {
        Optional<Museum> cm = museumRepository.findById(museumId);
        int cnt=0;
        if (cm.isPresent()){
            Museum m = cm.get();
            for (Painting p : paintings){
                Optional<Painting> cp = paintingRepository.findById(p.id);
                if ((cp.isPresent())&&(p.museum==m)){
                    m.addPainting(cp.get());
                    cnt++;
                }
            }
            museumRepository.save(m);
        }
        Map<String,String> response = new HashMap<>();
        response.put("count",String.valueOf(cnt));
        return ResponseEntity.ok(response);
    }

    @PostMapping("/users/{id}/removepaintings")
    public ResponseEntity<Object> removePaintings(@PathVariable(value="id") Long museumId, @Valid @RequestBody List<Painting> paintings){
        Optional<Museum> cm = museumRepository.findById(museumId);
        int cnt=0;
        if (cm.isPresent()){
            Museum m = cm.get();
            for (Painting p : paintings){
                m.removePainting(p);
                cnt++;
            }
            museumRepository.save(m);
        }
        Map<String,String> response = new HashMap<>();
        response.put("count",String.valueOf(cnt));
        return ResponseEntity.ok(response);
    }

    @PutMapping("/museums/{id}")
    public ResponseEntity<Object> updateMuseum(@PathVariable(value="id") Long museumId, @Valid @RequestBody Museum museumDetails){
        Museum museum = null;
        Optional<Museum> cm = museumRepository.findById(museumId);
        try {
            if (cm.isPresent()) {
                museum = cm.get();
                museum.name = museumDetails.name;
                museum.location = museumDetails.location;
                museumRepository.save(museum);
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "museum could not be found");
            }
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("museum could not be found"))
                error = "museum could not be found";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
        return ResponseEntity.ok(museum);
    }

    @DeleteMapping("/museums/{id}")
    public Map<String, Boolean> deleteMuseum(@PathVariable(value="id") Long museumId)
    {
        Optional<Museum> museum = museumRepository.findById(museumId);
        Map<String, Boolean> response = new HashMap<>();
        if (museum.isPresent())
        {
            museumRepository.delete(museum.get());
            response.put("deleted", Boolean.TRUE);
        }
        else
        {
            response.put("deleted", Boolean.FALSE);
        }
        return response;
    }
}
