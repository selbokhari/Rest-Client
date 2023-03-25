
<%@page import="RestServices.Masters"%>
<%@page import="com.controllers.ControllerMapping"%>
<%@page import="java.util.List"%>
<%@page import="RestServices.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>La modification du mot de passe d'administrateur</title>
        <%--<%@include file="style.html" %>--%>
        <!--<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/Login_v20/images/icons/favicon.ico"/>-->
        <link href="${pageContext.request.contextPath}/resources/Login_v20/css/main1.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/Login_v20/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/input.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="limiter"  >
            <div class="container-login100" >
                <div class="d  bordder_d" > 
                    <!--<img id="charge" src="${pageContext.request.contextPath}/resources/css/person.png" alt="" >--> 
                    <!--<font color="white" style="margin-left: 7px;"> hhh </font>-->
                    <br><br><br>
                </div>

                <div class="d">  

                    <div class="bordder nonBorder">

<!--
                        <font color="white" size=+3>La vérification de la validation d'une année</font><br><br>

                        <form  action="validationAnnee">
                            <%  List<Etudiant> etudiants = ControllerMapping.getEtudiants();  %>
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

                            <input class="login100-form-btn  button2 button" type='submit' value="Vérifier" ><br>
                        </form><br><br><br>    
                        <h1>${moyenne}</h1>-->
                        <!----------------->
                        <!--<h1>La modification du mot de passe d'administrateur</h1>-->
                        <font color="white" size=+2>La modification du mot de passe d'administrateur</font><br><br>

                        <form action="changerMotPasseAdmin" method="GET" > 
                            <table border="0">
                                <tr> <td>  <font color="black" size=+2>Utilisateur</font></td> 
                                    <td> <font color="white" size=+2>:</font></td> 
                                    <td><input class="in" type="text" name="user" holderplace="Nom d'utilisateur . . ." > </td>
                                </tr>
                                <tr> <td>  <font color="black" size=+2> Mote de passe </font></td> 
                                    <td> <font color="white" size=+2>:</font></td>
                                    <td><input class="none" type="text" name="password" holderplace="Nom d'utilisateur . . ." ></td> 
                                </tr>

                            </table><br><br>

                            <input   class="login100-form-btn  button2 button" style=" width: 450px;  " type="submit" value="Modifier" ><br>
                        </form> <br><br>

                        <h1>${message}</h1> 

                        <!--
                                                    Utilisateur   :   <input type="text" name="user" holderplace="Nom d'utilisateur . . ." > <br><br><br>
                                                    Mote de passe :   <input type="text" name="password" holderplace="Mot de passe . . ." > <br> <br><br>-->





                    </div>
                    <div class="bordder nonBorder" style="margin-top: 100px;" > <br><br>
                        <img  style="margin-left: 350px; width: 100px; height: 70px;" id="charge" src="${pageContext.request.contextPath}/resources/css/arriere.png" alt="retourner vers la page d'adminstrateur" 
                              onclick="location.href = '/ClientREST/service03'"  > 
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>
