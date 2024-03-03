-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-02-2024 a las 23:58:17
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_hipertv`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Telefono` bigint(100) NOT NULL,
  `Email` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`IdCliente`, `Nombre`, `Telefono`, `Email`) VALUES
(1, 'Ana María ', 1239876543, 'ana.gutierrez@email.com'),
(2, 'Carlos Martínez', 5557890123, 'carlos.martinez@gmail.com'),
(3, 'Laura Pérez González', 998475624, 'laura.perez@email.com'),
(4, 'Juan Ramírez', 9984760458, 'juan.ramirez@hotmail.com'),
(5, 'María Fernández', 9986740258, 'maria.fernandez@email.com'),
(6, 'Javier Pérez', 555654210, 'javier.perez@email.com'),
(7, 'Rick Sánchez', 998725345, 'sanchez@email.com'),
(8, 'Rebeca González', 9983750978, 'rebegonzalez@email.com'),
(9, 'Pedro putin', 9982570458, 'putinpedro@email.com'),
(10, 'Isabel Torres', 9984760453, 'isabel.torres@email.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `IdPantalla` int(11) NOT NULL,
  `Identificador` varchar(45) NOT NULL,
  `ModeloTv` varchar(45) DEFAULT NULL,
  `Fecha_Entrada` date NOT NULL,
  `Fecha_Salida` date DEFAULT NULL,
  `Roles_IdRol` int(11) NOT NULL,
  `Activo` int(11) NOT NULL,
  `Cliente_IdCliente` int(11) NOT NULL,
  `Reporte_IdReporte` int(11) NOT NULL,
  `Usuarios_IdUsuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`IdPantalla`, `Identificador`, `ModeloTv`, `Fecha_Entrada`, `Fecha_Salida`, `Roles_IdRol`, `Activo`, `Cliente_IdCliente`, `Reporte_IdReporte`, `Usuarios_IdUsuario`) VALUES
(1, 'TV789012', 'Curved OLED 8K', '2024-05-14', '2024-02-28', 107, 9, 7, 7, 13),
(2, 'TV345678', 'QuantumSense A700', '2024-06-22', '2024-06-30', 108, 7, 8, 8, 13),
(3, 'TV123456', 'SmartTV Ultra HD 4K', '2024-05-15', '2024-02-28', 106, 5, 6, 6, 12),
(4, 'TV1234', ' SmartVision X500', '2023-03-15', '2025-01-20', 101, 5, 1, 1, 13),
(6, 'TV6543', 'MegaView 8K', '2022-06-20', '2022-07-20', 105, 5, 5, 5, 13),
(7, 'TV5678', 'UltraHD Pro 9000', '2022-11-10', '2025-01-20', 102, 5, 2, 2, 13),
(8, ' TV9876', 'SlimScreen 300', '2024-05-02', '2024-12-15', 103, 5, 3, 3, 13),
(9, 'TV789045', 'UltraView Z900', '2024-11-10', '2024-11-30', 109, 6, 9, 9, 13),
(10, 'TV789045', 'SmartVision X500', '2024-06-05', '2024-06-22', 10, 3, 10, 10, 13),
(104, 'TV4321', ' TechMaster 4K', '2023-09-08', '2023-09-09', 104, 6, 4, 4, 13);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reporte`
--

CREATE TABLE `reporte` (
  `IdReporte` int(11) NOT NULL,
  `Problema` text NOT NULL,
  `Requerimiento` varchar(45) DEFAULT NULL,
  `ReporteFinal` longtext DEFAULT NULL,
  `CostoFinal` bigint(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reporte`
--

INSERT INTO `reporte` (`IdReporte`, `Problema`, `Requerimiento`, `ReporteFinal`, `CostoFinal`) VALUES
(1, 'Error de conexión ', ' Solucionar el problema de conexión y mejorar', 'Se implementó una corrección en el código para resolver el error de conexión. La aplicación ahora funciona correctamente.', 400),
(2, ' Fallo en la funcionalidad se apaga solo', 'Corregir el fallo de funcionamiento', ' Se realizó una revisión y se mejoró la funcionalidad ', 300),
(3, 'Pantalla parpadea intermitentemente', 'Reparación de la pantalla ', 'Se reemplazó la placa de control de la pantalla y se realizaron pruebas exitosas.', 1100),
(4, ' Sin audio', 'Reparación del sistema de audio ', ' Se reemplazó el módulo de audio y se realizaron pruebas satisfactorias.', 800),
(5, ' Imagen distorsionada', 'Reparación del procesador de video o reemplaz', 'Se reemplazó la tarjeta de gráficos y se realizaron ajustes en el procesador de video.', 1500),
(6, ' Control remoto no funciona', 'Reparación del receptor infrarrojo ', 'Se reparó el receptor infrarrojo y se proporcionó un nuevo control remoto.', 200),
(7, 'Menú en pantalla no responde', 'Reparación de la interfaz de usuario ', 'Se solucionó el problema de la interfaz y se realizó una actualización del software.', 500),
(8, 'Brillo inconsistente en la pantalla', 'Calibración del panel o reemplazo de la retro', 'Se realizó la calibración del panel y se reemplazó la retroiluminación defectuosa.', 300),
(9, 'Pantalla con píxeles muertos', ' Reemplazar la pantalla defectuosa', 'La pantalla fue reemplazada con éxito, y el televisor funciona correctamente.', 800),
(10, 'Colores desaturados', 'Calibración de colores', 'Se realizó la calibración de colores, la calidad de imagen mejoró.', 100);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `IdRol` int(11) NOT NULL,
  `Rol` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`IdRol`, `Rol`) VALUES
(101, 'Admin'),
(102, 'Gerente'),
(103, 'Empleado');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `IdUsuario` int(11) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `Usuario` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Roles_IdRol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`IdUsuario`, `Nombre`, `Apellido`, `Usuario`, `Email`, `Roles_IdRol`) VALUES
(11, 'luis', 'vidales', 'LuisMi', 'luis.miguel@hotmail.com', 101),
(12, 'Roberto ', 'carrazco', 'RobertSos', 'Robertina@hotmail.com', 102),
(13, 'Edgar ', 'Olan', 'Edgarpatua', 'Edgarss@hotmail,com', 103);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`IdPantalla`),
  ADD KEY `Cliente_IdCliente` (`Cliente_IdCliente`),
  ADD KEY `Reporte_IdReporte` (`Reporte_IdReporte`),
  ADD KEY `Usuarios_IdUsuario` (`Usuarios_IdUsuario`);

--
-- Indices de la tabla `reporte`
--
ALTER TABLE `reporte`
  ADD PRIMARY KEY (`IdReporte`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`IdRol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`IdUsuario`),
  ADD KEY `Roles_IdRol` (`Roles_IdRol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `IdCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `IdPantalla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2025;

--
-- AUTO_INCREMENT de la tabla `reporte`
--
ALTER TABLE `reporte`
  MODIFY `IdReporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `IdRol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `IdUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`Cliente_IdCliente`) REFERENCES `cliente` (`IdCliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_ibfk_2` FOREIGN KEY (`Reporte_IdReporte`) REFERENCES `reporte` (`IdReporte`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventario_ibfk_3` FOREIGN KEY (`Usuarios_IdUsuario`) REFERENCES `usuarios` (`IdUsuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Roles_IdRol`) REFERENCES `roles` (`IdRol`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
