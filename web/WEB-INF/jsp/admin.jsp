<%-- 
    Document   : admin
    Created on : 27 déc. 2020, 15:08:05
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Espace Admin</title>
    </head>
    <body> 
    <center>
        <h1>Espace Admin !</h1>

        <h2>Service 01</h2>
        <button onclick="location.href = '/ClientREST/listeMasters'" type="button">Voire la liste des masters sous XML</button><br><br>
        <button onclick="location.href = '/ClientREST/listEtudiantsSemesters'" type="button">Voir la liste des étudiants inscrits dans un semestre</button><br><br>
        <button onclick="location.href = '/ClientREST/service04'" type="button">Voir la liste des étudiants et leurs notes pour un semestre</button><br><br>
        <button onclick="location.href = '/ClientREST/service05'" type="button">Générer le relevé de notes d'un étudiant</button><br><br>
        <button onclick="location.href = '/ClientREST/service06'" type="button">Générer l'attestation de réussite pour un étudiant</button><br><br>
        <h2>Service 02</h2>
        <button onclick="location.href = '/ClientREST/serviceII01'" type="button">Voire La moyenne d'un semestre</button><br><br>
        <button onclick="location.href = '/ClientREST/serviceII02'" type="button">Voire La moyenne d'une année</button><br><br>
        <button onclick="location.href = '/ClientREST/serviceII03'" type="button">Voir la moyenne et la mention du master sous XML</button><br><br>
        <button onclick="location.href = '/ClientREST/serviceII04'" type="button">Vérifier la validation d'un semestre</button><br><br>
        <button onclick="location.href = '/ClientREST/serviceII05'" type="button">Vérifier la validation d'une année</button><br><br>
        <h2>Service 03</h2>
        <button onclick="location.href = '/ClientREST/serviceIII11'" type="button">Modifier le mot de passe</button><br><br>
        <button onclick="location.href = '/ClientREST/serviceIII12'" type="button">Modifier le mot de passe d'un étudiant</button><br><br>
        <button onclick="location.href = '/ClientREST/serviceIII03'" type="button">Modifier les notes des étudiants</button><br><br>
        <button onclick="location.href = '/ClientREST/serviceIII04'" type="button">Ajouter un étudiant</button><br><br>
        <button onclick="location.href = '/ClientREST/serviceIII05'" type="button">Supprimer un étudiant</button><br><br>

    </center>
</body>
</html>
