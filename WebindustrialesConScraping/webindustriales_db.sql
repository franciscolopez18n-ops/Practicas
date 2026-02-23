-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 138.100.71.50
-- Tiempo de generación: 25-09-2024 a las 09:01:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `webindustriales_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asignatura`
--

CREATE TABLE `asignatura` (
  `id_asignatura` int(11) NOT NULL,
  `nombre_asignatura` varchar(255) NOT NULL,
  `temas_asignatura` text NOT NULL,
  `codigo_asignatura` varchar(255) NOT NULL,
  `id_grado` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asignatura`
--

INSERT INTO `asignatura` (`id_asignatura`, `nombre_asignatura`, `temas_asignatura`, `codigo_asignatura`, `id_grado`) VALUES
(10, 'Programación en Android', '<p><a href=\"https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05TI_55000435_1S_2023-24.pdf\">https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05TI_55000435_1S_2023-24.pdf</a></p>', '55000435', 5),
(11, 'Programación en Python', '<p><a href=\"https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05TI_55002015_1S_2023-24.pdf\">https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05TI_55002015_1S_2023-24.pdf</a></p>', '55002015', 5),
(13, 'Programacion En Android', '<p><a href=\"https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05IQ_55000435_1S_2023-24.pdf\">https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05IQ_55000435_1S_2023-24.pdf</a></p>', '55000435', 6),
(14, 'Fundamentos de programació', '<p><a href=\"https://www.upm.es/comun_gauss/publico/guias/2023-24/2S/GA_05TI_55000007_2S_2023-24.pdf\">https://www.upm.es/comun_gauss/publico/guias/2023-24/2S/GA_05TI_55000007_2S_2023-24.pdf</a></p>', '55000007', 5),
(15, 'Fundamentos de programación', '<p><a href=\"https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05IQ_55001007_1S_2023-24.pdf\">https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05IQ_55001007_1S_2023-24.pdf</a></p>', '55001007 ', 6),
(16, 'Fundamentos de programación', '<p><a href=\" https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05IR_55000630_1S_2023-24.pdf\">&nbsp;https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05IR_55000630_1S_2023-24.pdf</a></p>', '55000630 ', 7),
(17, 'Tecnologías de la Información', '<p><a href=\"https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05IR_55000637_1S_2023-24.pdf\">https://www.upm.es/comun_gauss/publico/guias/2023-24/1S/GA_05IR_55000637_1S_2023-24.pdf</a></p>', '55000637', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grado`
--

CREATE TABLE `grado` (
  `id_grado` int(11) NOT NULL,
  `foto_grado` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `nombre_grado` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `grado`
--

INSERT INTO `grado` (`id_grado`, `foto_grado`, `descripcion`, `nombre_grado`) VALUES
(5, '/grado-tecnologias-industriales.jpg', '<p>La Ingeniería Industrial es la más generalista de las ingenierías. Su base multidisciplinar permite a estos profesionales adaptarse a cualquier sector empresarial encontrando la solución a problemas que se plantean tanto de orden tecnológico, como económico o de gestión.</p><p>Tras una etapa inicial de formación transversal, con objeto de considerar el perfil generalista, se accede a los cursos de especialización, donde se podrá optar por formación específica en los sectores de la Energía, la Mecánica, la Electrónica, la Automática (Robótica), la Ingeniería Eléctrica, la Fabricación, los Sistemas y Estructuras Inteligentes, la Química Industrial y el Medioambiente, la Ingeniería de Organización, los Modelos Matemáticos Industriales y los Materiales.</p><p>Este Grado es la vía de acceso preferente al Máster en Ingeniería Industrial, cuyos egresados adquieren de forma exclusiva la condición de Ingeniero Industrial, y tiene la acreditación ABET (Accreditation Board for Engineering and Technology) y el sello de calidad EUR-ACE.</p><p>Nuestra Escuela es referencia nacional e internacional en la formación de Ingenieros Industriales, por las capacidades de innovación y liderazgo demostradas por nuestros egresados a lo largo de nuestros 170 años de historia.</p>', 'Grado en Ingeniería en Tecnologías Industriales'),
(6, '/descarga.jpg', '<p>La Ingeniería Química tradicionalmente se ha definido como la rama de la Ingeniería que se dedica al estudio, síntesis, desarrollo, diseño, operación y optimización de todos aquellos procesos industriales que producen cambios físicos, químicos y/o bioquímicos en los materiales. Hoy día, la Ingeniería aborda problemas como el medio ambiente y la mejora de la sostenibilidad, la biotecnología y desarrollo de nuevos fármacos, la creación de nuevos materiales o el desarrollo y fabricación de dispositivos electrónicos. Esta influencia en numerosas áreas hace que el Ingeniero Químico sea demandado en muchos tipos de industria además de las tradicionales de procesos, petróleo y energía. En España la industria química supone más de 13% del PIB industrial y acumula el 25% de las inversiones en I+D.</p><p>El Grado en Ingeniería Química forma en los conceptos fundamentales que se necesitan para el desempeño de la profesión empezando por las ciencias básicas como matemáticas, física y química para posteriormente entrar en el núcleo con el estudio de balances de materia y energía, reactores operaciones de separación, diseño y control de procesos entre otras. Todo complementado con asignaturas prácticas experimentales que son una parte importante dentro de la formación integral del futuro Ingeniero Químico.</p><p>Además, es la titulación idónea para acceder de manera directa al Master Universitario en Ingeniería Química.</p><p>La titulación de Grado en Ingeniería Química de la Universidad Politécnica de Madrid está acreditada con el sello de calidad EUR-ACE®</p>', 'Grado en Ingeniería Química'),
(7, '/descarga (1).jpg', '<p>Los estudios de Ingeniería de Organización tienen una orientación que combina las disciplinas científico-técnicas de la ingeniería de proyecto tradicional con disciplinas propias de la gestión empresarial en el sentido más amplio.</p><p>Los estudios correspondientes están concebidos para familiarizar a los futuros ingenieros, por una parte, con las interacciones entre el subsistema técnico (equipos, instalaciones, materiales, energía), el subsistema social (las personas en sus diferentes roles) y el subsistema de información (hardware, software, comunicaciones) que caracterizan a las complejas organizaciones de nuestro tiempo. Por otra parte, con la necesidad de adecuar las actividades productivas de la organización con los requerimientos del mercado y los condicionamientos financieros.</p><p>Los ingenieros de organización desarrollan preferentemente su actividad en organizaciones en las que la tecnología representa un factor clave, tanto en el sector industrial, como en el de los servicios. Su formación dual, como técnico y como gestor, le permite tener una visión global de la empresa y su entorno. También es muy frecuente que actúen como consultores o asesores para dichas organizaciones.</p>', 'Grado en Ingeniería de Organización'),
(8, '/descarga (2).jpg', '<p>Los dos primeros años son comunes y se imparten en la E.T.S.I. de Minas. Tras ellos se ofrecen dos itinerarios o especialidades:</p><ul><li>Gestión y Aprovechamiento Energético, impartido en la E.T.S.I. de Minas</li><li>Tecnologías Energéticas, impartido en la E.T.S.I. Industriales.</li></ul>', 'Grado en Ingeniería de la Energía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lineainvestigacion`
--

CREATE TABLE `lineainvestigacion` (
  `id_livestigacion` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `texto` text NOT NULL,
  `logo` varchar(100) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miembro`
--

CREATE TABLE `miembro` (
  `id_miembro` int(11) NOT NULL,
  `informacion` text NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellidos` varchar(100) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `telefono` varchar(500) NOT NULL,
  `email` varchar(500) NOT NULL,
  `rango` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `miembro`
--

INSERT INTO `miembro` (`id_miembro`, `informacion`, `nombre`, `apellidos`, `foto`, `telefono`, `email`, `rango`) VALUES
(29, '<p>Javier Rodríguez Vidal received his B.Sc. degree in Computer Science (2010) and an M.Sc. degree in Computer Science Research (2011) from Universidad Complutense de Madrid (UCM), along with a Ph.D. in Intelligent Systems (2019) from Universidad Nacional de Educación a Distancia (UNED).&nbsp;</p><p>From 2011-2015 he worked as a Junior Programmer and Solutions Assistant at Everis S.L.U.&nbsp;</p><p>Transitioning to Academia, he achieved a pre-doctoral contract (FPI) to complete his Ph.D. Also, he worked as a post-doctoral researcher in the MEDAL group at the Center for Biomedical Tecnhology of the Universidad Politécnica de Madrid (UPM) from 2020 to 2021. Afterwards, he attained an Assistant Professor position at the Escuela Técnica Superior de Ingenieros Industriales of the UPM, where he is currently.</p><p>His research interests include Online Reputation Management, Automatic Summarization, Information Retrieval, Machine Learning, BioNLP and more recently, Additive Manufacturing. He has also been a visiting researcher at University of Amsterdam (Netherlands) for 3 months. He has 8 publications in these areas in international refereed journals and 3 conference proceedings.&nbsp;</p>', 'Javier', 'Rodr&iacute;guez Vidal', '/fotoJRV.png', '', '', 4),
(30, '<p>ASCENSIÓN LÓPEZ VARGAS es Profesora Ayudante Doctora en la Escuela Técnica Superior de Ingenieros Industriales (ETSII) de la Universidad Politécnica de Madrid. Obtuvo los títulos de Ingeniería Técnica de Telecomunicaciones, Máster Oficial en Tecnologías de la Información y las Comunicaciones y Máster Oficial en Investigación Aeroespacial con la calificación de ‘Notable’ por la Universidad de Alcalá en 2010, 2012 y 2015, respectivamente. En 2019, obtuvo el título de Doctora en Energías Renovables (<i>cum laude</i> con mención internacional) por la Universidad de Jaén. Ese mismo año, realizó una estancia de investigación de 5 meses de duración en el Laboratorio de Ingeniería Sostenible <i>Quadracci </i>de la Universidad de Columbia, en Nueva York, EE. UU. (nº3 en el ranking de universidades en 2019).  </p><p>Su carrera profesional comenzó en 2011, cuando fue seleccionada para formar parte del programa internacional ESAC Trainee Project de la Agencia Espacial Europea en el área de tratamiento de datos. En 2011-2015 trabajó como ingeniera de telecomunicaciones en el sector privado, participando en varios proyectos tanto nacionales como internacionales formando parte de APTICA, Nokia Siemens Networks y Roche Farma Informatics. Desde 2015, Ascensión trabajó como investigadora en IMDEA Agua y Universidad Carlos III de Madrid durante sus años pre y posdoctorales, respectivamente. </p><p>Sus principales intereses de investigación se centran en la aplicación del IoT y la IA en el contexto del desarrollo sostenible. Ascensión (h9, i10-9), ha publicado 10 artículos de alto impacto (Q1/Q2) en los últimos 5 años, 8 de primera autora. Ha participado en 2 proyectos de investigación internacionales, 4 proyectos de convocatorias competitivas y 2 convenios con entidades públicas. Ha tutorizado más de 10 trabajos de investigación de estudiantes (TFG/TFM) y ha impartido clase en varias titulaciones técnicas de Grado y Máster, en castellano y en inglés. Ha participado en actividades de divulgación científica de su área de investigación y ha sido invitada como ponente en la Universidad Autónoma Benito Juárez de Oaxaca (México, 2017) y en la Universidad Americana (Nicaragua, 2023). Tiene 5 comunicaciones en conferencias, 4 de ellas en congresos internacionales (WCPEC. Hawáii, EE. UU.). Ascensión es evaluadora de proyectos para la Agencia Estatal de Investigación (AEI), ha formado parte del clúster de Sostenibilidad en Inteligencia Artificial de la Comunidad de Madrid (2023) y ha participado en tribunales de TGFs, TFMs y tesis doctorales. Entre otros méritos, cabe destacar que en 2022 obtuvo el primer premio en el ‘Concurso de Iniciativas Vinculación Sociedad-UC3M’ del Consejo Social de la Universidad Carlos III de Madrid</p>', 'Ascensi&oacute;n', 'L&oacute;pez Vargas', '/FotoAsu2.png', '', '', 4),
(31, '<p>Doctor Ingeniero Industrial por la Universidad Politécnica de Madrid (España) Profesor Titular de Universidad del Departamento de Automática, Ingeniería Eléctrica y Electrónica e Informática Industrial de la UPM (España) Área: Ciencias de la Computación e Inteligencia Artificial.</p><p>Publicaciones en Archivo Digital UPM (https://oa.upm.es/view/creators/Garc=EDa_Beltr=E1n=3A=C1ngel=3A=3A.html). Su labor docente se ha centrado en la impartición de más de veinte asignaturas del área de Ciencias de la Computación e Inteligencia Artificial (lenguajes de programación, sistemas informáticos, simulación y control…) dentro de las diferentes titulaciones oficiales ofrecidas en la ETSI Industriales (grado, máster y doctorado) y en la dirección de más de 50 trabajos de PFC, TFG o TFM. También ha colaborado con el GATE-UPM en la impartición de asignaturas a distancia mediante videoconferencia. Ha publicado varios cursos en la plataforma OpenCourseWare de la UPM y participado como profesor tutor de alumnos mentores dentro del programa de Gestión de equipos humanos, formación de alumnos mentores de la ETSII-UPM y del Proyecto de Becas de Aprovechamiento Excelente de la CAM. Ha participado como director y/o investigador en numerosos proyectos de I+D nacionales e internacionales en diversas áreas de interés de la Ingeniería Industrial. Codirige el equipo de diseño, desarrollo, validación, puesta en marcha, implantación y diseminación de la plataforma AulaWeb desde su inicio en 1999 y trabaja activamente en el Centro Láser de la UPM como investigador y en el grupo de IE Representación y Evaluación del Aprendizaje de la UPM como director. Es autor de más de un centenar de publicaciones de libros, artículos en revistas y ponencias y comunicaciones en congresos nacionales e internacionales y ha impartido más de 40 cursos sobre innovación educativa, metodología y herramientas multimedia. También ha organizado o participado como miembro del comité organizador en varios congresos de educación universitaria y de tecnologías en la educación e innovación educativa universitaria. A lo largo de su carrera profesional ha recibido varios premios por su labor docente e investigadora como, por ejemplo, el Premio Extraordinario de Doctorado de la UPM, el premio UPM a la Excelencia docente en 2014, el Premio Grupo Endesa para la Investigación científica sobre aplicaciones industriales de la electricidad en los procesos industriales en 1998, el Primer Premio Nuevas Aplicaciones para Internet de la Cátedra Telefónica en la UPM para Internet de Nueva Generación en 2002, el Premio José Morillo y Farfán del la Fundación para el Fomento de la Innovación Industrial en reconocimiento a la labor bibliográfica en materia de la Ingeniería Industrial en 2007 y dos Premios a la Innovación Educativa al profesorado de la UPM (en 1998 y 2007).</p>', '&Aacute;ngel', 'Garc&iacute;a Beltr&aacute;n', '/20190501Angel05.jpg', '', '', 2),
(32, '<p>Estudiante del grado de Ingeniería en Tecnologías Industriales de la Universidad Politécnica de Madrid, especializada en automática y electrónica. Actualmente se encuentra en la fase final de su grado y está trabajando en su Trabajo de Fin de<br>Grado (TFG). </p><p>Su proyecto de TFG consiste en evaluar la eficiencia de las<br>inteligencias artificiales generativas en la creación de código fuente,<br>y en cómo puede influir en la docencia de la asignatura Fundamentos de<br>Programación.</p>', 'Laura', 'de Le&oacute;n Torres', '/20240523_122244~3.jpg', '', '', 29),
(33, '<p>Es desde 1993 Oficial de Laboratorio en la Unidad Docente de Informática Industrial de la Escuela Técnica Superior de Ingenieros Industriales de la Universidad Politécnica de Madrid. Actualmente, desde mayo de 2022, es miembro del equipo directivo de dicha Escuela, como Delegado del Director para Artes gráficas e Imagen. Es ilustrador, diseñador gráfico y director de arte por el CDC (Centro de Diseño y Comunicación, dependiente del CEV Centro Estudios del Vídeo). Ha realizado estudios de aerografía y especialización de retrato con artistas de renombre mundial como Ramón González Teja, Dru Blair y Marissa Oosterlee. Comienza su carrera profesional en 1986 con el desarrollo de videojuegos para computadoras de 8bits, formando parte de empresas como Dinamic, Topo Soft o DDM, y colaborando en proyectos con Indescomp. De 1989 a 1992 desarrolla diseño gráfico para Phillips Informática, Caja Madrid, Caja España, Caja Alicante, Banesto, Infoservicios, Banco Popular, TSAI (Telefónica Sistemas avanzados de Información), COSAI y TCS (Tecnología Consulting y Servicios) entre otros. El año 1993 realiza el grafismo de las etapas contrarreloj de la vuelta ciclista a España, así como el diseño del control de cámara para partidos de golf, así como el diseño de carátulas televisivas de partidos de baloncesto, combates de boxeo y las variaciones según deportes de la mascota de las Olimpiadas de la Commonwealth celeradas ese año en Canadá. Además realiza trabajos de render y de efectos especiales para una serie de dibujos animados en la empresa Alfonso Productions. Entre 1994 y 2002 colabora en desarrollo de multimedia y realiza diseño gráfico para el grupo IBEROFÓN, y para la empresa URALITA. Entre 1999 y 2001 realiza el diseño gráfico de varios multimedia para la empresa Forimagen. En 2002 realiza el diseño de una tienda de libros online para el Instituto Nacional de Administraciones Públicas a través de la empresa Reycom. Diseño gráfico de una aplicación multimedia para la empresa HIARES en un proyecto de dicha empresa con la Unidad Docente de Informática Industrial de la ETSII. Colaborador en 4 revistas del grupo Prensa Técnica, realizando artículos mensuales sobre dibujo por ordenador de 1994 a 2000. Colaborador-Profesor de 1998 a 2012 para el Instituto de Ciencias de la Educación, en la Escuela Técnica Superior de Ingenieros de Caminos, impartiendo cursos de retoque y tratamiento digital de imágenes. En la Universidad Politécnica de Madrid, pertenece al Grupo de Investigación Ciencias de la Computación en la Educación y en la Representación del Conocimiento. Participación en Proyectos de I+D financiados en Convocatorias públicas. (nacionales y/o internacionales): ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AulaWeb: Un Sistema de Seguimiento de Asignaturas ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; WEBTUTOR ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; AulaWeb 2002 ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Módulo de grupos de trabajo colaborativo en la plataforma AulaWeb ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; DIGITAG (2010) ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Sistema Transaccional Inalámbrico de Datos ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Optimización de la distribución de Residuos Tóxicos Participación en contratos de I+D de especial relevancia con Empresas y/o Administraciones (nacionales y/ o internacionales): ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; La magia de las letras Empresa/Administración financiadora:Ate net Entidades participantes:FFII, Fomento de centros de enseñanza ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Webbits Empresa/Administración financiadora: Ate net Entidades participantes: FFII, Fomento de centros de enseñanza ·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Utilización de la Telemática como Instrumento de Apoyo y Tutoría a Distancia Aplicada a la Formación en las Organizaciones Sociales (C-0386) Tipo de contrato: Colaboración Empresa/Administración financiadora FORCEM / Fondo Social Europeo / UGT Entidades participantes: ETSI Industriales - UPM ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Programas de Intervención para el Desarrollo de Capacidades en Trabajadores Semicualificados y No Cualificados (C-0504). Tipo de contrato: Colaboración Empresa/Administración financiadora FORCEM / Fondo Social Europeo / UGT Entidades participantes: ETSI Industriales - UPM ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Validación Experimental de la Herramienta Telemática como Instrumento de Apoyo y Aprendizaje Individualizado (C-0507). Tipo de contrato: Colaboración Empresa/Administración financiadora FORCEM / Fondo Social Europeo / UGT Entidades participantes: ETSI Industriales - UPM ·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Diseño y Validación de Materiales Innovadores para la Formación en Organizaciones Sociales (C-0508). Tipo de contrato: Colaboración Empresa/Administración financiadora FORCEM / Fondo Social Europeo / UGT Entidades participantes: ETSI Industriales - UPM ·&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Creación y Desarrollo de un Sistema de Información como Herramienta para la Formación de Trabajadores (C-0509) Tipo de contrato: Colaboración Empresa/Administración financiadora FORCEM / Fondo Social Europeo / UGT Entidades participantes: ETSI Industriales - UPM Contribuciones a Congresos: ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Alcance de las Nuevas Tecnologías en la Nueva Era Digital ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Jornada de Nuevas Tecnologías en la Innovación Educativa ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Desarrollo de aplicaciones informáticas para la educación ·&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Conferencia Internacional de Tecnología, Educación y Desarrollo Sostenible, EDUTEC 2001 Ha colaborado en las presentaciones y diseño gráfico de los distintos Proyectos fin de Carrera, Trabajos Fin de Grado realizados en la Unidad Docente de Informática Industrial.</p>', 'Julio Antonio', 'Mart&iacute;n Erro', '/Julio-Martin-Erro.jpg', '', '', 6),
(34, '<p>Recién titulado en Técnico Superior en Desarrollo de Aplicaciones Web (DAW) y cursando el segundo año del Grado de Ingeniería en Informática en la Universidad Nacional de Educación a Distancia (UNED).</p><p>Durante mis prácticas profesionales en la Escuela Técnica Superior de Ingenieros Industriales (UPM), he estado involucrado en la creación del sitio web del equipo de informática industrial de la universidad.&nbsp;</p><p>A lo largo de mi formación, he adquirido conocimientos en diversas tecnologías y lenguajes de programación, incluyendo HTML, CSS, JavaScript, Java, MySQL y PHP.</p><p>Fuera del ámbito académico y profesional, disfruto de la programación y la resolución de problemas complejos, lo que me lleva a estar en constante aprendizaje y actualización en las últimas tendencias tecnológicas.&nbsp;</p>', 'Fernando Javier', 'Garc&iacute;a-Mascaraque Santillana', '/fotoCV3.png', '', 'fernandodeveloper89@gmail.com', 29),
(35, '<p>Graduado en ingeniero de organización por la Escuela Técnica Superior de Ingenieros Industriales de la UPM. Posee estudios en matemática computacional y aplicada y un máster en formación del profesorado en matemáticas. Es funcionario como profesor de matemáticas en educación secundaria y bachillerato, y también es empresario.</p><p>Fundador y director general de acaKER, una consultora tecnológica, y del Instituto Superior de Formación Profesional Vigara, se especializa en el desarrollo de ERPs y sistemas de información. Ha impartido docencia en la Universidad Carlos III de Madrid y la Universidad CEU San Pablo. Actualmente, realiza sus estudios de doctorado en ingeniería mecánica, enfocándose en la aplicación de inteligencias artificiales a diversos procesos y datos.</p>', 'Pablo', 'Vigara', '/image0.jpeg', '', '', 5),
(36, '<p>Entusiasta de la informática y el desarrollo de aplicaciones web. Desde pequeño, he mostrado un gran interés por la tecnología y la programación, lo que me llevó a formarme en este ámbito.</p><p>Completé el Bachillerato en Ciencias Sociales en el IES Vega del Jarama en 2022. Posteriormente, me matriculé en el ciclo formativo de Desarrollo de Aplicaciones Web en el IES Los Olivos, donde he titulado recientemente.</p><p>Durante las prácticas profesionales en la Escuela Técnica Superior de Ingenieros Industriales (UPM), he estado involucrado en la creación del sitio web del equipo de informática industrial de la universidad.</p><p>A lo largo de mi formación, he adquirido conocimientos en diversas tecnologías y lenguajes de programación, incluyendo HTML, CSS, JavaScript, Java, MySQL y PHP.</p><p>Fuera del ámbito académico y profesional, disfruto de la programación y la resolución de problemas complejos, lo que me lleva a estar en constante aprendizaje y actualización en las últimas tendencias tecnológicas.&nbsp;</p>', 'Alexis Paul', 'Cazorla Pasiche', '/1710926947578 (1).jpg', '', 'paulcazorla24@gmail.com', 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `miepro`
--

CREATE TABLE `miepro` (
  `id_miepro` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id_noticia` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `texto` text NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `titulo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proyectos`
--

CREATE TABLE `proyectos` (
  `id_proyecto` int(11) NOT NULL,
  `titulo` varchar(500) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `financiacion` varchar(100) NOT NULL,
  `participantes` text NOT NULL,
  `pagoficial` varchar(100) NOT NULL,
  `laboratorio` varchar(100) NOT NULL,
  `responsable` varchar(100) NOT NULL,
  `icono` varchar(500) NOT NULL,
  `terminado` tinyint(1) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tipoProyecto` varchar(255) NOT NULL,
  `entidadFinanciadora` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `proyectos`
--

INSERT INTO `proyectos` (`id_proyecto`, `titulo`, `duracion`, `financiacion`, `participantes`, `pagoficial`, `laboratorio`, `responsable`, `icono`, `terminado`, `fecha`, `tipoProyecto`, `entidadFinanciadora`) VALUES
(16, 'Uso de inteligencias artificiales generativas en el aprendizaje de la programación de ordenadores', '2023-2024', '1745 euros', 'Francisco Javier del &Aacute;lamo Lobo, Javier Rodr&iacute;guez Vidal, Pablo Manuel Vigara Gallego, Julio Antonio Martin Erro y Juan Antonio Criado Manso', 'IE24.0504', 'LABI', '&Aacute;ngel Garc&iacute;a Beltr&aacute;n y Ascensi&oacute;n L&oacute;pez Vargas', '/proyecto4.jpg', 0, '2024-05-16 12:49:03', 'Innovaci&oacute;n educativa', 'Convocatoria 2023-2024 de &quot;Proyectos de Innovaci&oacute;n Educativa y Mejora de la Calidad de la Ense&ntilde;anza&quot;. Universidad Polit&eacute;cnica de Madrid.'),
(17, 'Inteligencia artificial aplicada a la investigación desarrollada en la Escuela Técnica Superior de Ingenieros Industriales', '2023-2024', '3.000 euros', '&Aacute;ngel Garc&iacute;a Beltr&aacute;n, Francisco Javier del &Aacute;lamo Lobo, Javier Rodr&iacute;guez Vidal y Pablo Manuel Vigara Gallego.', 'ETSII-UPM24-PU03', 'LABI', 'Ascensi&oacute;n L&oacute;pez Vargas', '/proyecto4.jpg', 0, '2024-05-16 12:51:23', 'Investigaci&oacute;n', 'Convocatoria de Ayudas de Investigaci&oacute;n 2024 de la Escuela T&eacute;cnica Superior de Ingenieros Industriales de la Universidad Polit&eacute;cnica de Madrid.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id_publicacion` int(11) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `titulo` varchar(500) NOT NULL,
  `texto` text NOT NULL,
  `enlacesArticulos` text DEFAULT NULL,
  `nombre` varchar(255) DEFAULT NULL,
  `autores` text DEFAULT NULL,
  `fechaEnlaces` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id_publicacion`, `fecha`, `titulo`, `texto`, `enlacesArticulos`, `nombre`, `autores`, `fechaEnlaces`) VALUES
(1, '2024-05-28 11:20:21', 'Feature engineering for sentiment analysis in e-health forums', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:7T2F9Uy0os0C', 'Javier Rodríguez-Vidal', 'J Carrillo-de-Albornoz, J Rodriguez Vidal, L Plaza', 2018),
(2, '2024-05-28 11:20:21', 'Automatic detection of influencers in social networks: Authority versus domain signals', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:tKAzc9rXhukC', 'Javier Rodríguez-Vidal', 'J Rodríguez?Vidal, J Gonzalo, L Plaza, HA Sánchez', 2019),
(3, '2024-05-28 11:20:21', 'Evall: Open access evaluation for information access systems', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:_Ybze24A_UAC', 'Javier Rodríguez-Vidal', 'E Amigó, J Carrillo-de-Albornoz, M Almagro-Cádiz, J Gonzalo, ...', 2017),
(4, '2024-05-28 11:20:21', 'Automatic generation of entity-oriented summaries for reputation management', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:ZfRJV9d4-WMC', 'Javier Rodríguez-Vidal', 'J Rodríguez-Vidal, J Carrillo-de-Albornoz, E Amigó, L Plaza, J Gonzalo, ...', 2020),
(5, '2024-05-28 11:20:21', 'Detecting Influencers in Social Media using information from their followers', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:2KloaMYe4IUC', 'Javier Rodríguez-Vidal', 'J Rodríguez-Vidal, J Gonzalo Arroyo, L Plaza Morales', 2020),
(6, '2024-05-28 11:20:21', 'C?programming self?assessment exercises versus final exams: 12 years of experience', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:fEOibwPWpKIC', 'Javier Rodríguez-Vidal', 'J Rodríguez?Vidal, R Martínez, Á García?Beltrán', 2023),
(7, '2024-05-28 11:20:21', 'Authority and priority signals in automatic summary generation for online reputation management', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:35r97b3x0nAC', 'Javier Rodríguez-Vidal', 'J Rodríguez?Vidal, J Carrillo?de?Albornoz, J Gonzalo, L Plaza', 2021),
(8, '2024-05-28 11:20:21', 'Impact of C?coding self?assessment exercises on exam performance: A study in engineering education', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:uJ-U7cs_P_0C', 'Javier Rodríguez-Vidal', 'J Rodríguez?Vidal, Á García?Beltrán', 2024),
(9, '2024-05-28 11:20:21', 'Detecting topics and polarity from Twitter: A university faculty case', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:j8SEvjWlNXcC', 'Javier Rodríguez-Vidal', 'AS Ruíz, D Galan, Á García-Beltrán, J Rodríguez-Vidal', 2023),
(10, '2024-05-28 11:20:21', 'Detecting topics and polarity from Twitter: the ETSII-UPM case', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:-_dYPAW6P2MC', 'Javier Rodríguez-Vidal', 'AS Ruíz, D Galan, Á García-Beltrán, J Rodríguez-Vidal', 2023),
(11, '2024-05-28 11:20:21', 'Metodología combinada para el aprendizaje de la programación en dispositivos Android', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:VLnqNzywnoUC', 'Javier Rodríguez-Vidal', 'A García-Beltrán, J Rodríguez-Vidal', 2023),
(12, '2024-05-28 11:20:21', 'Authority and priority signals in Online Reputation Monitoring', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:_Re3VWB3Y0AC', 'Javier Rodríguez-Vidal', 'J Rodriguez Vidal', 2019),
(13, '2024-05-28 11:20:21', 'Identification and Classification of Textures in Eucalyptus Forests based on Hemispherical Images', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:kzcrU_BdoSEC', 'Javier Rodríguez-Vidal', 'J Rodríguez-Vidal, PJ Herrera, G Pajares, N Sainz-Costa', 2011),
(14, '2024-05-28 11:20:21', 'Identificación y clasificación de texturas en entornos forestales de eucalipto mediante imágenes hemisféricas obtenidas con lentes de ojos de pez', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:u5HHmVD_uO8C', 'Javier Rodríguez-Vidal', 'J Rodríguez Vidal', 2011),
(15, '2024-05-28 11:20:21', 'Juegos Arcade online sobre mapas reales', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=8VDqxXoAAAAJ&citation_for_view=8VDqxXoAAAAJ:u-x6o8ySG0sC', 'Javier Rodríguez-Vidal', 'V Pinto San Macario, J Rodríguez Vidal, D Gómez Cordero', 2009),
(16, '2024-05-28 11:20:21', 'IoT application for real-time monitoring of solar home systems based on Arduino™ with 3G connectivity', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:u-x6o8ySG0sC', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, M Fuentes, M Vivar', 2018),
(17, '2024-05-28 11:20:21', 'Low-Cost datalogger intended for remote monitoring of solar photovoltaic standalone systems based on Arduino™', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:UeHWp8X0CEIC', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, M Fuentes, MV García, FJ Muñoz-Rodríguez', 2019),
(18, '2024-05-28 11:20:21', 'Challenges and opportunities of the internet of things for global development to achieve the united nations sustainable development goals', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:IjCSPb-OGe4C', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, M Fuentes, M Vivar', 2020),
(19, '2024-05-28 11:20:21', 'Separating the UV and thermal components during real-time solar disinfection experiments: The effect of temperature', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:Y0pCki6q_DkC', 'ASCENSION LOPEZ-VARGAS', 'M Vivar, N Pichel, M Fuentes, A López-Vargas', 2017),
(20, '2024-05-28 11:20:21', 'IoT for global development to achieve the united nations sustainable development goals: The new scenario after the COVID-19 pandemic', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:W7OEmFMy1HYC', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, A Ledezma, J Bott, A Sanchis', 2021),
(21, '2024-05-28 11:20:21', 'On the application of IoT for real-time monitoring of small stand-alone PV systems: Results from a new smart datalogger', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:u5HHmVD_uO8C', 'ASCENSION LOPEZ-VARGAS', 'AÓ LÓpez-Vargas, M Fuentes, M Vivar', 2018),
(22, '2024-05-28 11:20:21', 'Photovoltaic and solar disinfection technology meeting the needs of water and electricity of a typical household in developing countries: From a Solar Home System to a full …', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:2osOgNQ5qMEC', 'ASCENSION LOPEZ-VARGAS', 'M Vivar, M Fuentes, N Pichel, A López-Vargas, MJ Rodrigo, K Srithar', 2020),
(23, '2024-05-28 11:20:21', 'Current challenges for the advanced mass scale monitoring of Solar Home Systems: A review', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:Tyk-4Ss8FVUC', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, M Fuentes, M Vivar', 2021),
(24, '2024-05-28 11:20:21', 'Methods, data sources and applications of the Artificial Intelligence in the Energy Poverty context: A review', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:eQOLeE2rZwMC', 'ASCENSION LOPEZ-VARGAS', 'A Lopez-Vargas, A Ledezma-Espino, A Sanchis-de-Miguel', 2022),
(25, '2024-05-28 11:20:21', 'Iot application for energy poverty detection based on thermal comfort monitoring', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:WF5omc3nYNoC', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, A Ledezma-Espino', 2023),
(26, '2024-05-28 11:20:21', 'Solar energy outreach activities for schoolchildren: Hands-on experiments on photovoltaics, solar thermal and solar water disinfection', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:d1gkVwhDpl0C', 'ASCENSION LOPEZ-VARGAS', 'M Vivar, M Fuentes, N Pichel, A López-Vargas', 2018),
(27, '2024-05-28 11:20:21', 'Evaluation of long-term performance of a solar home system (SHS) monitoring system on harsh environments', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:qjMakFHDy7sC', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, M Fuentes, M Vivar', 2019),
(28, '2024-05-28 11:20:21', 'Physical measurements for the characterization of energy poverty', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:_FxGoFyzp5QC', 'ASCENSION LOPEZ-VARGAS', 'U Ruiz-Rivas Hernando, D Sánchez-García, A López Vargas, C Alonso, ...', 2022),
(29, '2024-05-28 11:20:21', 'Photovoltaic toy cars racing circuits as hands-on learning solar energy: Results from a Problem Based Learning (PBL) experience for undergraduates', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:9yKSN-GCB0IC', 'ASCENSION LOPEZ-VARGAS', 'M Fuentes, M Vivar, A López-Vargas, N Pichel', 2018),
(30, '2024-05-28 11:20:21', 'The Role of the Artificial Intelligence of Things in Energy Poverty Alleviation', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:LkGwnXOMwfcC', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, A Ledezma-Espino, A Sanchis-de-Miguel', 2024),
(31, '2024-05-28 11:20:22', 'Fuzzy Logic Approach for Energy Poverty Identification in the Urban Regeneration Areas of Getafe', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:YsMSGLbcyi4C', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, R Castaño-Rosa, J Martínez-Crespo, U Ruíz-Rivas, ...', 2021),
(32, '2024-05-28 11:20:22', 'DEVELOPMENT OF LOW-COST EQUIPMENT BASED ON OPEN SOURCE TOOLS', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:roLk4NBRz8UC', 'ASCENSION LOPEZ-VARGAS', 'A López Vargas', 2019),
(33, '2024-05-28 11:20:22', 'Open-source technologies and IoT as a tool for meeting the challenge of mass-scale Solar Home Systems monitoring in developing countries', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=BnI8Ly0AAAAJ&citation_for_view=BnI8Ly0AAAAJ:zYLM7Y9cAGgC', 'ASCENSION LOPEZ-VARGAS', 'A López-Vargas, M Fuentes, M Vivar', 2018),
(34, '2024-05-28 11:20:22', 'Random-type scanning patterns in laser shock peening without absorbing coating in 2024-T351 Al alloy: A solution to reduce residual stress anisotropy', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:KxtntwgDAa4C', 'Angel Garcia-Beltran', 'C Correa, D Peral, JA Porro, M Díaz, LR De Lara, A García-Beltrán, ...', 2015),
(35, '2024-05-28 11:20:22', 'La autoevaluación como actividad docente en entornos virtuales de aprendizaje/enseñanza', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:g5m5HwL7SMYC', 'Angel Garcia-Beltran', 'Á García-Beltrán, R Martínez, JA Jaén, S Tapia', 2006),
(36, '2024-05-28 11:20:22', 'Influence of pulse sequence and edge material effect on fatigue life of Al2024-T351 specimens treated by laser shock processing', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:5Ul4iDaHHb8C', 'Angel Garcia-Beltran', 'C Correa, LR De Lara, M Díaz, JA Porro, A García-Beltrán, JL Ocaña', 2015),
(37, '2024-05-28 11:20:22', 'Model based optimization criteria for the generation of deep compressive residual stress fields in high elastic limit metallic alloys by ns-laser shock processing', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:cFHS6HbyZ2cC', 'Angel Garcia-Beltran', 'M Morales, JL Ocaña, C Molpeceres, JA Porro, A García-Beltrán', 2008),
(38, '2024-05-28 11:20:22', 'Numerical/experimental analysis of the laser surface hardening with overlapped tracks to design the configuration of the process for Cr-Mo steels', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:4TOpqqG69KYC', 'Angel Garcia-Beltran', 'F Cordovilla, Á García-Beltrán, P Sancho, J Domínguez, L Ruiz-de-Lara, ...', 2016),
(39, '2024-05-28 11:20:22', 'La autoevaluación como actividad docente en entornos virtuales de aprendizaje/enseñanza', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:3fE2CSJIrl8C', 'Angel Garcia-Beltran', 'Á Garcia-Beltrán, R Martínez, JA Jaén, S Tapia', 2016),
(40, '2024-05-28 11:20:22', 'Model for the coupled predictive assessment of plasma expansion and material compression in laser shock processing applications', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:p2g8aNsByqUC', 'Angel Garcia-Beltran', 'JL Ocana, C Molpeceres, M Morales, A García-Beltrán', 2000),
(41, '2024-05-28 11:20:22', 'Web assisted self-assessment in computer programming learning using AulaWeb', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:tS2w5q8j5-wC', 'Angel Garcia-Beltran', 'A García-Beltrán, R Martínez', 2006),
(42, '2024-05-28 11:20:22', 'The Role of Self-Assesment in AulaWeb e-learning System', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:mB3voiENLucC', 'Angel Garcia-Beltran', 'A García-Beltrán, R Martínez', 2002),
(43, '2024-05-28 11:20:22', 'Laser Shock Processing of thin Al2024-T351 plates for induction of through-thickness compressive residual stresses fields', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:OU6Ihb5iCvQC', 'Angel Garcia-Beltran', 'JL Ocaña, C Correa, A García-Beltrán, JA Porro, M Díaz, L Ruiz-de-Lara, ...', 2015),
(44, '2024-05-28 11:20:22', 'AulaWeb: a WWW-Based Course-Support System with Self-Assessment and Student Tracking', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:hC7cP41nSMkC', 'Angel Garcia-Beltran', 'R Martínez, A García-Beltrán', 2001),
(45, '2024-05-28 11:20:22', 'The effect of material cyclic deformation properties on residual stress generation by laser shock processing', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:UxriW0iASnsC', 'Angel Garcia-Beltran', 'I Angulo, F Cordovilla, A García-Beltrán, NS Smyth, K Langer, ...', 2019),
(46, '2024-05-28 11:20:22', 'Breve historia de la informática', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:tOudhMTPpwUC', 'Angel Garcia-Beltran', 'R Martínez, A García-Beltrán', 2000),
(47, '2024-05-28 11:20:22', 'Numerical-experimental analysis of the effect of surface oxidation on the laser transformation hardening of Cr–Mo steels', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:2P1L_qKh6hAC', 'Angel Garcia-Beltran', 'F Cordovilla, Á García-Beltrán, J Dominguez, P Sancho, JL Ocaña', 2015),
(48, '2024-05-28 11:20:22', 'Numerical thermo-mechanical modelling of stress fields and residual constraints in metallic targets subject to laser shock processing', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:eflP2zaiRacC', 'Angel Garcia-Beltran', 'M Morales Furió, C Molpeceres, JA Porro, A García-Beltrán, JL Ocaña', 2010),
(49, '2024-05-28 11:20:22', 'Challenges of a blended e-learning system in traditional engineering faculties', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:SP6oXDckpogC', 'Angel Garcia-Beltran', 'A García-Beltrán, R Martínez', 2003),
(50, '2024-05-28 11:20:22', 'PART 2-4 Surface Engineering/Coatings-Laser Shock Processing as a Method for the Improvement of Metallic Materials Surface Properties: A Discussion on the Influence of Combined …', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:sSrBHYA8nusC', 'Angel Garcia-Beltran', 'JL Ocaña, M Morales, C Molpeceres, JA Porro, A Garcia-Beltran', 2007),
(51, '2024-05-28 11:20:22', 'Spread of an e-Learning System in a Polytechnical University', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:hMod-77fHWUC', 'Angel Garcia-Beltran', 'A García-Beltrán, R Martínez', 2004),
(52, '2024-05-28 11:20:22', 'Experiencia docente con AulaWeb en la asignatura de Informática', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:YOwf2qJgpHMC', 'Angel Garcia-Beltran', 'Á García-Beltrán, RM Fernández', 2004),
(53, '2024-05-28 11:20:22', 'Un sistema WWW de ayuda a la formación para alumnos y profesores', '', 'https://scholar.google.com/citations?view_op=view_citation&hl=en&user=MqQGmWoAAAAJ&citation_for_view=MqQGmWoAAAAJ:WbkHhVStYXYC', 'Angel Garcia-Beltran', 'R Martínez, A García-Beltrán, JA Jaén', 2000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rango`
--

CREATE TABLE `rango` (
  `id_rango` int(11) NOT NULL,
  `nombre_rango` varchar(50) NOT NULL,
  `Posicion_rango` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `rango`
--

INSERT INTO `rango` (`id_rango`, `nombre_rango`, `Posicion_rango`) VALUES
(1, 'Catedratico', 1),
(2, 'Profesor titular', 2),
(3, 'Profesor contratado doctor', 3),
(4, 'Profesor ayudante doctor', 4),
(5, 'Profesor Asociado', 5),
(6, 'PTGAS', 6),
(29, 'Colaborador externo', 7);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `redessociales`
--

CREATE TABLE `redessociales` (
  `id_redsocial` int(11) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `ide_miembro` int(11) NOT NULL,
  `link_logo` varchar(255) NOT NULL,
  `nombre` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Volcado de datos para la tabla `redessociales`
--

INSERT INTO `redessociales` (`id_redsocial`, `logo`, `ide_miembro`, `link_logo`, `nombre`) VALUES
(13, '../../imagenes/redesSociales/googleScholar.png', 29, 'https://scholar.google.com/citations?user=8VDqxXoAAAAJ&hl=en&oi=ao', 'googleScholar'),
(14, '../../imagenes/redesSociales/googleScholar.png', 30, 'https://scholar.google.com/citations?user=BnI8Ly0AAAAJ&hl=en&oi=ao', 'googleScholar'),
(15, '../../imagenes/redesSociales/googleScholar.png', 31, 'https://scholar.google.com/citations?user=MqQGmWoAAAAJ&hl=en&oi=ao', 'googleScholar'),
(16, '../../imagenes/redesSociales/ig.png', 34, 'https://www.instagram.com/ferprofe10/', NULL),
(17, '../../imagenes/redesSociales/facebook.png', 34, 'https://www.facebook.com/fernando.garciamascaraque.5/', NULL),
(18, '../../imagenes/redesSociales/ig.png', 36, 'https://www.instagram.com/paul24_10/', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL,
  `nombre_usuario` varchar(255) NOT NULL,
  `contrasena_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nombre_usuario`, `contrasena_usuario`) VALUES
(2, 'admin', '6df678f63a6b46daff0248d1abffc7c7');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD PRIMARY KEY (`id_asignatura`),
  ADD KEY `fk_grado` (`id_grado`);

--
-- Indices de la tabla `grado`
--
ALTER TABLE `grado`
  ADD PRIMARY KEY (`id_grado`);

--
-- Indices de la tabla `lineainvestigacion`
--
ALTER TABLE `lineainvestigacion`
  ADD PRIMARY KEY (`id_livestigacion`);

--
-- Indices de la tabla `miembro`
--
ALTER TABLE `miembro`
  ADD PRIMARY KEY (`id_miembro`),
  ADD KEY `rango` (`rango`);

--
-- Indices de la tabla `miepro`
--
ALTER TABLE `miepro`
  ADD PRIMARY KEY (`id_miepro`);

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id_noticia`);

--
-- Indices de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  ADD PRIMARY KEY (`id_proyecto`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id_publicacion`);

--
-- Indices de la tabla `rango`
--
ALTER TABLE `rango`
  ADD PRIMARY KEY (`id_rango`);

--
-- Indices de la tabla `redessociales`
--
ALTER TABLE `redessociales`
  ADD PRIMARY KEY (`id_redsocial`),
  ADD KEY `idmiembro` (`ide_miembro`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `asignatura`
--
ALTER TABLE `asignatura`
  MODIFY `id_asignatura` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `grado`
--
ALTER TABLE `grado`
  MODIFY `id_grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `lineainvestigacion`
--
ALTER TABLE `lineainvestigacion`
  MODIFY `id_livestigacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `miembro`
--
ALTER TABLE `miembro`
  MODIFY `id_miembro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `miepro`
--
ALTER TABLE `miepro`
  MODIFY `id_miepro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `proyectos`
--
ALTER TABLE `proyectos`
  MODIFY `id_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id_publicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `rango`
--
ALTER TABLE `rango`
  MODIFY `id_rango` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `redessociales`
--
ALTER TABLE `redessociales`
  MODIFY `id_redsocial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asignatura`
--
ALTER TABLE `asignatura`
  ADD CONSTRAINT `fk_grado` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id_grado`);

--
-- Filtros para la tabla `miembro`
--
ALTER TABLE `miembro`
  ADD CONSTRAINT `rol` FOREIGN KEY (`rango`) REFERENCES `rango` (`id_rango`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `miepro`
--
ALTER TABLE `miepro`
  ADD CONSTRAINT `idmiembro` FOREIGN KEY (`id_miepro`) REFERENCES `miembro` (`id_miembro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `idproyecto` FOREIGN KEY (`id_miepro`) REFERENCES `proyectos` (`id_proyecto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `redessociales`
--
ALTER TABLE `redessociales`
  ADD CONSTRAINT `id_miembro` FOREIGN KEY (`ide_miembro`) REFERENCES `miembro` (`id_miembro`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
