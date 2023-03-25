/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.beans;

import javax.faces.bean.ManagedBean;
import org.springframework.stereotype.Component;

/**
 *
 * @author pc
 */
@ManagedBean

@Component
public class PersonneBean {
    String nom ; 
    String prenom ; 
    String cin; 

    public PersonneBean() {
    }
    
    public PersonneBean(String nom, String prenom, String cin) {
        this.nom = nom;
        this.prenom = prenom;
        this.cin = cin;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public String getCin() {
        return cin;
    }

    public void setCin(String cin) {
        this.cin = cin;
    }
    
    
}
