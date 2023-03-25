
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

                      

                        <font color="white" size=+3>Modifier les notes des étudiants</font> <br><br><br>
                        <form action="ModifierNote" >
                            <table border="0">
                                <tr> <td>  <font color="white" size=+2>Cne d'étudiant</font></td> 
                                    <td>:</td> 
                                    <td><input type="text" name="cne" required ></td>
                                </tr>
                                <tr>
                                    <td><font color="white" size=+2>Module</font></td><td>:</td>
                                    <td>
                                        <%  List<Module> modules = ControllerMapping.getModules();  %>

                                        <select  name="nomModule" required>
                                            <option selected ></option>
                                            <%for (Module m : modules) {%>   
                                            <option value="<%=m.getNom()%>"> <%=m.getNom()%></option>
                                            <% }%>   
                                        </select> 
                                    </td>
                                </tr>

                                <tr> <td>  <font color="white" size=+2>Note normale</font></td> 
                                    <td>:</td> 
                                    <td><input type="text" name="noteNormale" required></td>
                                </tr>
                                <tr> <td>  <font color="white" size=+2>Note rattrapage</font></td> 
                                    <td>:</td> 
                                    <td><input type="text" name="noteRattrapage"  required></td>
                                </tr>

                            </table>

                            <input   class="login100-form-btn  button2 button" style=" width: 450px;  " type="submit" value="Modifier" ><br>


                        </form>

                        <h1>${message}</h1>

                    </div>
                    <div class="bordder nonBorder" style="margin-top: 100px;" > 
                        <img  style="margin-left: 350px; width: 100px; height: 70px;" id="charge" src="${pageContext.request.contextPath}/resources/css/arriere.png" alt="retourner vers la page d'adminstrateur" 
                              onclick="location.href = '/ClientREST/service03'"  > 
                    </div>

                </div>
            </div>
        </div>

    </body>
</html>
