<%
paso = Request.QueryString("p")
ref = Request.QueryString("ref")
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
<body class="<%=paso%>">


	<div class="contenedor-all <%=paso%>">
		
		<div class="videoFullScreen" id="bgvid"></div>

		<div class="desplazamiento">

			<header>
				<a href="#" class="logo-emocion">Emoción Deportiva</a>
				<ul class="redes-sociales">
					<li>
						<a href="https://www.facebook.com/EmocionDeportiva/" class="facebook" target="_blank">Facebook</a>
					</li>
					<li>
						<a href="https://twitter.com/emocionD" class="twitter" target="_blank">Twitter</a>
					</li>
					<li>
						<a href="https://www.instagram.com/emociondeportiva/" class="instagram" target="_blank">Instagram</a>
					</li>
					<!--li><a href="#" class="redsocial_1" target="_blank">Pin</a></li>
					<li><a href="#" class="Pinterest" target="_blank">Pinterest</a></li>
					<li><a href="#" class="Youtube" target="_blank">Youtube</a></li-->
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
						<h2 class="subtitulo">
							Espera muy pronto nuestra nueva imagen.
						</h2>
						<p class="parrafo-reg">
							Para continuar disfrutando de los eventos que en Emoción Deportiva 
							<span class="br"></span> 
							tenemos para tí y buscando brindarte un mejor servicio te pedimos 
							<span class="br"></span>
							nos confirmes tus datos en 3 simples pasos: 
						</p>

						<div class="gradiente-gris formulario">
							<form action="?p=validar" id="registroCorreo" method="POST">
								<ul class="campos-formulario">
									<li>
										<label for="e-mail" class="lbl-form">1. Ingresa tu correo electrónico:</label>
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
						<p class="subtitulo">
							2. Valida tu correo electrónico.
						</p>
						<p class="parrafo-reg">
							Para poder continuar, es necesario validar tu correo electrónico,
							<span class="br"></span>
							 haciendo clic el mensaje que te hemos enviado.
						</p>
					</div>

				<%
				end if
				%>

				<%
				if paso = "registro" then
				%>
					<div class="registro-datos" id="registroDatos">

						<% if ref = "pasos" then %>
							<h2 class="subtitulo pasos">
								3. Confírmanos tus datos.
							</h2>
							<p class="parrafo-reg">
								Esto te permitirá disfrutar la nueva experiencia que tenemos para tí.
							</p>
						<% else %>
							<h1 class="titulo">
								¡Nos estamos renovando!
							</h1>
							<h2 class="subtitulo">
								Espera muy pronto nuestra nueva imagen.
							</h2>
							<p class="parrafo-reg">
								Para continuar disfrutando de los eventos que en Emoción Deportiva tenemos para tí y buscando brindarte un mejor servicio te pedimos nos confirmes tus datos:
							</p>
						<% end if %>

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
					            Tener actualizados tus datos te permitirá acceder a los diferentes servicios que tenemos para ti, al igual que nos facilita mantener contacto permanente contigo y de este modo darte a conocer información que sea de tu interés a través boletines y correos electrónicos.
					            <br><br>
								También podrás vivir una mejor experiencia en tu proceso de registro y consulta de resultados de los eventos que participes y sean operados por Emoción Deportiva.
					        </span>
					        <p class="dudas">
					        	¿Tienes alguna duda?
					        </p>
					        <p class="contacto-atencion">
					        	Llama al 
					        	<span class="br"></span>
					        	<a href="tel:018008013662">01800 801 3662</a>
					        	<span class="br"></span>
					        	Interior de la República (Llamadas foráneas)
					        	<span class="br"></span>
					        	<a href="tel:41237539">41 23 75 39</a>
					        	<span class="br"></span>
					        	D.F. y Área Metropolitana (Llamadas locales)
					        	<span class="br"></span>
								o escribe un correo a
								<span class="br"></span>
								<a href="mailto:cronometraje@marti.com.mx">cronometraje@marti.com.mx</a>
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
							Tu registro se ha actualizado correctamente.
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