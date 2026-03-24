// Añadir un fichero logout.php en login
<?php
session_start();
$_SESSION = array();
session_destroy();
header("Location: ./login.php");
exit();
?>





// Modificar pagAdministrdor.php
<?php

session_start();

// Verificar si el usuario no está logado como administrador
if (!isset($_SESSION['nombreusuario'])) {
    // Redirigir a la página de inicio de sesión
    header("Location: ../login/login.php");
    exit(); // Terminar la ejecución del script

}

?>

<html>
<!-- APLICAMOS EL ESTILO ANTES DE LLAMAR A LA CABECERA -->
<style>
    .nav-link {
        color: rgba(255, 255, 255, 0.55) !important;
        font-size: 0.875rem !important;
        font-weight: 700 !important;


    }
</style>
<?php
$pagina = "Loguin"; // Esto activará el ocultar el botón de login en la cabecera
require_once('../dom/cabecera.php');
?>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UPM</title>
    <link rel="icon" href="../../imagenes/lododept.jpg">
    <link rel="stylesheet" href="../../css/styles.css">
    <!--<script src="../../../node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>-->
    <script src="https://cdn.ckeditor.com/ckeditor5/36.0.1/classic/ckeditor.js"></script>
    <script src="../../js/funciones.js"></script>

    <style>
        /* Forzamos la altura mínima del contenedor azul */
        .container-fluid.bg-primary {
            padding-top: 5px !important;
            padding-bottom: 0px !important;
            margin-bottom: 0px !important;
        }

        /* Ajuste fino del título */
        .admin-title {
            margin-top: 5px !important;
            margin-bottom: 0px !important;
            font-size: 1.4rem !important;
        }

        /* Botones compactos sin márgenes externos que empujen el fondo */
        .btn-admin-compact {
            padding: 5px 15px !important;
            /* Relleno pequeño */
            margin: 2px !important;
            /* Margen mínimo entre botones */
            font-size: 0.85rem !important;
            border-radius: 4px !important;
        }

        /* Quitamos el margen por defecto de la lista de la navbar */
        .navbar-nav {
            margin-top: 0 !important;
            margin-bottom: 5px !important;
        }
    </style>

</head>

<body>
    <div>
        <div class="container-fluid bg-primary">
            <h1 class="text-center mt-5 fst-italic fw-bold text-secondary">MODO ADMINISTRADOR</h1>
            <div class="row justify-content-center">
                <div class="col-auto">
                    <a href="../../../index.php"><img class="bg-primary p-1 rounded-2 mb-3 mt-3"
                            style=" height:50px; width:50px;  " src="./home.png" alt="casa a index.php"></a>
                </div>

            </div>
            <nav class="navbar navbar-expand-xl navbar-dark bg-primary">
                <div class="container-fluid">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <button class="btn btn-lg btn-primary  btn-outline-secondary px-3 py-3 mt-4 btn-lg"
                                    onclick=MostrarInterfazMiembros(0)>Interfaz Miembros
                                </button>
                            </li>
                            <li class="nav-item">
                                <button class="btn btn-lg btn-outline-secondary btn-primary  px-3 py-3 mt-4 btn-lg"
                                    onclick=MostrarBotonesProyectoInterfaz(0)>Interfaz Proyectos
                                </button>
                            </li>
                            <li class="nav-item">
                                <button class="btn btn-lg btn-outline-secondary btn-primary  px-3 py-3 mt-4 btn-lg"
                                    onclick=MostrarInterfazNoticias(0)>Interfaz Noticia
                                </button>
                            </li>
                            <li class="nav-item">
                                <button class="btn btn-lg btn-outline-secondary btn-primary  px-3 py-3 mt-4 btn-lg"
                                    onclick=MostrarInterfazPublicaciones(0)>Interfaz Publicaciones
                                </button>
                            </li>
                            <li class="nav-item">
                                <button class="btn btn-lg btn-outline-secondary btn-primary  px-3 py-3 mt-4 btn-lg"
                                    onclick=MostrarInterfazLineas(0)>Interfaz Lineas
                                </button>
                            </li>
                            <li class="nav-item">
                                <button class="btn btn-lg btn-outline-secondary btn-primary  px-3 py-3 mt-4 btn-lg"
                                    onclick=MostrarIntefazGrados(0)>Intefaz Grados
                                </button>
                            </li>
                            <li class="nav-item">
                                <button class="btn btn-lg btn-outline-secondary btn-primary  px-3 py-3 mt-4 btn-lg"
                                    onclick=CambiarContrasena()>Cambiar Contrasena
                                </button>
                            </li>
                            <li class="nav-item">
                                <a href="../login/logout.php"
                                    class="btn btn-lg btn-secondary px-3 py-3 mt-4 text-white fw-bold shadow-sm"
                                    style="border-radius: 4px; margin-left: 10px;">
                                    Cerrar Sesión
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

        </div>
        <div class="container-fluid mt-5 text-center">
            <div class="row justify-content-center">
                <div class="container">
                    <div class="container" id="activarInterfazUsuarios" style="display:none;">
                        <!-- Contenido para Interfaz de Usuarios -->
                    </div>
                </div>
                <div class="container">
                    <div class="container text-wrap" id="activarInterfazProyectos" style="display:none">
                        <!-- Contenido para Interfaz de Proyectos -->
                    </div>
                </div>
                <div class="container">
                    <div class="container text-wrap" id="activarInterfazNoticias" style="display:none">
                        <!-- Contenido para Interfaz de Noticias -->
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="container">
                    <div class="container text-wrap" id="activarInterfazPublicaciones" style="display:none">
                        <!-- Contenido para Interfaz de Publicaciones -->
                    </div>
                </div>
                <div class="container">
                    <div class="container text-wrap" id="activarInterfazLineasInvestigacion" style="display:none">
                        <!-- Contenido para Interfaz de Líneas de Investigación -->
                    </div>
                </div>
                <div class="container">
                    <div class="container text-wrap" id="activarInterfazUsuario" style="display:none">
                        <!-- Contenido para Interfaz de Usuario -->
                    </div>
                </div>
            </div>
            <div class="row justify-content-center">
                <div class="container">
                    <div class="container text-wrap" id="activarInterfazDocencia" style="display:none">
                        <!-- Contenido para Interfaz de Docencia -->
                    </div>

                </div>
                <!-- Agrega más columnas y contenido según sea necesario -->
            </div>
        </div>
    </div>

    <div style="display: none;">
        <?php
        // Vamos a la raiz
        $url = "../../../";
        // Cargamos el pie
        require_once('../dom/pie.php');
        ?>
    </div>
</body>

</html>
