
<%@page import="RestServices.Masters"%>
<%@page import="com.controllers.ControllerMapping"%>
<%@page import="java.util.List"%>
<%@page import="RestServices.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ma charge</title>
        <%@include file="style.html" %>
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/Login_v20/images/icons/favicon.ico"/>
        <link href="${pageContext.request.contextPath}/resources/Login_v20/css/main1.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/Login_v20/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/input.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="limiter"  >
            <div class="container-login100" >
                <div class="d  bordder_d" > 
                    <img id="charge" src="${pageContext.request.contextPath}/resources/css/person.png" alt="" > 
                    <font color="white" style="margin-left: 7px;"> ADMIN </font>
                </div>
                <div class="d">  
                    <div class="bordder nonBorder">

                        <font color="white" size=+3>Moyenne d'une année</font><br><br>
                        <form  action="moyenneAnnée">
                            <%  List<Etudiant> etudiants = ControllerMapping.getEtudiants(); %>
                            <label for="idE">Etudiant</label>
                            <select id="idE" name="idE">
                                <option selected ></option>
                                <%for (Etudiant e : etudiants) {%>   
                                <option value="<%=e.getIdetudiant()%>"> <%=e.getNom() + " " + e.getPrenom()%></option>
                                <% }%>   
                            </select> 

                            <label for="idA">Année</label>
                            <select id="idA" name="idA">
                                <option value="1">Première Année</option>
                                <option value="2">Deuxième Année</option>
                            </select><br><br>

                            <input class="login100-form-btn  button2 button" type='submit' value="Voir la moyenne d'une année" >
                        </form><br><br>
                        <h1>${moyenne}</h1>






                    </div>
                    <div class="bordder nonBorder" style="margin-top: 100px;" > <br><br>
                        <img  style="margin-left: 350px; width: 100px; height: 70px;" id="charge" src="${pageContext.request.contextPath}/resources/css/arriere.png" alt="retourner vers la page d'adminstrateur" 
                              onclick="location.href = '/ClientREST/service02'"  > 
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>
