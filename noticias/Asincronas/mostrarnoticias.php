<?php
require_once('../../db.php');
$db = new industrialesDB();
$res = $db->getNoticiasPorFecha();

echo "<div class='container mt-5 mb-5'>
    <div class='row justify-content-center'>"; // Alinear el contenido al centro

foreach ($res as $r) {
    $texto_limpio = strip_tags($r['texto']);

    echo "
<div class='col-lg-4 col-md-6 col-12 mb-4'>
    <div class='news-card'>
        <div class='news-img-container' onclick=\"mostrarNoticia('$id')\">
            <img src='$foto' alt='$titulo'>
        </div>
        <div class='news-content'>
            <h2 class='news-title'>$titulo</h2>
            <p class='news-excerpt'>$texto_corto</p> <div class='mt-auto'>
                 <p class='news-date'><i class='bi bi-calendar3 me-2'></i>$fecha</p>
                 <button class='btn btn-outline-primary btn-sm rounded-pill w-100' onclick=\"mostrarNoticia('$id')\">
                     Leer más
                 </button>
            </div>
        </div>
    </div>
</div>";
}

echo "</div></div>";
?>