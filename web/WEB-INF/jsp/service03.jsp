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
                    <font color="#00FF00" style="margin-left: 7px;"> ADMIN </font>
                </div>
                <center><font color=white size=+3><u> Service 03 </u></b></font>   </center> <br><br><br>
                <div class="d">  
                    <div class="bordder nonBorder" > 
                        <div>

                            <button  class="login100-form-btn  button1 button"  onclick="location.href = '/ClientREST/serviceIII11'" type="button">Modifier le mot de passe d'un administrateur</button>           
                            <button  class="login100-form-btn  button3 button"  onclick="location.href = '/ClientREST/serviceIII12'" type="button">Modifier le mot de passe d'un étudiant</button>

                            <button  class="login100-form-btn  button3 button" onclick="location.href = '/ClientREST/serviceIII03'" type="button">Modifier les notes des étudiants</button> 
<!--                            <button  class="login100-form-btn  button3 button" onclick="location.href = '/ClientREST/service05'" type="button">Générer le relevé de notes d'un étudiant</button> 
                            <button  class="login100-form-btn  button3 button" onclick="location.href = '/ClientREST/service06'" type="button">Générer l'attestation de réussite pour un étudiant</button> -->
                            <button  class="login100-form-btn  button3 button" onclick="location.href = '/ClientREST/serviceIII04'" type="button">Ajouter un étudiant</button> 
                            <button  class="login100-form-btn  button2 button" onclick="location.href = '/ClientREST/serviceIII05'" type="button">Supprimer un étudiant</button> 

                            <!--<button class= "login100-form-btn  button2 button" onclick="location.href = 'compteENS.jsp';">Mon compte</button>-->
                        </div>
                    </div>
                    <div class="bordder nonBorder" style="margin-top: 100px;" > <br><br>
<!--                        <img  style="margin-left: 350px; width: 100px; height: 70px;" id="charge" src="${pageContext.request.contextPath}/resources/css/suivant.png" alt="Voir le service suivant" 
                              onclick="location.href = '/ClientREST/service02'"  > -->
                    </div>
                </div>

            </div>
        </div>
    </body>
</html>
