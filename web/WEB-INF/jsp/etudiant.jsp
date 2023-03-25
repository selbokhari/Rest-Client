<%-- 
    Document   : enseignant
    Created on : 23 nov. 2019, 04:44:41
    Author     : Sohaib
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Espace enseignant</title>
        <%@include file="style.html" %>
        <link rel="icon" type="${pageContext.request.contextPath}/resources/image/png" href="Login_v20/images/icons/favicon.ico"/>
        <link href="${pageContext.request.contextPath}/resources/Login_v20/css/main1.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/Login_v20/css/util.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="limiter"  >
            <div class="container-login100" >
                <div class="d  bordder_d" > 
                    <img id="charge" src="${pageContext.request.contextPath}/resources/css/person.png" alt="" > 
                    <font color="#00FF00" style="margin-left: 7px;"> EL BOKHARI SOHAIB  </font>
                </div>
                <center><font color=white size=+3><u> Espace Etudiant </u></b></font>   </center> <br><br><br>
                <div class="d">  <center>
                        <div class="bordder nonBorder" > 
                            <div>
                                <!--                            <button  class="login100-form-btn  button1 button"  onclick="location.href = '/ClientREST/listeMasters'" type="button">Voire la liste des masters sous XML</button>           
                                                            <button  class="login100-form-btn  button3 button" onclick="location.href = '/ClientREST/listEtudiantsSemesters'" type="button">Voir la liste des étudiants inscrits dans un semestre</button> 
                                                            <button  class="login100-form-btn  button3 button" onclick="location.href = '/ClientREST/service04'" type="button">Voir la liste des étudiants et leurs notes pour un semestre</button> 
                                                            <button  class="login100-form-btn  button3 button" onclick="location.href = '/ClientREST/service05'" type="button">Générer le relevé de notes d'un étudiant</button> 
                                                            <button  class="login100-form-btn  button2 button" onclick="location.href = '/ClientREST/service06'" type="button">Générer l'attestation de réussite pour un étudiant</button> 
                                                            <button class= "login100-form-btn  button2 button" onclick="location.href = 'compteENS.jsp';">Mon compte</button>-->



                                <font color="green" size=+2> ${Etudiant.getNom()} ${Etudiant.getPrenom()}</font><br><br>

                                <button  class="login100-form-btn  button1 button"    onclick="location.href = '/ClientREST/service05Et'" type="button" value="${Etudiant.getIdetudiant()}">Générer le relevé de notes pour un étudiant</button><br><br>
                                <button   class="login100-form-btn  button2 button" onclick="location.href = '/ClientREST/attestationReussiteEt'" type="button">Générer l'attestation de réussite pour un étudiant</button> 



<!--<button onclick="location.href = '/ClientREST/service06'" type="button" value="${Etudiant.getIdetudiant()}">Générer l'attestation de réussite pour un étudiant</button><br><br>-->
                            </div>
                        </div>
                    </center>
                    </body>
                    </html>
