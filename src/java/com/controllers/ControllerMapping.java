/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;

import RestServices.Etudiant;
import RestServices.Masters;
import RestServices.Module;
import com.beans.PersonneBean;
import static com.controllers.ServiceController.getEtudiantByApogee;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.portlet.ModelAndView;

/**
 *
 * @author pc
 */
@Controller
public class ControllerMapping {
//      @Autowired

    PersonneBean p;
  public static  Etudiant etudiant;

    @RequestMapping("/")
    public String rootMapping() {
//        ModelAndView mv = new ModelAndView("index.jsp");
        System.out.println("controller");
        return "index";
    }

    @RequestMapping("/service01")
    public String rootsMapping1() {
//        ModelAndView mv = new ModelAndView("index.jsp");
        System.out.println("service01");
        return "service01";
    }

    @RequestMapping("/service02")
    public String rootsMapping2() {
//        ModelAndView mv = new ModelAndView("index.jsp");
        System.out.println("service02");
        return "service02";
    }

    @RequestMapping("/service03")
    public String rootsMapping3() {
//        ModelAndView mv = new ModelAndView("index.jsp");
        System.out.println("service03");
        return "service03";
    }

//    @RequestMapping("/connexion")
//   @RequestMapping("/connexion")
    @RequestMapping("/connexion")
    public String connexion(Model m, @RequestParam(value = "user") String user, @RequestParam(value = "password") String password) {

        System.out.println("USER       : " + user);
        System.out.println("PASSWORD   : " + password);
        etudiant=getEtudiantByApogee(m,user);
        RestTemplate restTemplate = new RestTemplate();
        String connexion = (String) restTemplate.getForObject("http://localhost:8080/RestServer/webresources/restservices.compteadmin/login/" + user + "/" + password + "", String.class);
        String connexion1 = (String) restTemplate.getForObject("http://localhost:8080/RestServer/webresources/restservices.compteetudiant/Connexion/" + user + "/" + password + "", String.class);
        System.out.println("CONNEXION : " + connexion);
        if (connexion.equals("true")) {
            return "service01";
        } else if (connexion1.equals("true")) {
           
            return "etudiant";
        } else {
            return "connection";
        }
    }
    // redirection    

//    @RequestMapping("/pdf")
//    public String pdfMapping() {
//
//        return "redirect:" + "http://localhost:8080/RestServer/webresources/restservices.etudiant/pdf";
//    }
    @RequestMapping("/listeMasters")
    public String listeMasters() {

        return "redirect:" + "http://localhost:8080/RestServer/webresources/restservices.masters/listeMasters";
    }

    @RequestMapping("/listEtudiantsSemesters")
    public String listEtudiantsSemesters() {

        return "listEtudiantsSemesters";
    }

    @RequestMapping("/listEtudiantsSemestersMapping")
    public String listEtudiantsSemestersMapping(@RequestParam(value = "idM") int idM, @RequestParam(value = "idS") int idS,
            @RequestParam(value = "format") String format
    ) {

        System.out.println("################  Request Mapping listEtudiantsSemestersMapping ");
        if (format.equals("PDF")) {
            return "redirect:" + "http://localhost:8080/RestServer/webresources/restservices.etudiant/ListEtudiantsSemestersPDF/" + idS + "/" + idM + "";
        } else {
            return "redirect:" + "http://localhost:8080/RestServer/webresources/restservices.etudiant/ListEtudiantsSemestresXML/" + idS + "/" + idM + "";

        }

    }

    // 
    @RequestMapping("/service04")
    public String service04() {
        return "listeEtudiantsModule";
    }

    @RequestMapping("/service05")
    public String service05() {
        return "releveNotes";
    }

    @RequestMapping("/service06")
    public String service06() {
        return "attestationReussite";
    }

//     service II 
    @RequestMapping("/serviceII01")
    public String serviceII01() { //moyenne

        return "moyenneSemestre";
    }

    @RequestMapping("/serviceII02")
    public String serviceII02() { //moyenne

        return "moyenneAnnée";
    }

    @RequestMapping("/serviceII03")
    public String serviceII03() {

        return "moyenneMasterMention";
    }

    @RequestMapping("/serviceII04")
    public String serviceII04() {

        return "validationSemestre";
    }

    @RequestMapping("/serviceII05")
    public String serviceII05() {

        return "validationAnnee";
    }

    //service 3
    @RequestMapping("/serviceIII11")
    public String serviceIII11() {

        return "changerMotPasseAdmin";
    }

    @RequestMapping("/serviceIII12")
    public String serviceIII12() {

        return "changerMotPasseEtudiant";
    }

