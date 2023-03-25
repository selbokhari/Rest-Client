/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import RestServices.Etudiant;
import RestServices.Masters;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author pc
 */
public class testEtudiant {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        Masters[] l = getMasters();
        for (Masters m : l) {
            System.out.println(m.getNom());
        }
    }

    static public Masters[] getMasters() {
        System.out.println("Je suis dans get masters !!!!!!!!!!!!");

        String url = "http://localhost:8080/RestServer/webresources/restservices.masters/listeMasters";//your url i.e fetch data from .
        try {
            RestTemplate restTemplate = new RestTemplate();

//            ObjectMapper mapper = new ObjectMapper();
            ResponseEntity<Masters[]> response = restTemplate.getForEntity(url, Masters[].class);

            Masters[] masters = response.getBody();

            System.out.println("Nom : " + masters[0].getNom() + "\n");
//
            for (Masters md : masters) {
                System.out.println("Nom : " + md.getNom() + "\n");
            }
//            m.addAttribute("etudiants", etudiants);
//            m.addAttribute("message", "non vides");

            return masters;
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());
            return null;
        }
    }
    

//    static public Etudiant getEtudiantById(int idE) {
//        System.out.println("Je suis dans get Etudiant by id !!!!!!!!!!!!");
//
//        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/" + idE;//your url i.e fetch data from .
//        try {
//            RestTemplate restTemplate = new RestTemplate();
//
////            ObjectMapper mapper = new ObjectMapper();
//            ResponseEntity<Etudiant> response = restTemplate.getForEntity(url, Etudiant.class);
//
//            Etudiant etudiant = response.getBody();
//
//            System.out.println("Nom : " + etudiant.getNom() + " " + etudiant.getPrenom() + "\n");
////
////            for (Module md : modules) {
////                System.out.println("Nom : " + md.getNom() + "\n");
////            }
////            m.addAttribute("modules", etudiant);
////            m.addAttribute("message", "non vides");
//            return etudiant;
//        } catch (Exception e) {
//            System.out.println("Erreur : " + e.getMessage());
//            return null;
//        }
//    }
}
