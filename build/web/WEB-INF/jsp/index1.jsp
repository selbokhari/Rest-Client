<%@page import="com.controllers.ControllerMapping"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body>
        <br> <br>
        <h1>Salut on est dans index.jsp !!!</h1>

        <a href="/ClientREST/hello">Aller à hello>> </a>

    </h1><br><br><br></h1><br><br><br></h1><br><br><br>


<%--<c:forEach var="m" items="${modules}">--%> 
<!--    Id       : ${m.idModule}   <br>
    Nom      : ${m.nom}        <br>
    Semestre : ${m.idSmester}  <br>-->
<!----------------------------------------------<br>-->
<%--</c:forEach>--%>
Etudiants   --------------------------------------------<br>
<select>

    <c:forEach var="mm" items="<%=ControllerMapping.getEtudiants()%>"> 


        <option>        Prenom       : ${mm.nom}  ${mm.prenom}  </option>
        <!--<option>        Nom      : ${mm.prenom} </option>-->
    </c:forEach>
</select>


</body>
</html>