    @RequestMapping("/serviceIII03")
    public String serviceIII03() {

        return "ModifierNote";
    }

    @RequestMapping("/serviceIII04")
    public String serviceIII04() {

        return "AjouterEtudiant";
    }

    @RequestMapping("/serviceIII05")
    public String serviceIII05() {

        return "supprimerEtudiant";
    }

    static public List<Module> getModules() {
        System.out.println("Je suis dans getModules !!!!!!!!!!!!");

        String url = "http://localhost:8080/RestServer/webresources/restservices.module/";//your url i.e fetch data from .
        try {
            RestTemplate restTemplate = new RestTemplate();

//            ObjectMapper mapper = new ObjectMapper();
            ResponseEntity<Module[]> response = restTemplate.getForEntity(url, Module[].class);

            List<Module> modules = Arrays.asList(response.getBody());

            System.out.println("Nom : " + modules.get(0).getNom() + "\n");
//
            for (Module md : modules) {
                System.out.println("Nom : " + md.getNom() + "\n");
            }
//            m.addAttribute("modules", modules);
//            m.addAttribute("message", "non vides");
            return modules;
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());
            return new ArrayList();
        }

    }

    static public List<Etudiant> getEtudiants() {
        System.out.println("Je suis dans get etudiants !!!!!!!!!!!!");

        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/findAll";//your url i.e fetch data from .
        try {
            RestTemplate restTemplate = new RestTemplate();

//            ObjectMapper mapper = new ObjectMapper();
            ResponseEntity<Etudiant[]> response = restTemplate.getForEntity(url, Etudiant[].class);

            List<Etudiant> etudiants = Arrays.asList(response.getBody());

            System.out.println("Nom : " + etudiants.get(0).getNom() + "\n");
//
            for (Etudiant md : etudiants) {
                System.out.println("Nom : " + md.getNom() + "\n");
            }
//            m.addAttribute("etudiants", etudiants);
//            m.addAttribute("message", "non vides");

            return etudiants;
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());
            return new ArrayList();
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

    static public Etudiant getEtudiantById(Model m, int idE) {
        System.out.println("Je suis dans get Etudiant by id !!!!!!!!!!!!");

        String url = "http://localhost:8080/RestServer/webresources/restservices.etduiant/" + idE;//your url i.e fetch data from .
        try {
            RestTemplate restTemplate = new RestTemplate();

//            ObjectMapper mapper = new ObjectMapper();
            ResponseEntity<Etudiant> response = restTemplate.getForEntity(url, Etudiant.class);

            Etudiant etudiant = response.getBody();

            System.out.println("Nom : " + etudiant.getNom() + " " + etudiant.getPrenom() + "\n");
//
//            for (Module md : modules) {
//                System.out.println("Nom : " + md.getNom() + "\n");
//            }
            m.addAttribute("modules", etudiant);
            m.addAttribute("message", "non vides");
            return etudiant;
        } catch (Exception e) {
            System.out.println("Erreur : " + e.getMessage());
            return null;
        }
    }
     @RequestMapping("/service05Et")//
    public String service05Et(Model m) {
        m.addAttribute("id", etudiant.getIdetudiant());
        return "releveNotesEt";
    }

    @RequestMapping("/service06Et")//
    public String service06Et(Model m) {
        m.addAttribute("id", etudiant.getIdetudiant());
        return "attestationReussiteEt";
    }
@RequestMapping("/releveNotesEt")
    public String releveNotesEt(
            @RequestParam(value = "idS") int idS,
//            @RequestParam(value = "idE") int idE,
            @RequestParam(value = "format") String format
    ) {
        String url1 = "http://localhost:8080/RestServer/webresources/restservices.etudiant/releveNotesPdf/" + etudiant.getIdetudiant() + "/" + idS;
        String url2 = "http://localhost:8080/RestServer/webresources/restservices.etudiant/releveNotesXml/" + etudiant.getIdetudiant() + "/" + idS + "";

        if (format.equals("XML")) {
            return "redirect:" + url2;
        } else {
            return "redirect:" + url1;
        }

    }

    @RequestMapping("/attestationReussiteEt")
    public String attestationReussiteEt() {
        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/attestationReussite/" + etudiant.getIdetudiant();

        return "redirect:" + url;

    }
    @RequestMapping("/etudiant")
    public String etudiant() {
//        String url = "http://localhost:8080/RestServer/webresources/restservices.etudiant/attestationReussite/" + etudiant.getIdetudiant();

        return "etudiant";

    }
}
