<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="truespectsistema.Login" %>        
<!DOCTYPE html>
<html>
<head runat="server">
	<title>TRUESPECT</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script type="text/javascript" >
        Submit_Click = function () {
            //$('#btnGuardar').click(function (e) {
            //e.preventDefault(); // Usamos esta línea para cancelar el postback que el botón crea
            var parametros = {
                usuario: $('#txtusuario').val(),
                password: $('#txtcontraseña').val()
            };
            // Ahora hacemos la llamada tipo AJAX utilizando jQuery
            $.ajax({
                type: 'POST',                               // tipo de llamada (POST, GET)
                url: 'Login.aspx/Submit_Click',                // el URL del método que vamos a llamar
                data: JSON.stringify(parametros),           // los parámetros en formato JSON
                contentType: "application/json; charset=utf-8",
                dataType: "json",                           // tipo de datos enviados al servidor
                success: function () {                      // función que se va a ejecutar si el pedido resulta exitoso
                    $('#lblMensaje').text('La información ha sido guardada exitosamente.');
                    window.location.href="Inicio.aspx";
                },
                error: function (req, stat, err) {          // función que se va a ejecutar si el pedido falla
                    var error = eval("(" + req.responseText + ")");
                    $('#lblMensaje').text(error.Message);
                }
            });
        }
    </script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/fondo.jpg');">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-54">
				<%--<form id="form1" runat="server">--%>
					<span class="login100-form-title p-b-49">
						Ingresar al sistema Truespect
					</span>			        
<%--    <asp:ScriptManager runat="server">
    </asp:ScriptManager>
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>--%>
                          		<div class="wrap-input100 validate-input m-b-23" data-validate = "Username is reauired">
						<span class="label-input100">Usuario</span>
						<input class="input100" type="text" name="username" runat="server" id="txtusuario" placeholder="Ingrese su Usuario">
						<span class="focus-input100" data-symbol="&#xf206;"></span>
					</div>

					<div class="wrap-input100 validate-input" data-validate="Password is required">
						<span class="label-input100">Contraseña</span>
						<input class="input100" type="password" name="pass" runat="server" id="txtcontraseña" placeholder="Ingrese su Contraseña">
						<span class="focus-input100" data-symbol="&#xf190;"></span>
					</div>
                        <%--</ContentTemplate>
                    </asp:UpdatePanel>--%>
                    <br />
                    <br />
                <button type="button" class="btn btn-primary" id="btnguardar" onclick="javascript: Submit_Click()">
								Iniciar Sesion</button>
					<%--<button class="btn btn-primary" id="btnguardar" runat="server" onserverclick="Submit_Click">
								Iniciar Sesion</button>--%>
				<%--</form>--%>
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
