
<%@page import="RestServices.Module"%>
<%@page import="RestServices.Masters"%>
<%@page import="com.controllers.ControllerMapping"%>
<%@page import="java.util.List"%>
<%@page import="RestServices.Etudiant"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Attestation</title>
        <%--<%@include file="style.html" %>--%>
        <!--<link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/Login_v20/images/icons/favicon.ico"/>-->
        <link href="${pageContext.request.contextPath}/resources/Login_v20/css/main1.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/Login_v20/css/util.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/input.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
        <div class="limiter"  >
            <div class="container-login100" >
<!--                <div class="d  bordder_d" > 
                    <img id="charge" src="${pageContext.request.contextPath}/resources/css/person.png" alt="" > 
                    <font color="white" style="margin-left: 7px;"> hhh </font>
                </div>-->

                <div class="d">  

                    <div class="bordder nonBorder"><br><br><br><br><br>

                        <form action="attestationReussite"  style="width: 400px;" >
                            <!--<input type="text" name="idE" >-->
                            <%  List<Etudiant> etudiants = ControllerMapping.getEtudiants();  %>
                            <label for="idE"><font color="white" size=+3 >Etudiant :</font> </label>
                            <select id="idE" name="idE">
                                <option selected ></option>
                                <%for (Etudiant e : etudiants) {%>   
                                <option value="<%=e.getIdetudiant()%>"> <%=e.getNom() + " " + e.getPrenom()%></option>
                                <% }%>   
                            </select> 

                            <input  class="login100-form-btn  button2 button" style="width: 400px;" type="submit" value="Générer l'attestation" >
                        </form>  

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
