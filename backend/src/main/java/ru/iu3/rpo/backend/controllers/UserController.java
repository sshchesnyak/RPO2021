package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.User;
import ru.iu3.rpo.backend.models.Museum;
import ru.iu3.rpo.backend.repositories.MuseumRepository;
import ru.iu3.rpo.backend.repositories.UserRepository;

import javax.validation.Valid;
import java.util.*;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping("/api/v1")
public class UserController {
    @Autowired
    UserRepository userRepository;

    @Autowired
    MuseumRepository museumRepository;

    @GetMapping("/users")
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @PostMapping("/users")
    public ResponseEntity<Object> addUser(@Valid @RequestBody User user) {
        try {
            if (user.email.matches("([A-Z]+|[a-z]+)@[a-z]+.[a-z]+")) {
                User nu = userRepository.save(user);
                return ResponseEntity.ok(nu);
            }
            else throw new Exception("Invalid email");
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("users.login_UNIQUE"))
                error = "Login is already taken";
            if (ex.getMessage().contains("users.email_UNIQUE"))
                error = "Email is already registered";
            else if (ex.getMessage().contains("Invalid email"))
                error="Invalid email";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
    }

    @PostMapping("/users/{id}/addmuseums")
    public ResponseEntity<Object> addMuseums(@PathVariable(value="id") Long userId, @Valid @RequestBody Set<Museum> museums) {
        Optional<User> cu = userRepository.findById(userId);
        int cnt=0;
        if (cu.isPresent()){
            User u = cu.get();
            for (Museum m : museums){
                Optional<Museum> cm = museumRepository.findById(m.id);
                if (cm.isPresent()){
                    u.addMuseum(cm.get());
                    cnt++;
                }
            }
            userRepository.save(u);
        }
        Map<String,String> response = new HashMap<>();
        response.put("count",String.valueOf(cnt));
        return ResponseEntity.ok(response);
    }

    @PostMapping("/users/{id}/removemuseums")
    public ResponseEntity<Object> removeMuseums(@PathVariable(value="id") Long userId, @Valid @RequestBody Set<Museum> museums){
        Optional<User> cu = userRepository.findById(userId);
        int cnt=0;
        if (cu.isPresent()){
            User u = cu.get();
            for (Museum m : museums){
                u.removeMuseum(m);
                cnt++;
            }
            userRepository.save(u);
        }
        Map<String,String> response = new HashMap<>();
        response.put("count",String.valueOf(cnt));
        return ResponseEntity.ok(response);
    }

    @PutMapping("/users/{id}")
    public ResponseEntity<Object> editUserInfo(@PathVariable(value="id") Long countryId, @Valid @RequestBody User userDetails){
        User user = null;
        Optional<User> cu = userRepository.findById(countryId);
        try {
            if (cu.isPresent()) {
                user = cu.get();
                if (userDetails.email.matches("([A-Z]+|[a-z]+)@[a-z]+.[a-z]+")) {
                    user.login = userDetails.login;
                    user.email = userDetails.email;
                    userRepository.save(user);
                }
                else throw new Exception("Invalid email");
            } else {
                throw new ResponseStatusException(HttpStatus.NOT_FOUND, "user could not be found");
            }
        }
        catch (Exception ex){
            String error;
            if (ex.getMessage().contains("user could not be found"))
                error = "user could not be found";
            else if (ex.getMessage().contains("Invalid email"))
                error="Invalid email";
            else
                error = "Unidentified error";
            Map<String, String> map = new HashMap<>();
            map.put("error", error);
            return ResponseEntity.ok(map);
        }
        return ResponseEntity.ok(user);
    }

    @DeleteMapping("/users/{id}")
    public Map<String, Boolean> deleteUserInfo(@PathVariable(value="id") Long userId)
    {
        Optional<User> user = userRepository.findById(userId);
        Map<String, Boolean> response = new HashMap<>();
        if (user.isPresent())
        {
            userRepository.delete(user.get());
            response.put("deleted", Boolean.TRUE);
        }
        else
        {
            response.put("deleted", Boolean.FALSE);
        }
        return response;
    }
}
