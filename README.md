# Practicas
$sql = "SELECT m.*, r.nombre_rango 
            FROM miembro m, Rango r 
            WHERE 
				m.rango = r.id_rango AND (
                UPPER(REPLACE(REPLACE(CONCAT(m.nombre, ' ', m.apellidos), 
							'&', ''), 
                    		'acute;', '')) LIKE :text OR 
				
				UPPER(r.nombre_rango) LIKE :text)";
