<?php
require_once('../../db.php');
$db = new industrialesDB();
$res = $db->getMiembros();
echo "<div class='members-grid'>";
foreach ($res as $r) {
    $rangomiembro = $db->getNombreRangoPorId($r['rango']);
    $fotoPath = "../../imagenes/miembros/" . $r['foto'];
    echo "
    <div class='member-item'>
        <div class='member-card shadow-sm p-4' onclick=\"mostrarMiembro('{$r['id_miembro']}')\" style='cursor:pointer;'>
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