LA COOKIE ES: PHPSESSID
<?php    
        function marca_actual($nombrePagina, $paginaActual) {
            $resultado = '';
            $cerrar_sesion = 'style="display:none;"';

            if ($nombrePagina === $paginaActual) {
                $resultado = 'active ';
            }

            if ($paginaActual === "Loguin") {
                $resultado = 'style="display:none;"';
                $cerrar_sesion = '';
            }

            // Si es la pagina de Administrador debe de ocultar el boton de iniciar sesion y mostrar el de cerrar
            if ($paginaActual === "Administrador") {
                $resultado = 'style="display:none;"';
                $cerrar_sesion = '';
            }

            return $resultado;
        }

  ?>

  Y LUEGO AÑADI AL FINAL:
  <!-- Solo se muestra el boton de cerrar sesion -->
                    <div <?php echo $cerrar_sesion; ?>>
                        <li class="nav-item ms-lg-3" >
                            <a href="../login/login.php" class="btn btn-outline-light btn-sm d-flex align-items-center px-3">
                                <img  src="../../imagenes/dom/candado.png" alt="Acceso" style="height:18px;" class="me-2">
                                Cerrar sesión
                            </a>
                        </li>
                    </div>
