<%-- 
    Document   : connexion
    Created on : 27 déc. 2020, 14:47:18
    Author     : pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Connexion</title>
    </head>
    <body>
         <br> <br> <br> <br>
        <form action="/ClientREST/connexion" method="GET" > 
            <input type="text" name="user" holderplace="Nom d'utilisateur . . ." > <br>
            <input type="password" name="password" holderplace="Mot de passe . . ." > <br> <br>
            <input type="submit" value="Se connecter" >

        </form>


    </body>
</html>
