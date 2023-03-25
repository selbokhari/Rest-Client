
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


                        <form action="/ClientREST/listEtudiantsSemestersMapping"><br><br><br><br>

                            <label for="idM">Master</label>
                            <select id="idM" name="idM">
                                <option selected ></option>

                                <option value="1"> Master Spécialisé Ingénierie Informatique</option>

                            </select> 



                            <label for="idS">Semestre</label>
                            <select id="idS" name="idS">
                                <option value="1" selected></option>
                                <option value="1">Semestre1</option>
                                <option value="2">Semestre2</option>
                                <option value="3">Semestre3</option>
                                <option value=4>Semestre4</option>
                            </select>



                            <label for="format">Format</label>

                            <select id="format" name="format">
                                <!--<option value="Json">--Choisir le format--</option>-->
                                <option value="XML">XML</option>                              
                                <option value="PDF">PDF</option>
                            </select>

                            <input   class="login100-form-btn  button2 button" type="submit" value="Voir la list"> 

                        </form>

                    </div>
                    <div class="bordder nonBorder" style="margin-top: 100px;" > <br><br>
                        <img  style="margin-left: 350px; width: 100px; height: 70px;" id="charge" src="${pageContext.request.contextPath}/resources/css/arriere.png" alt="retourner vers la page d'adminstrateur" 
                              onclick="location.href = '/ClientREST/service01'"  > 
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>
