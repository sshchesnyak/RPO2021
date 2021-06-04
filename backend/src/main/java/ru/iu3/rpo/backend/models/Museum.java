package ru.iu3.rpo.backend.models;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Entity
@Table(name="museums")
@Access(AccessType.FIELD)
public class Museum {

    public Museum() {}
    public Museum(Long id) {this.id=id;}

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id",updatable = false,nullable = false)
    public long id;

    @Column(name="name",nullable = false,unique = true)
    public String name;

    @Column(name="location")
    public String location;

    @JsonIgnore
    @OneToMany(mappedBy = "museum")
    public List<Painting> paintings = new ArrayList<Painting>();

    @JsonIgnore
    @ManyToMany
    @JoinTable(name="usersmuseums",joinColumns = @JoinColumn(name="museumid"),inverseJoinColumns = @JoinColumn(name="userid"))
    public Set<User> users = new HashSet<>();

    public void addUser(User u){
        this.users.add(u);
        u.museums.add(this);
    }

    public void removeUser(User u){
        this.users.remove(u);
        u.museums.remove(this);
    }

    public void addPainting(Painting p){
        this.paintings.add(p);
    }

    public void removePainting(Painting p){
        this.paintings.remove(p);
    }

}
