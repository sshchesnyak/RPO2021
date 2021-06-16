package ru.iu3.rpo.backend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.*;

@Entity
@Table(name="users")
@Access(AccessType.FIELD)
public class User {

    public User() {}
    public User(Long id) {this.id=id;}

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id",updatable = false,nullable = false)
    public long id;

    @Column(name="login",nullable = false,unique = true)
    public String login;

    @JsonIgnore
    @Column(name="password")
    public String password;

    @Column(name="email",nullable = false,unique = true)
    public String email;

    @JsonIgnore
    @Column(name="salt")
    public String salt;

    @JsonIgnore
    @Column(name="token")
    public String token;

    @Column(name="activity")
    public LocalDateTime activity;

    @Transient
    public String np;

    @ManyToMany(mappedBy = "users")
    public Set<Museum> museums = new HashSet<>();

    public void addMuseum(Museum m){
        this.museums.add(m);
        m.users.add(this);
    }

    public void removeMuseum(Museum m){
        this.museums.remove(m);
        m.users.remove(this);
    }

}
