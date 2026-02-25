<?php

require_once('../db.php');
include_once './pagNoticias.php';
$db = new industrialesDB();
$noticias = new Noticias(3);
?>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>UPM</title>
  <link rel="icon" href="../../../imagenes/lododept.jpg">
  <link rel="stylesheet" href="../../css/styles.css">
  <link rel="stylesheet" href="../../css/estilo.css?v=<?php echo time(); ?>">
  <script src="../../../node_modules/bootstrap/dist/js/bootstrap.bundle.js"></script>
  <script src="../../js/funciones.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" rel="stylesheet">

  <script>

    function mostrarNoticia(id_noticia) {
      let formData = new FormData();
      formData.append("id", id_noticia);

      fetch("Asincronas/mostrarNoticiaPorId.php", {
        method: "POST",
        body: formData
      })
        .then(response => response.text())
        .then(data => {

          let detailOverlay = document.createElement("div");
          detailOverlay.id = "detail-overlay";
          detailOverlay.innerHTML = data;

          document.body.appendChild(detailOverlay);

          let paginacion = document.getElementById("paginas");
          if (paginacion) paginacion.style.display = "none";


          document.body.style.overflow = "hidden";
        });
    }

    function cerrarNoticia() {
      let detailOverlay = document.getElementById("detail-overlay");
      if (detailOverlay) {
        detailOverlay.remove();
      }

      let paginacion = document.getElementById("paginas");
      if (paginacion) {
        paginacion.style.display = "flex";
      }

      document.body.style.overflow = "auto";

    }


  </script>
</head>
<?php
require_once('../dom/cabecera.php');
?>

<body onload=activarNoticias()>

  <div class="container">
    <div id="noticias" class="my-2">
      <?php $noticias->mostrarNoticias(); ?>
    </div>
    <div class="mb-5" id="paginas" style="display: flex; justify-content: center;">
      <?php $noticias->mostrarPaginas(); ?>
    </div>
  </div>


</body>
<?php
require_once('../dom/pie.php');
?>

</html>