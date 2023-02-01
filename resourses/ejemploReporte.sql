
-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-12-2019 a las 14:41:12
-- Versión del servidor: 10.2.22-MariaDB-1:10.2.22+maria~bionic
-- Versión de PHP: 7.3.9-1+ubuntu18.04.1+deb.sury.org+1
create database reporte;
use reporte;
-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- SET AUTOCOMMIT = 0;
-- START TRANSACTION;
-- SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reporte`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salario`
--

CREATE TABLE salario (
  id int(11) NOT NULL,
  pais varchar(50) NOT NULL,
  salario double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `salario`
--

INSERT INTO salario (id, pais, salario) VALUES
(1, 'Mexico', 500),
(2, 'USA', 1500),
(3, 'Canada', 1300),
(4, 'Japon', 1100);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `salario`
--
ALTER TABLE salario ADD PRIMARY KEY (id);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `salario`
--
ALTER TABLE salario
  MODIFY id int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

select * from salario;
 
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- reporte.sql
-- Mostrando reporte.sql.