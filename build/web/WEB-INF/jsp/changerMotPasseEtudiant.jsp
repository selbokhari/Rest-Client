
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

                        <font color="white" size=+2>Chagement du mot de passe d'un étudiant</font><br><br>

                        <form action="changerMotPasseEtudiant" method="GET" > 
                            <table border="0">
                                <tr> <td>  <font color="white" size=+2>Utilisateur(CNE)</font></td> 
                                    <td>:</td> 
                                    <td><input class="in" type="text" name="user" holderplace="Nom d'utilisateur  . . ." > </td>
                                </tr>
                                <tr> <td>  <font color="white" size=+2> Mote de passe </font></td> 
                                    <td>:</td>
                                    <td><input class="none" type="text" name="password" holderplace="Nom d'utilisateur . . ." ></td> 
                                </tr>

                            </table><br><br>

                            <input   class="login100-form-btn  button2 button" style=" width: 450px;  " type="submit" value="Modifier" ><br>
                        </form> <br>

                        <h1>${message}</h1> 

                        <!--
                                                <h1>Chagement du mot de passe d'un étudiant</h1>
                                                <form action="changerMotPasseEtudiant" method="GET" > 
                                                    Utilisateur   :   <input type="text" name="user" holderplace="Nom d'utilisateur . . ." > <br><br><br>
                                                    Mote de passe :   <input type="text" name="password" holderplace="Mot de passe . . ." > <br> <br><br>
                                                    <input type="submit" value="Modifier" ><br>
                        
                                                </form> <br><br> <br><br>
                                                <h1></h1> -->




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
