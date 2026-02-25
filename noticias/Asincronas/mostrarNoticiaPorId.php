<?php
require_once('../../db.php');
$db = new industrialesDB();
$idNoticia = $_POST['id'];
$res = $db->MostrarNoticiaPorID($idNoticia);

foreach ($res as $r) {
    $titulo = htmlspecialchars($r['titulo']);
    $fecha = htmlspecialchars($r['fecha']);
    $texto = nl2br(htmlspecialchars($r['texto']));
    $foto = "../../imagenes/noticias/" . trim($r['foto']);

    echo "
    <style>

        @keyframes fadeInUp {
                from { opacity: 0; transform: translateY(30px); }
                to { opacity: 1; transform: translateY(0); }
        }

        .noticia-wrapper {
        position: fixed; 
        top: 0; 
        left: 0; 
        width: 100%; 
        height: 100vh;
        background: #f4f7f6;
        z-index: 100000; 
        overflow-y: auto; 
        padding: 60px 0; 
}

        .content-card { 
            max-width: 1200px; margin: 0 auto; background: white;
            padding: 50px; border-radius: 24px;
            box-shadow: 0 20px 50px rgba(0,0,0,0.1);
            animation: fadeInUp 0.5s ease-out;
        }

        .text-detail { 
            font-size: 1.1rem; line-height: 1.9; color: #444; 
            font-family: 'Segoe UI', Roboto, Helvetica, Arial, sans-serif;
        }

        .news-header-meta {
            font-size: 0.9rem;
            text-transform: uppercase;
            letter-spacing: 1px;
            color: #007bff;
            font-weight: bold;
        }

        .btn-volver {
            border-radius: 50px;
            padding: 8px 25px;
            font-weight: 600;
            transition: all 0.3s;
        }
    </style>

    <div class='noticia-wrapper'>
        <div class='content-card'>
            <button onclick='cerrarNoticia()' class='btn btn-outline-secondary btn-volver mb-5'>
                <i class='bi bi-arrow-left me-2'></i> Volver al listado
            </button>

            <div class='row g-5'>
                <div class='col-md-5'>
                    <img src='$foto' class='img-fluid rounded-4 shadow' 
                         style='width:100%; object-fit: cover; min-height: 300px;'
                         onerror=\"this.src='https://via.placeholder.com/600x400?text=Error+en+imagen'\">
                </div>
                <div class='col-md-7'>
                    <h1 class='fw-extrabold mb-3' style='color: #1a1a1a; font-size: 2.5rem;'>$titulo</h1>
                    <p class='text-muted mb-4'>
                        <i class='bi bi-calendar3 me-2'></i> Publicado el $fecha
                    </p>
                    <hr class='mb-4' style='opacity: 0.1;'>
                    <div class='text-detail'>
                        $texto
                    </div>
                </div>
            </div>
        </div>
    </div>";
}