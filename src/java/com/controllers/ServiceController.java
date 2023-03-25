/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import RestServices.Etudiant;
import RestServices.Module;
import java.util.Arrays;
import java.util.List;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

/**
 *
 * @author pc
 */
@Controller
public class ServiceController {

    @RequestMapping("/listeEtudiantsModule")
    public String listeEtudiantsModule(
            @RequestParam(value = "idM") int idM, @RequestParam(value = "idS") int idS,
            @RequestParam(value = "format") String format
    ) {
        String url1 = "http://localhost:8080/RestServer/webresources/restservices.etudiant/listeEtudiantsModuleXml/" + idM + "/" + idS + "";
        String url2 = "http://localhost:8080/RestServer/webresources/restservices.etudiant/listeEtudiantsModuleCsv/" + idM + "/" + idS + "";
        String url3 = "http://localhost:8080/RestServer/webresources/restservices.etudiant/listeEtudiantsModulePdf/" + idM + "/" + idS + "";

        if (format.equals("XML")) {
            return "redirect:" + url1;
        } else if (format.equals("CSV")) {
            return "redirect:" + url2;

        } else if (format.equals("PDF")) {
            return "redirect:" + url3;

        } else {
            return "redirect:" + url3;

        }

    }

    @RequestMapping("/releveNotes")
    public String releveNotes(
            @RequestParam(value = "idS") int idS,
            @RequestParam(value = "idE") int idE,
            @RequestParam(value = "format") String format
    ) {
        String url1 = "http://localhost:8080/RestServer/webresources/restservices.etudiant/releveNotesPdf/" + idE + "/" + idS;
        String url2 = "http://localhost:8080/RestServer/webresources/restservices.etudiant/releveNotesXml/" + idE + "/" + idS + "";

        if (format.equals("XML")) {
            return "redirect:" + url2;
        } else {
            return "redirect:" + url1;
        }

    }

    @RequestMapping("/attestationReussite")
    public String attestationReussite(@RequestParam(value = "idE") int idE) {
        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/attestationReussite/" + idE;

        return "redirect:" + url;

    }

    @RequestMapping("/moyenneSemestre")
    public String moyenneSemestre(Model m, @RequestParam(value = "idE") int idE, @RequestParam(value = "idS") int idS) {

        System.out.println("Je suis dans moyenneSemestre !!!!!!!!!!!!");

        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/moyenneSemestre/" + idE + "/" + idS;

        try {
            RestTemplate restTemplate = new RestTemplate();

            String moyenne = restTemplate.getForObject(url, String.class);
            if (moyenne.length() > 5) {
                moyenne = moyenne.substring(0, 5);
            }
            m.addAttribute("moyenne", "<font size=+3 color=white>La moyenne est : </font>" + "<font color=yellow>" + moyenne + "</font>");
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());

        }

