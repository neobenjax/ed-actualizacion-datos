<%
paso = Request.QueryString("p")
%>
<!doctype html>
<html class="no-js" lang="es" ng-app="app">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Emoción Deportiva - Actualización de datos</title>
<meta name="description" content="">
<meta name="keywords" content="">

<link rel="stylesheet" href="assets/css/normalize.css">
<link rel="stylesheet" href="assets/css/main.css">
<link rel="stylesheet" href="assets/css/jquery-ui.css">
<link rel="stylesheet" href="assets/js/librerias/fancybox/jquery.fancybox.css?v=2.1.5" type="text/css" media="screen" />

<script src="assets/js/librerias/vendor/jquery-1.11.2.min.js"></script>
<script src="assets/js/librerias/vendor/jquery-ui.min.js"></script>
<script type="text/javascript" src="assets/js/librerias/fancybox/jquery.fancybox.pack.js?v=2.1.5"></script>
<script type="text/javascript" src="assets/js/librerias/jquery.validate.js"></script>
<script type="text/javascript" src="assets/js/librerias/matchMedia.js"></script>
<script type="text/javascript" src="assets/js/librerias/placeholder_fix.js"></script>
</head>
<body>


	<div class="contenedor-all">
		
		<div class="videoFullScreen" id="bgvid"></div>

		<div class="desplazamiento">

			<header>
				<a href="#" class="logo-emocion">Emoción Deportiva</a>
				<ul class="redes-sociales">
					<li><a href="#" class="facebook" target="_blank">Facebook</a></li>
					<li><a href="#" class="twitter" target="_blank">Twitter</a></li>
					<li><a href="#" class="instagram" target="_blank">Instagram</a></li>
					<li><a href="#" class="redsocial_1" target="_blank">Pin</a></li>
					<li><a href="#" class="Pinterest" target="_blank">Pinterest</a></li>
					<li><a href="#" class="Youtube" target="_blank">Youtube</a></li>
				</ul>
			</header>

			<div class="contenido <%=paso%>" id="contenido">

				<%
				if paso = "" then
				%>

					<div class="envio-correo" id="enviarCorreo">
						<h1 class="titulo">
							¡Nos estamos renovando!
						</h1>
						<p class="parrafo-reg">
							Para mantener tu usuario y seguir participando en eventos de Emoción Deportiva, es necesario que ingreses tu correo electrónico:
						</p>

						<div class="gradiente-gris formulario">
							<form action="?p=validar" id="registroCorreo" method="POST">
								<ul class="campos-formulario">
									<li>
										<label for="e-mail" class="lbl-form">Correo electrónico:</label>
										<input type="email" class="input-full" placeholder="jorgemacias@gmail.com" name="e-mail" required>
									</li>
								</ul>
								<div class="submit-actions">
									<input type="submit" value="ACEPTAR" class="btn gradiente-azul">
								</div>
							</form>
						</div>

					</div>

				<%
				end if
				%>

				<%
				if paso = "validar" then
				%>

					<div id="instruccionesCorreo" class="instrucciones-correo">
						<p class="titulo">
							Valida tu correo electrónico
						</p>
						<p class="parrafo-reg">
							Para poder continuar es necesario validar tu correo electrónico. Revisa tu bandeja de entrada y haz click en el enlace adjunto.
						</p>
					</div>

				<%
				end if
				%>

				<%
				if paso = "registro" then
				%>
					<div class="registro-datos" id="registroDatos">

						<h1 class="titulo">
							¡Nos estamos renovando!
						</h1>
						<p class="parrafo-reg">
							Para mantener tu usuario y seguir participando en eventos de Emoción Deportiva, es necesario que actualices la siguiente información:
						</p>

						<div class="gradiente-gris actualizacion-formulario">

							<form action="?p=gracias" id="formularioActualizacion" method="POST">
								
								<div class="formulario-top">
									
									<div class="campo">
										<label for="nombre" class="lbl-form">Nombre:</label>
										<input type="text" class="input-full" placeholder="" name="nombre" required>
									</div>

									<div class="campo">
										<label for="ap_paterno" class="lbl-form">Apellido Paterno:</label>
										<input type="text" class="input-full" placeholder="" name="ap_paterno" required>
									</div>

									<div class="campo">
										<label for="ap_materno" class="lbl-form">Apellido Materno:</label>
										<input type="text" class="input-full" placeholder="" name="ap_materno" required>
									</div>

									<div class="campo">
										<label for="e-mail" class="lbl-form">Correo electrónico:</label>
										<input type="email" class="input-full" placeholder="jorgemacias@gmail.com" name="e-mail" required>
									</div>

									<div class="campo">
										<label for="password" class="lbl-form">Contraseña:</label>
										<input type="password" class="input-full" placeholder="" name="password" required>
									</div>

									<div class="campo">
										<label for="password_re" class="lbl-form">Repetir contraseña:</label>
										<input type="text" class="input-full" placeholder="" name="password_re" required>
									</div>

									<div class="campo">
										<label for="nombre" class="lbl-form">Fecha de nacimiento:</label>
										<div class="fecha">
											<select name="anho" id="anho" class="selectbox">
												<option value="1986">1986</option>
												<option value="1998">1998</option>
											</select>
											<select name="mes" id="mes" class="selectbox">
												<option value="1">Enero</option>
												<option value="2">Febrero</option>
												<option value="3">Marzo</option>
												<option value="4">Abril</option>
												<option value="5">Mayo</option>
												<option value="6">Junio</option>
												<option value="7">Julio</option>
												<option value="8">Agosto</option>
												<option value="9">Septiembre</option>
												<option value="10">Octubre</option>
												<option value="11">Noviembre</option>
												<option value="12">Diciembre</option>
											</select>
											<select name="dia" id="dia" class="selectbox">
												<option value="1">1</option>
											</select>
										</div>
									</div>

									<div class="campo">
										<label for="genero" class="lbl-form">Género:</label>
										<select name="genero" id="genero" class="selectbox">
											<option value="">Seleccionar</option>
											<option value="h">Hombre</option>
											<option value="m">Mujer</option>
										</select>
									</div>

								</div>

								<div class="captcha"></div>

								<div class="tyc">
									<input type="checkbox" name="aviso">
									<label for="aviso" class="lbl-aviso">
										He leído y estoy de acuerdo con el 
										<a href="aviso-privacidad.asp" target="_blank" class="openLayer" data-fancybox-type="iframe">Aviso de Privacidad</a>
									</label>
								</div>

								<div class="submit-actions">
									<input type="submit" value="ACEPTAR" class="btn gradiente-azul">
								</div>

								<a href="#porqueActualizar" class="porque-actualizar openLayer">
									¿Porqué tengo que actualizar mi registro?
								</a>

							</form>

						</div>

					</div>

					<div id="porqueActualizar" class="layer" style="display:none;">
					    <div class="confirmacion gradiente-azul TXT_CENTER BLANCO">
					        <span class="titConfirm">
					        	¿Porqué tengo que 
					        	<span class="br"></span>
					        	actualizar mi registro?
					        </span>
					    </div>
					    <div class="detallePodio TXT_JUSTIFY GRIS">
					        <span class="instrucLayer">
					            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Est sit molestias, sint ducimus a totam ea officia doloremque, laboriosam illum excepturi, fugiat, hic doloribus aliquam laudantium neque incidunt dolores omnis.
					        </span>
					        <p class="dudas">
					        	¿Tienes alguna duda?
					        </p>
					        <p class="contacto-atencion">
					        	Llama al <a href="tel:0180012345678">01 800 1234 5678</a>
					        	<span class="br"></span>
								o escribe un correo a
								<span class="br"></span>
								<a href="mailto:contacto@emociondeportiva.com">contacto@emociondeportiva.com</a>
					        </p>
					    </div>
					</div>
				<%
				end if
				%>

				<%
				if paso = "gracias" then
				%>
					<div id="graciasFinal" class="gracias-actualiza">
						<p class="titulo">
							¡Gracias!
						</p>
						<p class="parrafo-reg">
							Tu registro se ha actualizado correctamente. Muy pronto podrás disfrutar de los beneficios de tener tu usuario actualizado en Emoción Deportiva.
						</p>
					</div>
				<%
				end if
				%>

			</div>

			<footer>
				<p class="vigencia-texto">
					Vigencia al 30 de noviembre 2016.
				</p>
				<p class="copy-right">
					Copyright @2015   |   Empresa filial de Grupo Martí S.A. de C.V.
				</p>
			</footer>
			
		</div><!--Fin Contenedor para desplazamiento en MOVIL -->
	</div>



<script type="text/javascript" src="assets/js/commons_sitio.js"></script>
</body>
</html>