<!-- CARGAMOS LA RUTA -->


<!DOCTYPE html>
<html lang="es">
    <div id="cabeceragenerica" style="display:none">
        <?php
        require_once ('./src/php/dom/cabecera.php');
        ?>
    </div>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>UDII - Escuela Técnica Superior de Ingenieros Industriales (UPM)</title>
    <link rel="icon" href="./src/imagenes/dom/logodept.png">
    <script src="./src/js/funciones.js"></script>
    <link rel="stylesheet" href="./src/css/styles.css">
    <!-- Libreria de iconos -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <!-- Estructura de la pagina -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    
    <style>
        /* Estilos para replicar exactamente la imagen de Destacados */
        .card-destacados {
            border: 1px solid #ddd;
            border-radius: 8px;
            transition: transform 0.3s ease;
        }
        .card-destacados:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
        }
        .icon-destacado {
            color: #007bff; /* El azul de los iconos */
            font-size: 3rem;
            margin-bottom: 1.5rem;
        }

        /* ESTO ES PARA LOS BOTONES DE LA SECCION DE DESTACADOS */
        .btn-blue-upm {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            padding: 8px 25px;
            font-weight: 500;
            border: none;
        }
        .btn-blue-upm:hover {
            background-color: #0056b3;
            color: white;
        }
        .destacados-title {
            font-size: 2rem;
            color: #333;
            margin-bottom: 2rem;
        }

        /* ESTO ES PARA EL PRIMER CONTENEDOR */
        .sub-bloque {
            /* PONEMOS UN DEGRADADO PARA QUE EL TEXSTO BLANCO DESTAQUE */
            background: linear-gradient(rgba(32, 111, 221, 0.6), rgba(3, 0, 50, 0.4)), 
                        url('./src/imagenes/dom/header.jpg');
            /* AJUSTE DE IMAGEN PARA QUE OCUPE TODO EL CONTENEDOR */
            background-size: cover;       
            background-position: center;  
            
            /* CENTRADO DE TEXTO */
            display: flex; /* Activamos la FLEXBOX para poder usar propiedades en los hijos  */
            align-items: center; /* Alinea los elementos hijos de forma vertical */
            justify-content: center; /* Alinea los elementos de forma horizontal */
            color: white;
            text-align: center; /* Alineamos en el centro el contenido */
        }

        .foto-uni {
            height:auto;
            width: auto;
            justify-content: center; /* Centra horizontalmente */
            align-items: center;     /* Centra verticalmente */
            
        }
    
    </style>
</head>

