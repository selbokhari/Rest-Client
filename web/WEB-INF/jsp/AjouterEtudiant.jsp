<%-- 
    Document   : AjouterEtudiant
    Created on : 28 déc. 2020, 10:27:08
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ajouter un étudiant</title>
    </head>
    <body>
        <h1>Ajouter un étudiant</h1>
           <form action="AjouterEtudiant" >
            Nom d'étudiant:  <input type="text" name="nom" ><br><br>
            Prénom d'étudiant:  <input type="text" name="prenom" ><br><br>
            N° Apogee :  <input type="text" name="numApogee" ><br><br>
            Cin :  <input type="text" name="cin" ><br><br>
            Cne:  <input type="text" name="cne" ><br><br>
            Email:  <input type="text" name="email" ><br><br><br>
            Telephone:  <input type="text" name="telephone" ><br><br><br>
            <input type="submit" value="Ajouter" ><br><br> <br><br>
            <h1>${message}</h1>
        </form>
        

    </body>
</html>
