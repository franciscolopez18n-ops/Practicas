<?php
require_once '../db.php';

class Noticias extends industrialesDB
{

    private $paginaActual;
    private $totalPaginas;
    private $nResultados;
    private $resultadosPorPagina;
    private $indice;
    private $error = false;

    function __construct($nPorPagina)
    {
        parent::__construct();

        $this->resultadosPorPagina = $nPorPagina;
        $this->indice = 0;
        $this->paginaActual = 1;
        $this->connect();
        $this->calcularPaginas();
    }

    function calcularPaginas()
    {

        $query = $this->pdo->query('SELECT COUNT(*) AS total FROM noticias');
        $this->nResultados = $query->fetch(PDO::FETCH_OBJ)->total;
        $this->totalPaginas = ceil($this->nResultados / $this->resultadosPorPagina);

        if (isset($_GET['pagina'])) {
            //Validar que la pagina sea un numero
            if (is_numeric($_GET['pagina'])) {
                //Validar que la pagina sea mayor o igual a 1 y menor e igual que totalPaginas
                if ($_GET['pagina'] >= 1 && $_GET['pagina'] <= $this->totalPaginas) {
                    $this->paginaActual = $_GET['pagina'];
                    $this->indice = ($this->paginaActual - 1) * ($this->resultadosPorPagina);
                } else {
                    echo "No existe esa página";
                    $this->error = true;
                }
            } else {
                echo "Error al mostrar la página";
                $this->error = true;
            }
        }
    }

    function mostrarPaginas()
    {
        echo '<nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a style="color:#11253a" class="btn btn-primary page-link" href="?pagina=1">Inicio</a></li>';

        if ($this->paginaActual > 1) {
            echo '<li class="page-item"><a style="color:#11253a" class="btn btn-secondary page-link" href="?pagina=' . ($this->paginaActual - 1) . '">Anterior</a></li>';
        }

        $inicio = max(1, $this->paginaActual - 2);
        $fin = min($this->totalPaginas, $inicio + 4);

        for ($i = $inicio; $i <= $fin; $i++) {
            $actual = ($i == $this->paginaActual) ? 'active' : '';
            echo '<li class=" page-item ' . $actual . '"><a class="btn btn-secondary page-link" style="color:#11253a" href="?pagina=' . $i . '">' . $i . '</a></li>';
        }

        if ($this->paginaActual < $this->totalPaginas) {
            echo '<li class="page-item"><a style="color:#11253a" class="btn btn-secondary page-link" href="?pagina=' . ($this->paginaActual + 1) . '">Siguiente</a></li>';
        }

        echo '<li class="page-item"><a style="color:#11253a" class="btn btn-secondary page-link" href="?pagina=' . $this->totalPaginas . '">Final</a></li>';
        echo '<li class="page-item disabled"><span class="page-link">Página ' . $this->paginaActual . ' de ' . $this->totalPaginas . '</span></li>';
        echo "</ul>
        </nav>";
    }


    public function renderNoticiaCard($r)
    {
        $titulo = htmlspecialchars($r['titulo']);
        $fecha = htmlspecialchars($r['fecha']);
        $foto = "../../imagenes/noticias/" . $r['foto'];
        $id = $r['id_noticia'];

        echo "
    <div class='col-lg-4 col-md-6 col-12 mb-4'>
        <div class='news-card'>
            <div class='news-img-container' onclick=\"mostrarNoticia('$id')\">
                <img src='$foto' alt='$titulo'>
            </div>
            <div class='news-content'>
                <p class='news-date'><i class='bi bi-calendar3 me-2'></i>$fecha</p>
                <h2 class='news-title'>$titulo</h2>
                <button class='btn btn-outline-primary btn-sm rounded-pill mt-2' onclick=\"mostrarNoticia('$id')\">
                    Leer más
                </button>
            </div>
        </div>
    </div>";
    }

    function mostrarNoticias()
    {
        if (!$this->error) {
            $query = $this->pdo->prepare('SELECT * FROM noticias ORDER BY fecha DESC LIMIT :pos, :n');
            $query->bindParam(':pos', $this->indice, PDO::PARAM_INT);
            $query->bindParam(':n', $this->resultadosPorPagina, PDO::PARAM_INT);
            $query->execute();

            echo "<div class='container mt-5 mb-5'>
                <div class='row justify-content-center'>";

            foreach ($query as $r) {
                $id = $r['id_noticia'];
                $titulo = htmlspecialchars($r['titulo']);
                $fecha = htmlspecialchars($r['fecha']);
                $foto = "../../imagenes/noticias/" . $r['foto'];


                //$texto_corto = mb_strimwidth(strip_tags($r['texto']), 0, 50, "...");


                echo "
                <div class='col-lg-4 col-md-6 col-12 mb-4'>
                    <div class='news-card'>
                        <div class='news-img-container' onclick=\"mostrarNoticia('$id')\">
                            <img src='$foto' alt='$titulo'>
                        </div>
                        <div class='news-content'>
                            <h2 class='news-title'>$titulo</h2>
                            <div class='mt-auto'>
                                <p class='news-date'>$fecha</p>
                                <button class='btn btn-outline-primary btn-sm rounded-pill mt-2 w-100' onclick=\"mostrarNoticia('$id')\">
                                    Leer más
                                </button>
                            </div>
                        </div>
                    </div>
                </div>";
            }
            echo "</div></div>";
        }
    }

}