<body onload="activarIndex();">

    <?php require_once ('./src/php/db.php'); $db = new industrialesDB(); ?>

    <!-- BARRA DE NAVEGACION -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark sticky-top shadow-sm">
        <div class="container">
            <!-- El logo tambien sirve para regresar a la pagina principal -->
            <a class="navbar-brand d-flex align-items-center" href="index.php">
                <img src="./src/imagenes/dom/logodept.png" alt="Logo UDII" height="40" class="me-2">
                <span class="fw-bold">UDII - UPM</span>
            </a>
            <!-- Esto pone las 3 rayitas en el movil -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto text-uppercase small fw-bold align-items-center">
                    <li class="nav-item"><a class="nav-link active" href="index.php">Inicio</a></li>
                    <li class="nav-item"><a class="nav-link" href="./src/php/lineaInvestigacion/researchLines.php">Investigación</a></li>
                    <li class="nav-item"><a class="nav-link" href="./src/php/miembros/team.php">Equipo</a></li>
                    <li class="nav-item"><a class="nav-link" href="./src/php/proyectos/projects.php">Proyectos</a></li>
                    <li class="nav-item"><a class="nav-link" href="./src/php/publicaciones/publications.php">Publicaciones</a></li>
                    <li class="nav-item"><a class="nav-link" href="./src/php/noticias/noticias.php">Noticias</a></li>
                    <li class="nav-item"><a class="nav-link" href="./src/php/docencia/docencia.php">Docencia</a></li>
                    <li class="nav-item"><a class="nav-link" href="#pie" >Contacto</a></li>
                    
                    <li class="nav-item ms-lg-3">
                        <a href="./src/login/login.php" class="btn btn-outline-light btn-sm d-flex align-items-center px-3">
                            <img src="./src/imagenes/dom/candado.png" alt="Acceso" style="height:18px;" class="me-2">
                            Iniciar sesión
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- BLOQUE NOMBRE UNIVERSIDAD -->
    <div class="sub-bloque"> 
        <div class="container text-center">
            <br><br>
            <!-- Usamos las clases utilitarias que trae Bootstrap -->
            <h1 class="display-4 fw-bold">Unidad Docente de Informatica Industrial</h1> <!-- Hacemos que la letra sea gigante y mas gruesa para que destaque -->
            <p class="lead fs-3">ETSII - Universidad Politécnica de Madrid</p>
            
            <p class=" fs-5 mx-auto shadow-text" style="max-width: 700px;">
                Liderando la investigación y el desarrollo tecnológico para la industria del futuro.
            </p>
            
            <div >
                <!-- ATAJO PARA LA SECCION DE DESTACADOS -->
                <a href="#destacados" class="btn btn-lg btn-warning px-5 py-3 fw-bold shadow-lg hover-scale">
                    Mas sobre nosotros
                </a>
            </div>
            <br><br>
        </div>
    </div>

    <main>
        <!-- SECCION PARA LA BIENVENIDA (con py-5 agregamos espacio superior e inferior) -->
        <section class="py-5 bg-white">
            <div class="container">
                <div class="row align-items-center g-5">
                    <!-- Contenedor del texto -->
                    <div class="col-lg-6">
                        <div class="pe-lg-4">
                            <b><h2>Bienvenidos a la UDII</h2></b>
                            <p class="lead text-dark fw-normal mb-4">
                                Formamos parte del Departamento de Ingeniería de Organización, Administración de Empresas y 
                                Estadística. La <strong>Escuela Técnica Superior de Ingenieros Industriales (ETSII)</strong> 
                                es una institución de referencia situada en el emblemático Palacio de las Artes y la Industria 
                                de Madrid. Como parte de la <strong>Universidad Politécnica de Madrid</strong>, lidera la formación 
                                en ingeniería industrial, química y de organización, impulsando el desarrollo tecnológico a través 
                                de sus programas de grado y posgrado.
                                
                            </p>
                        </div>
                    </div>
                    <!-- Contenedor de la imagen -->
                    <div class="col-lg-6">
                        <img src="./src/imagenes/logo.jpg" style="height: 250px;">
                    </div>
                </div>
            </div>
        </section>

        <!-- SECCION HISTORIA -->
        <section style="background-color: #ffffff;">
            <div class="container">
                <div class="row align-items-center ">
                    <b><h2>Nuestros comienzos</h2>
                        <p class="lead text-dark fw-normal mb-4">
                            La Universidad Politécnica de Madrid (UPM) se fundó en 1971 con la integración de las Escuelas 
                            Técnicas Superiores que hasta entonces constituían el Instituto Politécnico Superior. Al año 
                            siguiente, se sumaron las Escuelas Universitarias. Los primeros estudios de la UPM en iniciar su 
                            andadura docente específica en el ámbito civil fueron los de <strong>Arquitectura</strong> y, en 
                            el caso de las ingenierías, fue la <strong>Escuela Técnica Superior de Ingenieros Navales</strong>.
                        </p>
                        <br>
                    <div class="text-center">
                        <img src="./src/imagenes/foto-uni.jpg" class=" shadow-sm foto-uni">
                    </div>
                </div>
            </div>
        </section>

        <!-- SECCION DE DESTACADOS CON ICONOS -->
        <section class="py-5" id="destacados">
            <div class="container text-center">
                <br><h2 class="destacados-title">Más sobre nosotros</h2>
                <div class="row g-4">

                    <!-- EQUIPO -->
                    <div class="col-md-4">
                        <div class="card h-100 p-4 shadow-sm">
                            <div class="card-body d-flex flex-column align-items-center">
                                <i class="fa-solid fa-users icon-destacado"></i> <!-- LLAMAMOS AL ICONO -->
                                <h4 class="card-title fw-normal">Equipo</h4>
                                <p class="card-text text-muted small px-3">Conoce a nuestro equipo de investigadores y docentes.</p>
                                <div class="mt-auto">
                                    <a href="./src/php/miembros/team.php" class="btn btn-blue-upm">Ver más</a>
                                </div>
                            </div>
                        </div>
                    </div>  
    

                    <!-- INVESTIGACION -->
                    <div class="col-md-4">
                        <div class="card h-100 p-4 shadow-sm">
                            <div class="card-body d-flex flex-column align-items-center">
                                <i class="fa-solid fa-flask icon-destacado"></i>
                                <h4 class="card-title fw-normal">Investigación</h4>
                                <p class="card-text text-muted small px-3">Explora nuestras líneas de investigación innovadoras.</p>
                                <div class="mt-auto">
                                    <a href="./src/php/lineaInvestigacion/researchLines.php" class="btn btn-blue-upm">Ver más</a>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- DOCENCIA -->
                    <div class="col-md-4">
                        <div class="card h-100 p-4 shadow-sm">
                            <div class="card-body d-flex flex-column align-items-center">
                                <i class="fa-solid fa-graduation-cap icon-destacado"></i>
                                <h4 class="card-title fw-normal">Docencia</h4>
                                <p class="card-text text-muted small px-3">Descubre nuestros programas educativos.</p>
                                <div class="mt-auto">
                                    <a href="./src/php/docencia/docencia.php" class="btn btn-blue-upm">Ver más</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <?php 
        $url = "./"; // Estás en la raíz, los recursos están en ./src/...
        include "src/php/dom/pie.php"; 
    ?>
    <?php require_once ('./src/php/dom/pie.php'); ?>

</body>
</html>
<!-- 
CONEXION CON LA BASE DE DATOS DESDE CMD
    1. cd C:\XamppMarina\mysql\bin
    2. mysql -u root -p
    3. Enter password: ENTER
-->