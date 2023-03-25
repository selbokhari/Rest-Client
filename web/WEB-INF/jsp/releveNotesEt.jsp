
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
        <title>Relevé de notes</title>
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
                        <form  action="/ClientREST/releveNotesEt"><br><br>
                            <label for="idS">Semestre</label>
                            <select style="width: 400px;" id="idS" name="idS">
                                <option value="1" selected></option>
                                <option value="1">Semestre1</option>
                                <option value="2">Semestre2</option>
                                <option value="3">Semestre3</option>
                                <option value=4>Semestre4</option>
                            </select> 


                            <!--Etudiant       :         <input type="text" name="idE" ><br><br>-->
                            <% //  List<Etudiant> etudiants = ControllerMapping.getEtudiants();  %>
                            <!--<label for="idE">Etudiant</label>-->
                            <!--<input type="text" name="idE" value="${id}" hidden="true"  >-->
                            <br><br>
                            <label for="format">Format</label>
                            <select style="width: 400px;" id="format" name="format">
                                <option value="XML" selected></option>
                                <option value="XML">XML</option>
                                <option value="PDF">PDF</option>

                            </select>
                            <br><br>
                            <!--<input   class="login100-form-btn  button1 button" style=" width: 450px;  " type="submit" value="Gé" ><br>-->
                            <input style="width: 400px;" class="login100-form-btn  button3 button" type="submit" value="Générer le relevé de notes"> 

                            <!--<input class="login100-form-btn  button2 button" type="submit" value="Générer le relevé de notes">--> 
                        </form>
                    </div>
                    <div class="bordder nonBorder" style="margin-top: 100px;" > <br><br>
                        <img  style="margin-left: 350px; width: 100px; height: 70px;" id="charge" src="${pageContext.request.contextPath}/resources/css/arriere.png" alt="retourner vers la page d'adminstrateur" 
                              onclick="location.href = '/ClientREST/etudiant'"  > 
                    </div>

                </div>
            </div>
        </div>

    </body>

</html>
