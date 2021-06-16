package ru.iu3.rpo.backend.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.crypto.codec.Hex;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;
import ru.iu3.rpo.backend.models.Country;
import ru.iu3.rpo.backend.models.User;
import ru.iu3.rpo.backend.models.Museum;
import ru.iu3.rpo.backend.repositories.MuseumRepository;
import ru.iu3.rpo.backend.repositories.UserRepository;
import ru.iu3.rpo.backend.tools.DataValidationException;
import ru.iu3.rpo.backend.tools.Utils;

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
    public Page<User> getAllUsers(@RequestParam("page") int page, @RequestParam("limit") int limit) {
        return userRepository.findAll(PageRequest.of(page,limit, Sort.by(Sort.Direction.ASC,"login")));
    }

    @GetMapping("/users/{id}")
    public ResponseEntity<User> getUser(@PathVariable(value="id") Long userId) throws DataValidationException {
        User user = userRepository.findById(userId).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
        return ResponseEntity.ok(user);
    }

    @PostMapping("/users")
    public ResponseEntity<Object> addUser(@Valid @RequestBody User user) throws DataValidationException {
        try {
            if (user.email.matches("([A-Z]+|[a-z]+)@[a-z]+.[a-z]+")) {
                User nu = userRepository.save(user);
                return ResponseEntity.ok(nu);
            }
            else throw new Exception("Invalid email");
        }
        catch (Exception ex){
            if (ex.getMessage().contains("users.login_UNIQUE"))
                throw new DataValidationException("Login is already taken");
            if (ex.getMessage().contains("users.email_UNIQUE"))
                throw new DataValidationException("Email is already registered");
            else if (ex.getMessage().contains("Invalid email"))
                throw new DataValidationException("Invalid email");
            else
                throw new DataValidationException("Unidentified error");
        }
    }

    @PostMapping("/users/{id}/addmuseums")
    public ResponseEntity<Object> addMuseums(@PathVariable(value="id") Long userId, @Valid @RequestBody Set<Museum> museums) throws DataValidationException{
        User user = userRepository.findById(userId).orElseThrow(()->new DataValidationException("User with the following id not found"));
        for (Museum m : museums){
            Museum museum = museumRepository.findById(m.id).orElseThrow(()->new DataValidationException("Museum with the following id not found"));
            user.addMuseum(museum);
        }
        userRepository.save(user);
        return ResponseEntity.ok(user);
    }

    @PostMapping("/users/{id}/removemuseums")
    public ResponseEntity<Object> removeMuseums(@PathVariable(value="id") Long userId, @Valid @RequestBody Set<Museum> museums) throws DataValidationException{
        User user = userRepository.findById(userId).orElseThrow(()->new DataValidationException("User with the following id not found"));
        for (Museum m : museums){
            user.removeMuseum(m);
        }
        userRepository.save(user);
        return ResponseEntity.ok(user);
    }

    @PutMapping("/users/{id}")
    public ResponseEntity<Object> editUserInfo(@PathVariable(value="id") Long countryId, @Valid @RequestBody User userDetails) throws DataValidationException{
        User user = userRepository.findById(countryId).orElseThrow(()->new DataValidationException("User with the following id not found"));
        try {
            if (userDetails.email.matches("([A-Z]+|[a-z]+)@[a-z]+.[a-z]+")) {
                user.login = userDetails.login;
                user.email = userDetails.email;
                String np = userDetails.np;
                if (np!=null && !np.isEmpty()){
                    byte[] b = new byte[32];
                    new Random().nextBytes(b);
                    String salt = new String(Hex.encode(b));
                    user.password= Utils.ComputeHash(np,salt);
                    user.salt=salt;
                }
                userRepository.save(user);
            }
            else throw new Exception("Invalid email");
        }
        catch (Exception ex){
            if (ex.getMessage().contains("user could not be found"))
                throw new DataValidationException("user could not be found");
            else if (ex.getMessage().contains("Invalid email"))
                throw new DataValidationException("Invalid email");
            else
                throw new DataValidationException("Unidentified error");
        }
        return ResponseEntity.ok(user);
    }

    @PostMapping("/deleteusers")
    public ResponseEntity deleteUserInfo(@Valid @RequestBody List<User> users)
    {
        userRepository.deleteAll(users);
        return new ResponseEntity(HttpStatus.OK);
    }
}