        return "moyenneSemestre";
    }

    @RequestMapping("/moyenneAnnée")
    public String moyenneAnnée(Model m, @RequestParam(value = "idE") int idE, @RequestParam(value = "idA") int idA) {

        System.out.println("Je suis dans moyenneSemestre !!!!!!!!!!!!");

        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/moyenneAnnée/" + idE + "/" + idA;

        try {
            RestTemplate restTemplate = new RestTemplate();

            String moyenne = restTemplate.getForObject(url, String.class);
            if (moyenne.length() > 5) {
                moyenne = moyenne.substring(0, 5);
            }
            m.addAttribute("moyenne", "<font size=+3 color=white>La moyenne est : </font>" + "<font color=yellow>" + moyenne + "</font>");
//            m.addAttribute("moyenne", "<font color=black >La moyenne est : </font><font color=blue>" + moyenne + "</font>");
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());
        }

        return "moyenneAnnée";
    }

    @RequestMapping("/test")
    public String getModules(Model m) {
//        System.out.println("Je suis dans getModules !!!!!!!!!!!!");
//
//        String url = "http://localhost:8080/RestServer/webresources/restservices.module/";//your url i.e fetch data from .
//        try {
//            RestTemplate restTemplate = new RestTemplate();
//
////            ObjectMapper mapper = new ObjectMapper();
//            ResponseEntity<Module[]> response = restTemplate.getForEntity(url, Module[].class);
//
//            List<Module> modules = Arrays.asList(response.getBody());
//
//            System.out.println("Nom : " + modules.get(0).getNom() + "\n");
////
//            for (Module md : modules) {
//                System.out.println("Nom : " + md.getNom() + "\n");
//            }
//            m.addAttribute("modules", modules);
//            m.addAttribute("message", "non vides");
//        } catch (Exception e) {
//            System.out.println("Erreur : " + e.getMessage());
//
//        }
        return "test";

    }

    @RequestMapping("/moyenneMasterMention")
    public String moyenneMasterMention(@RequestParam(value = "idE") int idE) {
        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/moyenneMasterMention/" + idE;

        return "redirect:" + url;

    }

    @RequestMapping("/validationSemestre")
    public String validationSemestre(Model m, @RequestParam(value = "idE") int idE, @RequestParam(value = "idS") int idS) {
        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/validationSemestre/" + idE + "/" + idS;

        System.out.println("Je suis dans validationSemestre !!!!!!!!!!!!");

        try {
            RestTemplate restTemplate = new RestTemplate();

            String validation = restTemplate.getForObject(url, String.class);
            String message = validation.equals("true") ? "L'étudiant a validé le semestre " + idS + "" : "L'étudiant n'a pas validé le semestre " + idS + "";
            m.addAttribute("moyenne", "<font color=yellow>" + message + "</font>");
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());

        }
        return "validationSemestre";
    }

    @RequestMapping("/validationAnnee")
    public String validationAnnee(Model m, @RequestParam(value = "idE") int idE, @RequestParam(value = "idA") int idA) {
        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/validationAnnee/" + idE + "/" + idA;

        System.out.println("Je suis dans validationSemestre !!!!!!!!!!!!");

        try {
            RestTemplate restTemplate = new RestTemplate();

            String validation = restTemplate.getForObject(url, String.class);
            String message = validation.equals("true") ? "L'année est validée" : "L'année n'est pas validée";
            m.addAttribute("moyenne", "<font color=yellow>" + message + "</font>");
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());

        }
        return "validationAnnee";
    }

    @RequestMapping("/changerMotPasseAdmin")
    public String changerMotPasseAdmin(Model m, @RequestParam(value = "user") String user, @RequestParam(value = "password") String password) {
        String url = "http://localhost:8080/RestServer/webresources/restservices.compteadmin/ChangermotPasse/" + user + "/" + password;

        System.out.println("Je suis dans changerMotPasseAdmin !!!!!!!!!!!!");

        try {
            RestTemplate restTemplate = new RestTemplate();

            String validation = restTemplate.getForObject(url, String.class);
            String message = validation.equals("true") ? "Le mot de passe est bien changé" : "Le mot de passe n'est pas changé";

            m.addAttribute("message", "<font color=yellow>" + message + "</font>");
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());

        }
        return "changerMotPasseAdmin";
    }

    @RequestMapping("/changerMotPasseEtudiant")
    public String changerMotPasseEtudiant(Model m, @RequestParam(value = "user") String user, @RequestParam(value = "password") String password) {
        String url = "http://localhost:8080/RestServer/webresources/restservices.compteetudiant/ChangermotPasse/" + user + "/" + password;

        System.out.println("Je suis dans changerMotPasseEtudiant !!!!!!!!!!!!");

        try {
            RestTemplate restTemplate = new RestTemplate();

            String validation = restTemplate.getForObject(url, String.class);
            String message = validation.equals("true") ? "Le mot de passe est bien changé" : "Le mot de passe n'est pas changé";

            m.addAttribute("message", "<font color=yellow>" + message + "</font>");
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());
        }
        return "changerMotPasseEtudiant";
    }

    @RequestMapping("/ModifierNote")
    public String ModifierNote(Model m,
            @RequestParam(value = "cne") String cne,
            @RequestParam(value = "nomModule") String nomModule,
            @RequestParam(value = "noteNormale") String noteNormale,
            @RequestParam(value = "noteRattrapage") String noteRattrapage
    ) {
        String url = "http://localhost:8080/RestServer/webresources/restservices.note/ModifierNote/"
                + cne + "/" + nomModule + "/" + noteNormale + "/" + noteRattrapage;

        System.out.println("Je suis dans changerMotPasseEtudiant !!!!!!!!!!!!");

        try {
            RestTemplate restTemplate = new RestTemplate();

            String validation = restTemplate.getForObject(url, String.class);
            String message = validation.equals("true") ? "<font color=yellow>Vos modification ont été enregistrés</font>" : "<font color=red>Vos modifications n'ont pas été enregistrées</font> !";

            m.addAttribute("message", message);
        } catch (Exception e) {
            String message = "<font color=red>Vos modifications n'ont pas été enregistrées !</font> ";

            m.addAttribute("message", message);
            System.out.println("Erreur : " + e.getMessage());
        }
        return "ModifierNote";
    }

    @RequestMapping("/AjouterEtudiant")
    public String AjouterEtudiant(
            Model m,
            @RequestParam("nom") String nom,
            @RequestParam("prenom") String prenom,
            @RequestParam("numApogee") String numApogee,
            @RequestParam("cin") String cin,
            @RequestParam("cne") String cne,
            @RequestParam("email") String email,
            @RequestParam("telephone") String telephone) {

        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/AjouterEtudiant"
                + "/" + nom + "/" + prenom + "/" + numApogee + "/" + cne + "/" + cin + "/" + email + "/" + telephone;

        System.out.println("Je suis dans AjouterEtudiant !!!!!!!!!!!!");

        try {
            RestTemplate restTemplate = new RestTemplate();

            String validation = restTemplate.getForObject(url, String.class);
            String message = validation.equals("true") ? "<font color=black>L'étudiant a été ajouté</font>" : "<font color=red>L'étudiant n'est pas ajouté</font> !";

            m.addAttribute("message", message);
        } catch (Exception e) {
            String message = "<font color=red>Vos modifications n'ont pas été enregistrées !</font> ";

            m.addAttribute("message", message);
            System.out.println("Erreur : " + e.getMessage());
        }
        return "AjouterEtudiant";
    }

    @RequestMapping("/supprimerEtudiant")
    public String supprimerEtudiant(Model m, @RequestParam("cne") String cne) {

        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/SupprimerEtudiant/" + cne;

        System.out.println("Je suis dans supprimerEtudiant !!!!!!!!!!!!");

        try {
            RestTemplate restTemplate = new RestTemplate();

            String validation = restTemplate.getForObject(url, String.class);
            String message = validation.equals("true") ? "<font color=black>L'étudiant a été supprimé</font>" : "<font color=red>L'étudiant n'est pas supprimé</font> !";

            m.addAttribute("message", message);
        } catch (Exception e) {
            String message = "<font color=red>Vos modifications n'ont pas été enregistrées !</font> ";

            m.addAttribute("message", message);
            System.out.println("Erreur : " + e.getMessage());
        }
        return "supprimerEtudiant";
    }
    
    static public Etudiant getEtudiantByApogee(Model m,String Apogee) {
        System.out.println("Je suis dans get Etudiant by Apogee !!!!!!!!!!!!");

        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/findByApogee/"+Apogee;//your url i.e fetch data from .
        try {
            RestTemplate restTemplate = new RestTemplate();

//            ObjectMapper mapper = new ObjectMapper();
            ResponseEntity<Etudiant> response = restTemplate.getForEntity(url, Etudiant.class);

            Etudiant etudiant = response.getBody();

            System.out.println("Nom : " + etudiant.getNom() + " " + etudiant.getPrenom() + " "+etudiant.getIdetudiant()+ "\n");
            m.addAttribute("modules", etudiant);
            m.addAttribute("message", "non vides");
            return etudiant;
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());
            return null;
        }
    }

}
