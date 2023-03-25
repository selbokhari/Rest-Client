<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Se connecter</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/png" href="${pageContext.request.contextPath}/resources/Login_v20/images/icons/favicon.ico"/>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/vendor/bootstrap/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/vendor/animate/animate.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/vendor/css-hamburgers/hamburgers.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/vendor/animsition/css/animsition.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/vendor/select2/select2.min.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/vendor/daterangepicker/daterangepicker.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/css/util.css">
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/Login_v20/css/main.css">
        <style>
            .button{
                background-color: radial-gradient(circle at 50% 0,
                    rgba(255,0,0,.5),
                    rgba(255,0,0,0) 70.71%),
                    radial-gradient(circle at 6.7% 75%,
                    rgba(0,0,255,.5),
                    rgba(0,0,255,0) 70.71%),
                    radial-gradient(circle at 93.3% 75%,
                    rgba(0,255,0,.5),
                    rgba(0,255,0,0) 70.71%) beige;
                height: auto; width: auto;
                padding: 10px;
                border-radius: 8px;
            }
        </style>
    </head>
    <body>

        <div class="limiter">
            <div class="container-login100">
                <div class="wrap-login100 p-b-160 p-t-50">
                    <form action="/ClientREST/connexion"  method="GET" class="login100-form validate-form">
                        <span class="login100-form-title p-b-43">
                            Bienvenu
                        </span>

                        <div class="wrap-input100 rs1 validate-input" data-validate = "Username is required">
                            <input class="input100" type="text" name="user" required>
                            <span class="label-input100">Utilisateur</span>
                        </div>


                        <div class="wrap-input100 rs2 validate-input" data-validate="Password is required">
                            <input class="input100" type="password" name="password" required>
                            <span class="label-input100">Mot de passe</span>
                        </div>

                        <div class="container-login100-form-btn">
                            <button class="login100-form-btn">
                                Se connecter
                            </button>
                        </div>

                        <div class="text-center w-full p-t-23">
                            <a href="#" class="txt1">
                                Mot de passe oublié ?
                            </a>
                        </div>

                    </form>

                </div>

            </div>
        </div>





        <!--===============================================================================================-->
        <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/animsition/js/animsition.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/bootstrap/js/popper.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/select2/select2.min.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/daterangepicker/moment.min.js"></script>
        <script src="vendor/daterangepicker/daterangepicker.js"></script>
        <!--===============================================================================================-->
        <script src="vendor/countdowntime/countdowntime.js"></script>
        <!--===============================================================================================-->
        <script src="js/main.js"></script>


    </body>
</html>
