<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/resources/css/style1.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/style2.css" rel="stylesheet" type="text/css"/>
        <link href="${pageContext.request.contextPath}/resources/css/style3.css" rel="stylesheet" type="text/css"/>



        <title>resultats</title>
    </head>

    <body>
    <center> 
        <div style="display:list-item;">
            <div  class="div1"><center><font color="white"  size=+2><br>La Faculté des Sciences</font> </center></div>
            <div class="div2"><img src="${pageContext.request.contextPath}/resources/css/univLogo.png" alt="université mohammed 1er" style="width:250px;height:130px;"></div> 
        </div><br><br><br><br><br><br><br><br><br>

        <div  align="center" style="display:list-item; "> 

            <font color="#77933c" size=+1>Département d'informatique<br><br> </font>
            <font color="#82c0db" size=+2>Master spécialisé Ingénierie Informatique<br></font>

        </div> <br><br><br>
        <div> 
            <form action="controle" method="Post" >
                <div class="d">
                    <input  type="text" name="search"   placeholder="  Rechercher dans les fichiers" size="80%"/>
                    <input type="submit"  class="login100-form-btn" style="width: 200px; height: 30px;" value="rechercher"  />
                    <!--<button type="submit" class="search login100-form-btn" style="width: 150px; height: 30px;" >rechercher</button>-->
                </div>

            </form>
            <br><br>

        </div>
    </center>
</body>
</html>