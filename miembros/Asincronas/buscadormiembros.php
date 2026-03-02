<?php
require_once('../../db.php');
$db = new industrialesDB();

$miembro = $_GET['idnombre'];
$res = $db->buscadorMiembros($miembro);

echo "<div class='row g-4 justify-content-center mx-0'>";

foreach ($res as $r) {
    $rangomiembro = $db->getNombreRangoPorId($r['rango']);
    $fotoPath = "../../imagenes/miembros/" . $r['foto'];

    echo "
    <div class='col-xl-3 col-lg-4 col-md-6 col-sm-12'> 
        <div class='member-card shadow-sm h-100 p-4' onclick=\"mostrarMiembro('{$r['id_miembro']}')\">
            <div class='member-img-wrapper mx-auto'>
                <img src='$fotoPath' class='member-img' onerror=\"this.src='../../imagenes/placeholder.jpg'\">
            </div>
            <div class='member-info text-center'>
                <h5 class='fw-bold'>{$r['nombre']} {$r['apellidos']}</h5>
                <p class='mb-0'>$rangomiembro</p>
            </div>
        </div>
    </div>";
}

echo "</div>";
?>