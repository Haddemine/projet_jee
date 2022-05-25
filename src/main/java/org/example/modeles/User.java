package org.example.modeles;

import org.example.filters.CriptagePassword;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;
    private String nom;
    private String login;
    private String password;


    public User(Long id, String nom, String login, String password) {
        this.id = id;
        this.nom = nom;
        this.login = login;
        this.password = password;
    }

    public User() {

    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    //@JsonIgnore
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        System.out.println("here");
        this.password = CriptagePassword.encrypt(password);
    }

    @Override

    public String toString() {
        return "User{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", login='" + login + '\'' +
                ", password='" + password + '\'' +
                '}';
    }


}