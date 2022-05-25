package org.example.modeles;

import javax.persistence.*;

@Entity
@Table(name="Commande")
public class Commande {

    @Id
    @Column(name = "id", unique = true)
    private int id;
    @Column(name = "montant", nullable = false)
    private float montant;
    @Column(name = "desc", nullable = false)
    private String desc;

    public Commande(int id, float montant, String desc)
    {
        this.id=id;
        this.montant=montant;
        this.desc=desc;
    }

    public Commande() {

    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }

    public float getMontant() {
        return montant;
    }
    public void setMontant(float montant) {
        this.montant = montant;
    }
    public String getDesc() {
        return desc;
    }
    public void setDesc(String desc) {
        this.desc = desc;
    }
}
