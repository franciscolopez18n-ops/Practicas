<?php
require_once('../../db.php');
$db = new industrialesDB();
$idMiembro = $_POST['id'];
$resultado = $db->mostrarMiembroPorGet($idMiembro);
$redsocial = $db->mostrarRedsocial($idMiembro);

foreach ($resultado as $r) {
    $rangomiembro = $db->getNombreRangoPorId($r['rango']);
    $fotoPath = "../../imagenes/miembros/" . $r["foto"];


    echo "
    <div class='detail-overlay'>
        <div class='container'> <div class='card border-0 rounded-4 overflow-hidden' style='max-width: 1000px; margin: auto;'>
                <div class='row g-0'>
                    <div class='col-md-5 d-flex align-items-center justify-content-center p-5' style='background: #f8f9fa;'>
                        <img src='$fotoPath' class='img-fluid rounded-4 shadow-sm' style='max-height: 400px; width: 100%; object-fit: cover; border: 5px solid white;'>
                    </div>
                    
                    <div class='col-md-7 p-lg-5 p-4 bg-white position-relative'>
                        <button onclick='cerrarDetalle()' class='btn btn-link text-muted position-absolute' style='top: 20px; right: 20px; text-decoration: none;'>
                            <i class='bi bi-x-lg' style='font-size: 1.5rem;'></i>
                        </button>
                        
                        <span class='badge rounded-pill px-3 py-2 mb-3' style='background-color: #003975;'>$rangomiembro</span>
                        <h1 class='fw-bold mb-4' style='color: #2c3e50; letter-spacing: -1px;'>{$r['nombre']} {$r['apellidos']}</h1>
                        
                        <div class='mb-4 text-muted' style='font-size: 1.05rem; line-height: 1.8; text-align: justify;'>
                            " . nl2br($r['informacion']) . "
                        </div>

                        <div class='contact-info mb-4'>";

    // --- Si hay email, lo demuestra ---
    if (!empty($r['email'])) {
        echo "      <div class='d-flex align-items-center mb-2'>
                        <i class='bi bi-envelope-at me-3 text-primary'></i>
                        <span>{$r['email']}</span>
                    </div>";
    }

    // --- Si hay telefono, lo demuestra ---
    if (!empty($r['telefono'])) {
        echo "      <div class='d-flex align-items-center'>
                        <i class='bi bi-telephone me-3 text-primary'></i>
                        <span>{$r['telefono']}</span>
                    </div>";
    }

    echo "              </div>";
    // --- Si hay redes sociales ---
    if (!empty($redsocial)) {
        echo "          <hr class='my-4 opacity-10'>
                        <h6 class='text-uppercase fw-bold small text-muted mb-3 tracking-wider'>Redes Sociales</h6>
                        <div class='d-flex gap-3'>";

        foreach ($redsocial as $p) {
            echo "          <a href='{$p['link_logo']}' target='_blank' class='social-icon-link'>
                                <img src='../../imagenes/redesSociales/{$p['logo']}' class='social-logo' style='width:30px;'>
                            </a>";
        }

        echo "          </div>";
    }

    echo "
                    </div>
                </div>
            </div>
        </div>
    </div>";
}
?>