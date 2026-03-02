<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Miembros</title>
    <link rel="icon" href="../imagenes/lododept.jpg">
    <link rel="stylesheet" href="../../css/styles.css">
    <link rel="stylesheet" href="../../css/estilo.css">
    <script src="../../../node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <script src="../../js/funciones.js"></script>
    <?php
    require_once('../db.php');
    require_once('../dom/cabecera.php');
    $db = new industrialesDB();
    ?>
</head>

<body onload="mostrarMiembros();activarTeam();">
    <div class="container py-5">
        <div class="row justify-content-center text-center">
            <div class="col-lg-8">
                <h2 class="fw-bold mb-4">Nuestro Equipo</h2>

                <div class="btn-group mb-4 shadow-sm" role="group">
                    <button class="btn btn-outline-primary" onclick="OrdenarMiembrosMayorMenor(4)">
                        <i class="bi bi-sort-up"></i> Rol Asc
                    </button>
                    <button class="btn btn-outline-primary" onclick="OrdenarMiembrosMayorMenor(5)">
                        <i class="bi bi-sort-down"></i> Rol Des
                    </button>
                </div>

                <div class="search-container mx-auto mt-4 mb-5" style="max-width: 500px;">
                    <div class="position-relative">
                        <span class="position-absolute top-50 start-0 translate-middle-y ms-3 text-primary">
                            <i class="bi bi-search"></i>
                        </span>
                        <input type="text" id="nombremiembro"
                            class="form-control border-2 ps-5 rounded-pill shadow-none"
                            style="border-color: #eee; transition: all 0.3s;"
                            onfocus="this.style.borderColor='#0d6efd'; this.style.boxShadow='0 0 0 0.25rem rgba(13,110,253,.1)'"
                            onblur="this.style.borderColor='#eee'; this.style.boxShadow='none'"
                            oninput="aparecermiembros()" placeholder="Buscar por nombre o cargo...">
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="miembros" style="min-height: 400px;"></div>


    <div id="detalle-miembro-container"></div>

    <!-- Gestionamos las rutas relativas dinámicas -->
    <?php
    // Vamos a la raiz
    $url = "../../../";
    // Cargamos el pie
    require_once('../dom/pie.php');
    ?>
</body>


</html>