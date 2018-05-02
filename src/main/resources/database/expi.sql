-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 01-05-2018 a las 18:56:46
-- Versión del servidor: 5.7.20-1
-- Versión de PHP: 5.6.26-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `expi`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `alergias_medicamentos`
--

CREATE TABLE `alergias_medicamentos` (
  `id` int(11) NOT NULL,
  `penicilina` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `barbituricos` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `aspirina` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `sulfas` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `cortisona` varchar(11) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `alergias_medicamentos`
--

INSERT INTO `alergias_medicamentos` (`id`, `penicilina`, `barbituricos`, `aspirina`, `sulfas`, `cortisona`) VALUES
(1, 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `analisis_oclusion`
--

CREATE TABLE `analisis_oclusion` (
  `id` int(11) NOT NULL,
  `clasificacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `proteccion_canina` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `proteccion_anterior` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `funcion_grupo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `proteccion_mutua` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `mordida_cruzada` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `mordida_abierta` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sobremordida` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `relacion_incisal` int(11) NOT NULL,
  `contacto_dentatorio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `movimiento_mandibular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `analisis_oclusion`
--

INSERT INTO `analisis_oclusion` (`id`, `clasificacion`, `proteccion_canina`, `proteccion_anterior`, `funcion_grupo`, `proteccion_mutua`, `mordida_cruzada`, `mordida_abierta`, `sobremordida`, `relacion_incisal`, `contacto_dentatorio`, `movimiento_mandibular`) VALUES
(1, 'III', 'izquierda', 'si', 'izquierda', 'si', 'izquierda', 'no', 'si', 1, 'si', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atm`
--

CREATE TABLE `atm` (
  `id` int(11) NOT NULL,
  `crepitacion` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `sensibilidad` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `dolor` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `subluxacion` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `desviacion` int(11) NOT NULL,
  `habitos_tension` int(11) NOT NULL,
  `forma_residual` int(11) NOT NULL,
  `tamano_lengua` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `torus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `atm`
--

INSERT INTO `atm` (`id`, `crepitacion`, `sensibilidad`, `dolor`, `subluxacion`, `desviacion`, `habitos_tension`, `forma_residual`, `tamano_lengua`, `torus`) VALUES
(1, 'si', 'si', 'si', 'no', 1, 1, 1, 'Normal', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cara`
--

CREATE TABLE `cara` (
  `id` int(11) NOT NULL,
  `forma` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `labios` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `bordes_bermellon` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `cara`
--

INSERT INTO `cara` (`id`, `forma`, `labios`, `bordes_bermellon`) VALUES
(1, 'ovoide', 'largos', 'visibles');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `desviacion`
--

CREATE TABLE `desviacion` (
  `id` int(11) NOT NULL,
  `desviacion` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `cierre` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `apertura` varchar(11) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `desviacion`
--

INSERT INTO `desviacion` (`id`, `desviacion`, `cierre`, `apertura`) VALUES
(1, 'si', 'si', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `direccion_paciente`
--

CREATE TABLE `direccion_paciente` (
  `id` int(11) NOT NULL,
  `pais` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `calle` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `colonia` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `direccion_paciente`
--

INSERT INTO `direccion_paciente` (`id`, `pais`, `estado`, `ciudad`, `calle`, `colonia`) VALUES
(1, 'México', 'Campeche', 'Campeche', 'Calle 14, No 20', 'Santa Lucía');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dolor`
--

CREATE TABLE `dolor` (
  `id` int(11) NOT NULL,
  `si_no` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `organo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ubicacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `duracion` time NOT NULL,
  `estimulo` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `dolor`
--

INSERT INTO `dolor` (`id`, `si_no`, `organo`, `ubicacion`, `duracion`, `estimulo`) VALUES
(1, 'si', 'encia', 'difuso', '00:02:08', 'frio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estado_diente`
--

CREATE TABLE `estado_diente` (
  `id` int(11) NOT NULL,
  `diente` int(11) NOT NULL,
  `izquierda` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `superior` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `derecha` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `inferior` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `id_odontograma` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_oral`
--

CREATE TABLE `examen_oral` (
  `id` int(11) NOT NULL,
  `dolor` int(11) NOT NULL,
  `lesion_pulpar` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `exposicion_pulpar` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `inflamacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `pruebas_sens_termica` int(11) NOT NULL,
  `pruebas_sens_periodontal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `examen_oral`
--

INSERT INTO `examen_oral` (`id`, `dolor`, `lesion_pulpar`, `exposicion_pulpar`, `inflamacion`, `pruebas_sens_termica`, `pruebas_sens_periodontal`) VALUES
(1, 1, 'Física', 'Caries', 'Endurecida', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `examen_orofacial`
--

CREATE TABLE `examen_orofacial` (
  `id` int(11) NOT NULL,
  `cara` int(11) NOT NULL,
  `sistema_estomatognatico` int(11) NOT NULL,
  `paciente` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `examen_orofacial`
--

INSERT INTO `examen_orofacial` (`id`, `cara`, `sistema_estomatognatico`, `paciente`, `fecha`) VALUES
(1, 1, 1, 1, '2018-04-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `forma_residual`
--

CREATE TABLE `forma_residual` (
  `id` int(11) NOT NULL,
  `maxilar` int(11) NOT NULL,
  `mandibular` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `forma_residual`
--

INSERT INTO `forma_residual` (`id`, `maxilar`, `mandibular`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitos_tension`
--

CREATE TABLE `habitos_tension` (
  `id` int(11) NOT NULL,
  `habitos_tension` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `bruxismo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `seccion_labial` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `respirador_bucal` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `unicofagia` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `succion_lingual` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `objetos` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `habitos_tension`
--

INSERT INTO `habitos_tension` (`id`, `habitos_tension`, `bruxismo`, `seccion_labial`, `respirador_bucal`, `unicofagia`, `succion_lingual`, `objetos`) VALUES
(1, 'si', 'no', 'no', 'si', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hallazgos_radiograficos`
--

CREATE TABLE `hallazgos_radiograficos` (
  `id` int(11) NOT NULL,
  `tipo_rx` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `soporte_oseo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `relacion_corona_raiz` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `altura_reborde` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `engrosamiento_ligamento_periodontal` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `interpretacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `hallazgos_radiograficos`
--

INSERT INTO `hallazgos_radiograficos` (`id`, `tipo_rx`, `soporte_oseo`, `relacion_corona_raiz`, `altura_reborde`, `engrosamiento_ligamento_periodontal`, `interpretacion`) VALUES
(1, 'oclusal', 'si', 'no', '12mm', 'si', 'este men esta jodido');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medico_paciente`
--

CREATE TABLE `medico_paciente` (
  `id` int(11) NOT NULL,
  `nombre_medico` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_medico` varchar(13) COLLATE utf8_spanish_ci NOT NULL,
  `direccion_medico` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `medico_paciente`
--

INSERT INTO `medico_paciente` (`id`, `nombre_medico`, `telefono_medico`, `direccion_medico`) VALUES
(1, 'Doctor Simi', '9810001212', 'Esta en todas partes c:');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `movimiento_mandibular`
--

CREATE TABLE `movimiento_mandibular` (
  `id` int(11) NOT NULL,
  `protusivo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `derecho` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `izquierdo` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `movimiento_mandibular`
--

INSERT INTO `movimiento_mandibular` (`id`, `protusivo`, `derecho`, `izquierdo`) VALUES
(1, 'normal', 'normal', 'limitado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `odontograma`
--

CREATE TABLE `odontograma` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `estado_odontograma` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha` date NOT NULL,
  `Num_dientes` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Superficies_placa` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Num_superficies` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `Extension_placa` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Paciente`
--

CREATE TABLE `Paciente` (
  `id` int(255) NOT NULL,
  `folio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `edad` int(3) NOT NULL,
  `sexo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacim` date NOT NULL,
  `telefono` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `domicilio` int(11) NOT NULL,
  `ocupacion` int(11) NOT NULL,
  `estatura` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `peso` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `estado_civil` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `nivel_estudios` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `medico` int(11) NOT NULL,
  `estado_salud` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `porque_solicita` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fecha_registro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `Paciente`
--

INSERT INTO `Paciente` (`id`, `folio`, `nombre`, `edad`, `sexo`, `fecha_nacim`, `telefono`, `domicilio`, `ocupacion`, `estatura`, `peso`, `estado_civil`, `nivel_estudios`, `medico`, `estado_salud`, `porque_solicita`, `observaciones`, `fecha_registro`) VALUES
(1, '1234', 'Bob Pantalones Cuadrados', 20, 'M', '1998-02-06', '9811112233', 1, 1, '159', '60', 'soltero', 'bachillerato', 1, 'Bueno', 'Porque si', 'Nada', '2018-04-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `padecimientos`
--

CREATE TABLE `padecimientos` (
  `id` int(11) NOT NULL,
  `hepatitis` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `enfermedades_veneras` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `embolia` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `varicela` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `asma` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `ictericia` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `infarto_miocardio` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `epilepsia` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `fiebre_reumatica` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `hipertension_arterial` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `tuberculosis` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `angina_pecho` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `diabetes` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `sarampiom` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `cancer` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `padecimientos`
--

INSERT INTO `padecimientos` (`id`, `hepatitis`, `enfermedades_veneras`, `embolia`, `varicela`, `asma`, `ictericia`, `infarto_miocardio`, `epilepsia`, `fiebre_reumatica`, `hipertension_arterial`, `tuberculosis`, `angina_pecho`, `diabetes`, `sarampiom`, `cancer`) VALUES
(1, 'si', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'si', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `plan_tratamiento`
--

CREATE TABLE `plan_tratamiento` (
  `id` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `id_tratamiento` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `plan_tratamiento`
--

INSERT INTO `plan_tratamiento` (`id`, `id_paciente`, `id_tratamiento`, `fecha`) VALUES
(1, 1, 1, '2018-04-13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas_paciente`
--

CREATE TABLE `preguntas_paciente` (
  `id` int(11) NOT NULL,
  `p1` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p2` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p3` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p4` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p5` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p6` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p7` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p8` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p9` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p10` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p11` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p12` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p13` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p14` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p15` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p16` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p17` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p18` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p19` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p20` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p21` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p22` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p23` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p24` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p25` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p26` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p27` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p28` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p29` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p30` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p31` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p32` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `p33` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `padecimientos` int(11) NOT NULL,
  `alergias_medicamentos` int(11) NOT NULL,
  `otros` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `paciente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `preguntas_paciente`
--

INSERT INTO `preguntas_paciente` (`id`, `p1`, `p2`, `p3`, `p4`, `p5`, `p6`, `p7`, `p8`, `p9`, `p10`, `p11`, `p12`, `p13`, `p14`, `p15`, `p16`, `p17`, `p18`, `p19`, `p20`, `p21`, `p22`, `p23`, `p24`, `p25`, `p26`, `p27`, `p28`, `p29`, `p30`, `p31`, `p32`, `p33`, `padecimientos`, `alergias_medicamentos`, `otros`, `paciente`) VALUES
(1, 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 'no', 1, 1, 'ninguno', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas_calor`
--

CREATE TABLE `pruebas_calor` (
  `id` int(11) NOT NULL,
  `organo` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `normal` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `fugaz` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `ninguno` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `persistente` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `incremento` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `irradiado` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `drecremento` varchar(11) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pruebas_calor`
--

INSERT INTO `pruebas_calor` (`id`, `organo`, `normal`, `fugaz`, `ninguno`, `persistente`, `incremento`, `irradiado`, `drecremento`) VALUES
(1, 'uno equis', 'si', 'no', 'no', 'no', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas_frio`
--

CREATE TABLE `pruebas_frio` (
  `id` int(11) NOT NULL,
  `organo` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `normal` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `fugaz` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `ninguno` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `persistente` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `incremento` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `irradiado` varchar(11) COLLATE utf8_spanish_ci NOT NULL,
  `drecremento` varchar(11) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pruebas_frio`
--

INSERT INTO `pruebas_frio` (`id`, `organo`, `normal`, `fugaz`, `ninguno`, `persistente`, `incremento`, `irradiado`, `drecremento`) VALUES
(1, 'encia', 'si', 'no', 'si', 'no', 'si', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruebas_termicas`
--

CREATE TABLE `pruebas_termicas` (
  `id` int(11) NOT NULL,
  `frio` int(11) NOT NULL,
  `calor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pruebas_termicas`
--

INSERT INTO `pruebas_termicas` (`id`, `frio`, `calor`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prueba_percusion`
--

CREATE TABLE `prueba_percusion` (
  `id` int(11) NOT NULL,
  `organo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `vertical` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `horizontal` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `palpacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `prueba_percusion`
--

INSERT INTO `prueba_percusion` (`id`, `organo`, `vertical`, `horizontal`, `palpacion`) VALUES
(1, 'lengua', 'no se como se llena', 'no se como se llena', 'no se como se llena'),
(2, 'lengua', 'no se como se llena', 'no se como se llena', 'no se como se llena');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `relacion_incisal`
--

CREATE TABLE `relacion_incisal` (
  `id` int(11) NOT NULL,
  `horizontal` int(11) NOT NULL,
  `vertical` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `relacion_incisal`
--

INSERT INTO `relacion_incisal` (`id`, `horizontal`, `vertical`) VALUES
(1, 123, 12);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residual_mandibular`
--

CREATE TABLE `residual_mandibular` (
  `id` int(11) NOT NULL,
  `u` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `v` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `afilado` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `residual_mandibular`
--

INSERT INTO `residual_mandibular` (`id`, `u`, `v`, `afilado`) VALUES
(1, 'no', 'no', 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `residual_maxilar`
--

CREATE TABLE `residual_maxilar` (
  `id` int(11) NOT NULL,
  `u` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `v` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `afilado` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `residual_maxilar`
--

INSERT INTO `residual_maxilar` (`id`, `u`, `v`, `afilado`) VALUES
(1, 'si', 'no', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sistema_estomatognatico`
--

CREATE TABLE `sistema_estomatognatico` (
  `id` int(11) NOT NULL,
  `atm` int(11) NOT NULL,
  `analisis_oclusion` int(11) NOT NULL,
  `examen_oral` int(11) NOT NULL,
  `hallazgos_radiograficos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sistema_estomatognatico`
--

INSERT INTO `sistema_estomatognatico` (`id`, `atm`, `analisis_oclusion`, `examen_oral`, `hallazgos_radiograficos`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `torus`
--

CREATE TABLE `torus` (
  `id` int(11) NOT NULL,
  `maxilar` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `madibula` varchar(255) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `torus`
--

INSERT INTO `torus` (`id`, `maxilar`, `madibula`) VALUES
(1, 'Ligero', 'Requiere remoción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `trabajo_paciente`
--

CREATE TABLE `trabajo_paciente` (
  `id` int(11) NOT NULL,
  `ocupacion` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `lugar_trabajo` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `telefono_trabajo` varchar(15) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `trabajo_paciente`
--

INSERT INTO `trabajo_paciente` (`id`, `ocupacion`, `lugar_trabajo`, `telefono_trabajo`) VALUES
(1, 'Cocinero', 'Crustaceo Cascarudo', '9813991232');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tratamientos`
--

CREATE TABLE `tratamientos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tratamientos`
--

INSERT INTO `tratamientos` (`id`, `nombre`, `precio`) VALUES
(1, 'para las caries', 1200);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `alergias_medicamentos`
--
ALTER TABLE `alergias_medicamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `analisis_oclusion`
--
ALTER TABLE `analisis_oclusion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `movimiento_mandibular` (`movimiento_mandibular`),
  ADD KEY `relacion_incisal` (`relacion_incisal`);

--
-- Indices de la tabla `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`id`),
  ADD KEY `forma_residual` (`forma_residual`),
  ADD KEY `torus` (`torus`),
  ADD KEY `habitos_tension` (`habitos_tension`),
  ADD KEY `desviacion` (`desviacion`);

--
-- Indices de la tabla `cara`
--
ALTER TABLE `cara`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `desviacion`
--
ALTER TABLE `desviacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `direccion_paciente`
--
ALTER TABLE `direccion_paciente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `dolor`
--
ALTER TABLE `dolor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estado_diente`
--
ALTER TABLE `estado_diente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_odontograma` (`id_odontograma`);

--
-- Indices de la tabla `examen_oral`
--
ALTER TABLE `examen_oral`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pruebas_sens_termica` (`pruebas_sens_termica`),
  ADD KEY `pruebas_sens_periodontal` (`pruebas_sens_periodontal`),
  ADD KEY `dolor` (`dolor`);

--
-- Indices de la tabla `examen_orofacial`
--
ALTER TABLE `examen_orofacial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cara` (`cara`),
  ADD KEY `sistema_estomatognatico` (`sistema_estomatognatico`),
  ADD KEY `paciente` (`paciente`);

--
-- Indices de la tabla `forma_residual`
--
ALTER TABLE `forma_residual`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maxilar` (`maxilar`),
  ADD KEY `mandibular` (`mandibular`);

--
-- Indices de la tabla `habitos_tension`
--
ALTER TABLE `habitos_tension`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `hallazgos_radiograficos`
--
ALTER TABLE `hallazgos_radiograficos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `medico_paciente`
--
ALTER TABLE `medico_paciente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `movimiento_mandibular`
--
ALTER TABLE `movimiento_mandibular`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `odontograma`
--
ALTER TABLE `odontograma`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`);

--
-- Indices de la tabla `Paciente`
--
ALTER TABLE `Paciente`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `folio` (`folio`),
  ADD KEY `domicilio` (`domicilio`),
  ADD KEY `ocupacion` (`ocupacion`),
  ADD KEY `medico` (`medico`);

--
-- Indices de la tabla `padecimientos`
--
ALTER TABLE `padecimientos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `plan_tratamiento`
--
ALTER TABLE `plan_tratamiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_tratamiento` (`id_tratamiento`);

--
-- Indices de la tabla `preguntas_paciente`
--
ALTER TABLE `preguntas_paciente`
  ADD PRIMARY KEY (`id`),
  ADD KEY `p34` (`padecimientos`),
  ADD KEY `p35` (`alergias_medicamentos`),
  ADD KEY `paciente` (`paciente`);

--
-- Indices de la tabla `pruebas_calor`
--
ALTER TABLE `pruebas_calor`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pruebas_frio`
--
ALTER TABLE `pruebas_frio`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pruebas_termicas`
--
ALTER TABLE `pruebas_termicas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `frio` (`frio`),
  ADD KEY `calor` (`calor`);

--
-- Indices de la tabla `prueba_percusion`
--
ALTER TABLE `prueba_percusion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `relacion_incisal`
--
ALTER TABLE `relacion_incisal`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `residual_mandibular`
--
ALTER TABLE `residual_mandibular`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `residual_maxilar`
--
ALTER TABLE `residual_maxilar`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sistema_estomatognatico`
--
ALTER TABLE `sistema_estomatognatico`
  ADD PRIMARY KEY (`id`),
  ADD KEY `atm` (`atm`),
  ADD KEY `analisis_oclusion` (`analisis_oclusion`),
  ADD KEY `examen_oral` (`examen_oral`),
  ADD KEY `hallazgos_radiograficos` (`hallazgos_radiograficos`);

--
-- Indices de la tabla `torus`
--
ALTER TABLE `torus`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `trabajo_paciente`
--
ALTER TABLE `trabajo_paciente`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `alergias_medicamentos`
--
ALTER TABLE `alergias_medicamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `analisis_oclusion`
--
ALTER TABLE `analisis_oclusion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `atm`
--
ALTER TABLE `atm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `cara`
--
ALTER TABLE `cara`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `desviacion`
--
ALTER TABLE `desviacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `direccion_paciente`
--
ALTER TABLE `direccion_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `dolor`
--
ALTER TABLE `dolor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `estado_diente`
--
ALTER TABLE `estado_diente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `examen_oral`
--
ALTER TABLE `examen_oral`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `examen_orofacial`
--
ALTER TABLE `examen_orofacial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `forma_residual`
--
ALTER TABLE `forma_residual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `habitos_tension`
--
ALTER TABLE `habitos_tension`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `hallazgos_radiograficos`
--
ALTER TABLE `hallazgos_radiograficos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `medico_paciente`
--
ALTER TABLE `medico_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `movimiento_mandibular`
--
ALTER TABLE `movimiento_mandibular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `odontograma`
--
ALTER TABLE `odontograma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `Paciente`
--
ALTER TABLE `Paciente`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `padecimientos`
--
ALTER TABLE `padecimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `plan_tratamiento`
--
ALTER TABLE `plan_tratamiento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `preguntas_paciente`
--
ALTER TABLE `preguntas_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pruebas_calor`
--
ALTER TABLE `pruebas_calor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pruebas_frio`
--
ALTER TABLE `pruebas_frio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `pruebas_termicas`
--
ALTER TABLE `pruebas_termicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `prueba_percusion`
--
ALTER TABLE `prueba_percusion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `relacion_incisal`
--
ALTER TABLE `relacion_incisal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `residual_mandibular`
--
ALTER TABLE `residual_mandibular`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `residual_maxilar`
--
ALTER TABLE `residual_maxilar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `sistema_estomatognatico`
--
ALTER TABLE `sistema_estomatognatico`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `torus`
--
ALTER TABLE `torus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `trabajo_paciente`
--
ALTER TABLE `trabajo_paciente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tratamientos`
--
ALTER TABLE `tratamientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `analisis_oclusion`
--
ALTER TABLE `analisis_oclusion`
  ADD CONSTRAINT `analisis_oclusion_ibfk_1` FOREIGN KEY (`movimiento_mandibular`) REFERENCES `movimiento_mandibular` (`id`),
  ADD CONSTRAINT `analisis_oclusion_ibfk_2` FOREIGN KEY (`relacion_incisal`) REFERENCES `relacion_incisal` (`id`);

--
-- Filtros para la tabla `atm`
--
ALTER TABLE `atm`
  ADD CONSTRAINT `atm_ibfk_1` FOREIGN KEY (`forma_residual`) REFERENCES `forma_residual` (`id`),
  ADD CONSTRAINT `atm_ibfk_2` FOREIGN KEY (`torus`) REFERENCES `torus` (`id`),
  ADD CONSTRAINT `atm_ibfk_3` FOREIGN KEY (`habitos_tension`) REFERENCES `habitos_tension` (`id`),
  ADD CONSTRAINT `desviacion` FOREIGN KEY (`desviacion`) REFERENCES `desviacion` (`id`);

--
-- Filtros para la tabla `estado_diente`
--
ALTER TABLE `estado_diente`
  ADD CONSTRAINT `estado_diente_ibfk_1` FOREIGN KEY (`id_odontograma`) REFERENCES `odontograma` (`id`);

--
-- Filtros para la tabla `examen_oral`
--
ALTER TABLE `examen_oral`
  ADD CONSTRAINT `examen_oral_ibfk_1` FOREIGN KEY (`pruebas_sens_termica`) REFERENCES `pruebas_termicas` (`id`),
  ADD CONSTRAINT `examen_oral_ibfk_2` FOREIGN KEY (`dolor`) REFERENCES `dolor` (`id`),
  ADD CONSTRAINT `examen_oral_ibfk_3` FOREIGN KEY (`pruebas_sens_periodontal`) REFERENCES `prueba_percusion` (`id`);

--
-- Filtros para la tabla `examen_orofacial`
--
ALTER TABLE `examen_orofacial`
  ADD CONSTRAINT `examen_orofacial_ibfk_1` FOREIGN KEY (`cara`) REFERENCES `cara` (`id`),
  ADD CONSTRAINT `examen_orofacial_ibfk_2` FOREIGN KEY (`sistema_estomatognatico`) REFERENCES `sistema_estomatognatico` (`id`),
  ADD CONSTRAINT `examen_orofacial_ibfk_3` FOREIGN KEY (`paciente`) REFERENCES `Paciente` (`id`);

--
-- Filtros para la tabla `forma_residual`
--
ALTER TABLE `forma_residual`
  ADD CONSTRAINT `mandibular` FOREIGN KEY (`mandibular`) REFERENCES `residual_mandibular` (`id`),
  ADD CONSTRAINT `maxilar` FOREIGN KEY (`maxilar`) REFERENCES `residual_maxilar` (`id`);

--
-- Filtros para la tabla `odontograma`
--
ALTER TABLE `odontograma`
  ADD CONSTRAINT `odontograma_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `Paciente` (`id`);

--
-- Filtros para la tabla `Paciente`
--
ALTER TABLE `Paciente`
  ADD CONSTRAINT `Paciente_ibfk_2` FOREIGN KEY (`domicilio`) REFERENCES `direccion_paciente` (`id`),
  ADD CONSTRAINT `Paciente_ibfk_3` FOREIGN KEY (`medico`) REFERENCES `medico_paciente` (`id`),
  ADD CONSTRAINT `Paciente_ibfk_4` FOREIGN KEY (`ocupacion`) REFERENCES `trabajo_paciente` (`id`);

--
-- Filtros para la tabla `plan_tratamiento`
--
ALTER TABLE `plan_tratamiento`
  ADD CONSTRAINT `plan_tratamiento_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `Paciente` (`id`),
  ADD CONSTRAINT `plan_tratamiento_ibfk_2` FOREIGN KEY (`id_tratamiento`) REFERENCES `tratamientos` (`id`);

--
-- Filtros para la tabla `preguntas_paciente`
--
ALTER TABLE `preguntas_paciente`
  ADD CONSTRAINT `alergias_medicamentos` FOREIGN KEY (`alergias_medicamentos`) REFERENCES `alergias_medicamentos` (`id`),
  ADD CONSTRAINT `paciente_preguntas_fk` FOREIGN KEY (`paciente`) REFERENCES `Paciente` (`id`),
  ADD CONSTRAINT `padecimientos` FOREIGN KEY (`padecimientos`) REFERENCES `padecimientos` (`id`);

--
-- Filtros para la tabla `pruebas_termicas`
--
ALTER TABLE `pruebas_termicas`
  ADD CONSTRAINT `pruebas_termicas_ibfk_1` FOREIGN KEY (`frio`) REFERENCES `pruebas_frio` (`id`),
  ADD CONSTRAINT `pruebas_termicas_ibfk_2` FOREIGN KEY (`calor`) REFERENCES `pruebas_calor` (`id`);

--
-- Filtros para la tabla `sistema_estomatognatico`
--
ALTER TABLE `sistema_estomatognatico`
  ADD CONSTRAINT `sistema_estomatognatico_ibfk_1` FOREIGN KEY (`atm`) REFERENCES `atm` (`id`),
  ADD CONSTRAINT `sistema_estomatognatico_ibfk_2` FOREIGN KEY (`examen_oral`) REFERENCES `examen_oral` (`id`),
  ADD CONSTRAINT `sistema_estomatognatico_ibfk_3` FOREIGN KEY (`analisis_oclusion`) REFERENCES `analisis_oclusion` (`id`),
  ADD CONSTRAINT `sistema_estomatognatico_ibfk_4` FOREIGN KEY (`hallazgos_radiograficos`) REFERENCES `hallazgos_radiograficos` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
