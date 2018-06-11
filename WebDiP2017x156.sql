-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb2+deb7u8
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jun 11, 2018 at 05:41 PM
-- Server version: 5.5.59
-- PHP Version: 5.4.45-0+deb7u12

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `WebDiP2017x156`
--

-- --------------------------------------------------------

--
-- Table structure for table `dnevnik_rada`
--

CREATE TABLE IF NOT EXISTS `dnevnik_rada` (
  `id_dnevnik_rada` int(11) NOT NULL AUTO_INCREMENT,
  `korisnik` text,
  `adresa` text,
  `skripta` text CHARACTER SET latin1,
  `upit` text,
  `preglednik` text,
  `vrijeme` text,
  PRIMARY KEY (`id_dnevnik_rada`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2281 ;

--
-- Dumping data for table `dnevnik_rada`
--

INSERT INTO `dnevnik_rada` (`id_dnevnik_rada`, `korisnik`, `adresa`, `skripta`, `upit`, `preglednik`, `vrijeme`) VALUES
(1814, 'admin', '::1', '/webdip/projekt/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 21:32:59'),
(1815, 'admin', '::1', '/webdip/projekt/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 21:33:03'),
(1816, 'admin', '::1', '/webdip/projekt/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT * FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 21:33:03'),
(1817, 'admin', '::1', '/webdip/projekt/dohvatiTablicu.php?tablica=dnevnik_rada', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = dnevnik_rada', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 21:33:03'),
(1818, 'admin', '::1', '/webdip/projekt/dohvatiTablicu.php?tablica=dnevnik_rada', 'SELECT * FROM dnevnik_rada', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 21:33:03'),
(1819, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:23:55'),
(1820, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:24:07'),
(1821, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:24:07'),
(1822, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:24:07'),
(1823, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:29:46'),
(1824, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=postavke_sustava', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:29:52'),
(1825, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=postavke_sustava', 'SELECT * FROM postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:29:52'),
(1826, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:29:57'),
(1827, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:29:59'),
(1828, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=prijava_natjecaj', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:29:59'),
(1829, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=prijava_natjecaj', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:29:59'),
(1830, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:30:02'),
(1831, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:30:03'),
(1832, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT * FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:30:03'),
(1833, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=dnevnik_rada', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = dnevnik_rada', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:30:04'),
(1834, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=dnevnik_rada', 'SELECT * FROM dnevnik_rada', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:30:04'),
(1835, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:31:12'),
(1836, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:31:12'),
(1837, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:39:22'),
(1838, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=postavke_sustava', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:39:24'),
(1839, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=postavke_sustava', 'SELECT * FROM postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:39:24'),
(1840, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:39:26'),
(1841, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:39:39'),
(1842, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:39:39'),
(1843, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:09'),
(1844, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:09'),
(1845, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:09'),
(1846, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:09'),
(1847, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:14'),
(1848, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:14'),
(1849, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:14'),
(1850, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:14'),
(1851, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:14'),
(1852, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'UPDATE prijava_natjecaj SET pin = 1,kolicina_povrsine = 2,broj_stoke = 3,vrijednost_strojeva = 400,ext_natjecaj = 9,ext_korisnik = 14 WHERE id_prijava_natjecaj = 13', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:14'),
(1853, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:16'),
(1854, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:21'),
(1855, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:21'),
(1856, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:24'),
(1857, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:24'),
(1858, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:24'),
(1859, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 15:40:24'),
(1860, 'mvuk1', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=reg', 'INSERT INTO korisnik(ime,prezime,kor_ime,email,lozinka,hash_lozinka,vrijeme,aktivacijski_kod,vrijeme_registracije) VALUES(sdalfkj,alsdkfj,mvuk1,fedo@99pubblicita.com,mvuk,a02505319215cf7b43a0ad809b966837e9d1cd35,1528640258,02eb37d64c0b,2018-06-10 16:17:38);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:17:38'),
(1861, 'mvuk1', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:40'),
(1862, 'mvuk1', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:42'),
(1863, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:46'),
(1864, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:47'),
(1865, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:49'),
(1866, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT * FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:49'),
(1867, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/obrisiIzTablice.php', 'DELETE FROM korisnik WHERE id_korisnik = 24', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:51'),
(1868, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php?odabirTablica=korisnik', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:52'),
(1869, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php?odabirTablica=korisnik', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:52'),
(1870, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php?odabirTablica=korisnik', 'SELECT * FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:52'),
(1871, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:54'),
(1872, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT * FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:54'),
(1873, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:24:56'),
(1874, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:10'),
(1875, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:13'),
(1876, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:14'),
(1877, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT * FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:14'),
(1878, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:24'),
(1879, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT vrsta , id_tip_korisnika FROM tip_korisnika', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:24'),
(1880, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:39'),
(1881, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT vrsta , id_tip_korisnika FROM tip_korisnika', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:39'),
(1882, 'mvuk', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO korisnik(ime,prezime,kor_ime,email,lozinka,hash_lozinka,vrijeme,aktivacijski_kod,vrijeme_registracije,aktiviran,ext_tip_korisnika) VALUES(mvuk,mvuk,mvuk,mvuk@foi.hr,mvuk,f82585c8851f4197bc04b6ee10122c707acd755c,1528640739,fda2d9c744a3,2018-06-10 16:25:39,1,3);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:39'),
(1883, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php?', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:39'),
(1884, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:25:41'),
(1885, 'mvuk', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:26:21'),
(1886, 'mvuk', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:28:45'),
(1887, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 16:30:22'),
(1888, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:30:50'),
(1889, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:30:53'),
(1890, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT * FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:30:53'),
(1891, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/obrisiIzTablice.php', 'DELETE FROM korisnik WHERE id_korisnik = 25', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:30:56'),
(1892, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php?odabirTablica=korisnik', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:30:56'),
(1893, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php?odabirTablica=korisnik', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:30:56'),
(1894, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php?odabirTablica=korisnik', 'SELECT * FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:30:56'),
(1895, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:31:11'),
(1896, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:31:11'),
(1897, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-10 19:31:11'),
(1898, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:29:51'),
(1899, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:29:52'),
(1900, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:01'),
(1901, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=pozicija', 'SELECT * FROM pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:01'),
(1902, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:05'),
(1903, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:08'),
(1904, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:11'),
(1905, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:11'),
(1906, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:12'),
(1907, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:12'),
(1908, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:12'),
(1909, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:22'),
(1910, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:22'),
(1911, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:22'),
(1912, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO prijava_natjecaj(pin,kolicina_povrsine,broj_stoke,vrijednost_strojeva,ext_natjecaj,ext_korisnik) VALUES(777,56,065,578,6,14);', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:22'),
(1913, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:27'),
(1914, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:27'),
(1915, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:27'),
(1916, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO prijava_natjecaj(pin,kolicina_povrsine,broj_stoke,vrijednost_strojeva,ext_natjecaj,ext_korisnik) VALUES(,,,,9,14);', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:27'),
(1917, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:31'),
(1918, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=moderator_pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = moderator_pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:33'),
(1919, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=moderator_pozicija', 'SELECT * FROM moderator_pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:33'),
(1920, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:36'),
(1921, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:36'),
(1922, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:50'),
(1923, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:50'),
(1924, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:50'),
(1925, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:59'),
(1926, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:59'),
(1927, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:59'),
(1928, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO prijava_natjecaj(pin,kolicina_povrsine,broj_stoke,vrijednost_strojeva,ext_natjecaj,ext_korisnik) VALUES(6,6,6,6,9,14);', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:30:59'),
(1929, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:01'),
(1930, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:05'),
(1931, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:05'),
(1932, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:14'),
(1933, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:14'),
(1934, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:14'),
(1935, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:14'),
(1936, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:22'),
(1937, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:22'),
(1938, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_natjecaj FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:22'),
(1939, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:22'),
(1940, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:22'),
(1941, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'UPDATE prijava_natjecaj SET pin = 6,kolicina_povrsine = 6,broj_stoke = 654,vrijednost_strojeva = 6,ext_natjecaj = 9,ext_korisnik = 14 WHERE id_prijava_natjecaj = 16', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:22'),
(1942, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:25'),
(1943, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:28'),
(1944, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 20:31:28'),
(1945, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:10'),
(1946, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:12'),
(1947, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=natjecaj', 'SELECT * FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:12'),
(1948, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:17'),
(1949, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:17'),
(1950, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:17'),
(1951, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:39'),
(1952, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:39'),
(1953, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:39'),
(1954, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:39'),
(1955, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'UPDATE natjecaj SET naziv = natjecaj4,otvoren_od = 2018-01-01,otvoren_do = 2018-07-08,broj_mjesta = 10,iznos = 100,komentar = komentar i opis,ext_kategorija_natjecaj = 3 WHERE id_natjecaj = 9', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:39'),
(1956, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:41'),
(1957, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:45'),
(1958, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=natjecaj', 'SELECT * FROM natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:45'),
(1959, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas_pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas_pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:57'),
(1960, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas_pozicija', 'SELECT * FROM oglas_pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:57'),
(1961, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas_pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:58'),
(1962, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:58'),
(1963, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT stranica , id_pozicija FROM pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:32:58'),
(1964, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas_pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:05'),
(1965, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:05'),
(1966, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT stranica , id_pozicija FROM pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:05'),
(1967, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO oglas_pozicija(ext_oglas,ext_pozicija) VALUES(2,1);', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:05'),
(1968, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:09'),
(1969, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas_pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas_pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:14'),
(1970, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas_pozicija', 'SELECT * FROM oglas_pozicija', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:14'),
(1971, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:19');
INSERT INTO `dnevnik_rada` (`id_dnevnik_rada`, `korisnik`, `adresa`, `skripta`, `upit`, `preglednik`, `vrijeme`) VALUES
(1972, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:19'),
(1973, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:19'),
(1974, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:35'),
(1975, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:35'),
(1976, 'admin', '95.168.124.3', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-10 17:33:38'),
(1977, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:32:59'),
(1978, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:03'),
(1979, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:03'),
(1980, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:03'),
(1981, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:03'),
(1982, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:13'),
(1983, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:13'),
(1984, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:22'),
(1985, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:26'),
(1986, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:26'),
(1987, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:42'),
(1988, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:42'),
(1989, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:50'),
(1990, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:50'),
(1991, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:50'),
(1992, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:50'),
(1993, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:56'),
(1994, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:33:59'),
(1995, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:04'),
(1996, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:04'),
(1997, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:18'),
(1998, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:18'),
(1999, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:18'),
(2000, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:18'),
(2001, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:27'),
(2002, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:27'),
(2003, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:27'),
(2004, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:27'),
(2005, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(0,23,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:27'),
(2006, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:33'),
(2007, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:33'),
(2008, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:55'),
(2009, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:34:59'),
(2010, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:02'),
(2011, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:02'),
(2012, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:02'),
(2013, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:02'),
(2014, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:04'),
(2015, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:04'),
(2016, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:04'),
(2017, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:04'),
(2018, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas) VALUES(23,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:04'),
(2019, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:07'),
(2020, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:07'),
(2021, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:09'),
(2022, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:09'),
(2023, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:15'),
(2024, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:23'),
(2025, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:26'),
(2026, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:26'),
(2027, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:26'),
(2028, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:26'),
(2029, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:28'),
(2030, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:28'),
(2031, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:28'),
(2032, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:28'),
(2033, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas) VALUES(17,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:28'),
(2034, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:31'),
(2035, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:31'),
(2036, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:46'),
(2037, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:46'),
(2038, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:46'),
(2039, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:35:46'),
(2040, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:36'),
(2041, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:36'),
(2042, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:36'),
(2043, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:36'),
(2044, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:40'),
(2045, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:40'),
(2046, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:40'),
(2047, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:40'),
(2048, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(0,23,2,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:40'),
(2049, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:42'),
(2050, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:36:42'),
(2051, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:14'),
(2052, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:14'),
(2053, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:14'),
(2054, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:14'),
(2055, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:18'),
(2056, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:18'),
(2057, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:18'),
(2058, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:18'),
(2059, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(0,23,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:18'),
(2060, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:28'),
(2061, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:28'),
(2062, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:28'),
(2063, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:28'),
(2064, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(0,23,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:28'),
(2065, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:30'),
(2066, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:30'),
(2067, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:30'),
(2068, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:30'),
(2069, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(,23,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:37:30'),
(2070, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:36'),
(2071, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:36'),
(2072, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:36'),
(2073, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:36'),
(2074, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(0,23,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:36'),
(2075, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:39'),
(2076, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:39'),
(2077, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:39'),
(2078, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:39'),
(2079, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:42'),
(2080, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:42'),
(2081, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:42'),
(2082, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:42'),
(2083, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(1,23,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:38:42'),
(2084, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:13'),
(2085, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:13'),
(2086, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:13'),
(2087, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:13'),
(2088, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:18'),
(2089, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:18'),
(2090, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:18'),
(2091, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:18'),
(2092, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(0,23,3,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:18'),
(2093, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:32'),
(2094, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:32'),
(2095, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:32'),
(2096, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:32'),
(2097, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas,prihvacen) VALUES(0,23,3,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:39:32'),
(2098, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:41:58'),
(2099, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:41:58'),
(2100, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:41:58'),
(2101, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:41:58'),
(2102, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:42:02'),
(2103, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:42:02'),
(2104, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:42:02'),
(2105, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:42:02'),
(2106, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas) VALUES(17,5,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:42:02'),
(2107, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:42:04'),
(2108, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:42:04'),
(2109, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 16:42:12'),
(2110, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:10'),
(2111, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:12'),
(2112, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = kategorija_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:15'),
(2113, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT * FROM kategorija_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:15'),
(2114, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = kategorija_natjecaj', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:20'),
(2115, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:24'),
(2116, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:29'),
(2117, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:29'),
(2118, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:33'),
(2119, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:33'),
(2120, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:33'),
(2121, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:38'),
(2122, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:39'),
(2123, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:39'),
(2124, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO nepozeljni_oglasi(ext_oglas,ext_korisnik,razlog,vrijeme_prijave) VALUES(neki razlog,,4,23);', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:39'),
(2125, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:43'),
(2126, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:46'),
(2127, 'admin', '31.217.16.242', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Linux; Android 7.0; SM-G955F Build/NRD90M) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.158 Mobile Safari/537.36', '2018-06-11 17:02:46'),
(2128, 'temp1', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=reg', 'INSERT INTO korisnik(ime,prezime,kor_ime,email,lozinka,hash_lozinka,vrijeme,aktivacijski_kod,vrijeme_registracije) VALUES(temp,temp,temp1,cimara@vpslists.com,temp,775ecc3147fa5acab75a9de9a98c9580067fd874,1528730114,f205ba98df75,2018-06-11 17:15:14);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:15:14'),
(2129, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:15:32'),
(2130, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:15:36');
INSERT INTO `dnevnik_rada` (`id_dnevnik_rada`, `korisnik`, `adresa`, `skripta`, `upit`, `preglednik`, `vrijeme`) VALUES
(2131, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:15:58'),
(2132, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:16:50'),
(2133, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/odjava.php', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:16:54'),
(2134, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:17:12'),
(2135, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:17:14'),
(2136, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:17:16'),
(2137, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT * FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:17:16'),
(2138, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=dnevnik_rada', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = dnevnik_rada', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:17:17'),
(2139, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=dnevnik_rada', 'SELECT * FROM dnevnik_rada', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:17:17'),
(2140, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=postavke_sustava', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:17:58'),
(2141, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=postavke_sustava', 'SELECT * FROM postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:17:58'),
(2142, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas_pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:03'),
(2143, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas_pozicija', 'SELECT * FROM oglas_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:03'),
(2144, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:07'),
(2145, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:07'),
(2146, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT stranica , id_pozicija FROM pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:07'),
(2147, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:11'),
(2148, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:13'),
(2149, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=natjecaj', 'SELECT * FROM natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:13'),
(2150, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:15'),
(2151, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:15'),
(2152, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:37'),
(2153, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:37'),
(2154, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO natjecaj(naziv,otvoren_od,otvoren_do,broj_mjesta,iznos,komentar,ext_kategorija_natjecaj) VALUES(test natjecaj,date(2018-01-01),date(2019-01-01),100,100,askldjlask,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:37'),
(2155, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:56'),
(2156, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:58'),
(2157, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=natjecaj', 'SELECT * FROM natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:18:58'),
(2158, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-13 05:19:24'),
(2159, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:20:53'),
(2160, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas_pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:20:57'),
(2161, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas_pozicija', 'SELECT * FROM oglas_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:20:57'),
(2162, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:04'),
(2163, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=oglas', 'SELECT * FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:04'),
(2164, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:06'),
(2165, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=pozicija', 'SELECT * FROM pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:06'),
(2166, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:09'),
(2167, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:19'),
(2168, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO pozicija(stranica,lokacija,sirina,visina) VALUES(4,2,100,100);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:19'),
(2169, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:21'),
(2170, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=moderator_pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = moderator_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:24'),
(2171, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=moderator_pozicija', 'SELECT * FROM moderator_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:24'),
(2172, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = moderator_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:27'),
(2173, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:27'),
(2174, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT stranica , id_pozicija FROM pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:27'),
(2175, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = moderator_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:34'),
(2176, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:34'),
(2177, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'SELECT stranica , id_pozicija FROM pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:34'),
(2178, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php', 'INSERT INTO moderator_pozicija(ext_korisnik,ext_pozicija) VALUES(17,2);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:34'),
(2179, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:42'),
(2180, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=postavke_sustava', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:44'),
(2181, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=postavke_sustava', 'SELECT * FROM postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:21:44'),
(2182, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:22:14'),
(2183, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:22:21'),
(2184, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = postavke_sustava', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:22:21'),
(2185, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/azurirajTablicu.php', 'UPDATE postavke_sustava SET trajanje_kolacica = 48,pomak_vremena = 2,izgled_sucelja = 1,stranicenje = 2,trajanje_sesije = 48,sakrij_logo = 0,trajanje_aktivacijskog_koda = 24 WHERE id_postavke_sustava = 1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:22:21'),
(2186, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:22:24'),
(2187, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:22:28'),
(2188, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=korisnik', 'SELECT * FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:22:29'),
(2189, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaRegistracija.php?mod=log', '', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:22:42'),
(2190, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:22:46'),
(2191, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=natjecaj', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:22:46'),
(2192, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:23:47'),
(2193, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=natjecaj', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:23:47'),
(2194, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=natjecaj', 'INSERT INTO natjecaj(naziv,otvoren_od,otvoren_do,broj_mjesta,iznos,komentar,ext_kategorija_natjecaj) VALUES(natjecaj123,date(2018-06-10),date(2018-06-08),20,100,asdfklj,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:23:47'),
(2195, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:24:09'),
(2196, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=natjecaj', 'SELECT naziv , id_kategorija_natjecaj FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:24:09'),
(2197, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=natjecaj', 'INSERT INTO natjecaj(naziv,otvoren_od,otvoren_do,broj_mjesta,iznos,komentar,ext_kategorija_natjecaj) VALUES(natjeca321,date(2018-06-10),date(2018-07-11),1,200,laksfasdkl,4);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:24:09'),
(2198, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=vrsta_oglasa', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:24:25'),
(2199, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=vrsta_oglasa', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:03'),
(2200, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=vrsta_oglasa', 'INSERT INTO vrsta_oglasa(trajanje,brzina_izmjene,cijena,vrsta_oglasa) VALUES(200,2000,200,vrsta1);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:03'),
(2201, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:12'),
(2202, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:12'),
(2203, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=vrsta_oglasa_pozicija', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = vrsta_oglasa_pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:34'),
(2204, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=vrsta_oglasa_pozicija', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:34'),
(2205, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=vrsta_oglasa_pozicija', 'SELECT stranica , id_pozicija FROM pozicija', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:34'),
(2206, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:51'),
(2207, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:25:51'),
(2208, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:26:30'),
(2209, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:26:30'),
(2210, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:26:33'),
(2211, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:26:33'),
(2212, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:26:43'),
(2213, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:26:43'),
(2214, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:26:43'),
(2215, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:26:48'),
(2216, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:26:48'),
(2217, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:26:48'),
(2218, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'INSERT INTO nepozeljni_oglasi(ext_oglas,ext_korisnik,razlog,vrijeme_prijave) VALUES(neki razlog,,4,23);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:26:48'),
(2219, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:26:53'),
(2220, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:26:53'),
(2221, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:02'),
(2222, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:02'),
(2223, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:06'),
(2224, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:06'),
(2225, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:06'),
(2226, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:16'),
(2227, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:16'),
(2228, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:16'),
(2229, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=nepozeljni_oglasi', 'INSERT INTO nepozeljni_oglasi(ext_oglas,ext_korisnik,razlog,vrijeme_prijave) VALUES(neki razlog,,3,14);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:27:16'),
(2230, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:19'),
(2231, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:19'),
(2232, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:20'),
(2233, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:20'),
(2234, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:21'),
(2235, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:21'),
(2236, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:25'),
(2237, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:25'),
(2238, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:33'),
(2239, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:33'),
(2240, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:53'),
(2241, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:53'),
(2242, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:53'),
(2243, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:57'),
(2244, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:57'),
(2245, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:27:57'),
(2246, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:23'),
(2247, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:23'),
(2248, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:23'),
(2249, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'INSERT INTO oglas(naziv,opis,url,prikazivanje_od,prikazivanje_do,broj_klikova,ext_vrsta_oglasa,ext_korisnik) VALUES(oglas11,asdflkj,url,date(2018-06-11),date(2018-07-11),0,3,17);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:23'),
(2250, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:48'),
(2251, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:48'),
(2252, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:48'),
(2253, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:48'),
(2254, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:58'),
(2255, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:58'),
(2256, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:58'),
(2257, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'SELECT naziv , id_oglas FROM oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:58'),
(2258, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=zahtjev_za_oglas', 'INSERT INTO zahtjev_za_oglas(ext_korisnik,ext_vrsta_oglasa,ext_oglas) VALUES(23,4,5);', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:28:58'),
(2259, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:29:00'),
(2260, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-07-23 09:29:00'),
(2261, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-07-23 09:31:37'),
(2262, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-06-11 17:32:16'),
(2263, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/prijavaNatjecaj.php?tab=prijava_natjecaj', 'SELECT * FROM prijava_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-06-11 17:32:16'),
(2264, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:32:46'),
(2265, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:32:47'),
(2266, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT * FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:32:47'),
(2267, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=nepozeljni_oglasi', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:32:50'),
(2268, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=nepozeljni_oglasi', 'SELECT * FROM nepozeljni_oglasi', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:32:50'),
(2269, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:32:53'),
(2270, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=kategorija_natjecaj', 'SELECT * FROM kategorija_natjecaj', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:32:53'),
(2271, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=dnevnik_rada', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = dnevnik_rada', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:33:03'),
(2272, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=dnevnik_rada', 'SELECT * FROM dnevnik_rada', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:33:03'),
(2273, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=moderator_vrsta_pozicija_oglasa', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = moderator_vrsta_pozicija_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:34:19'),
(2274, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tablica=moderator_vrsta_pozicija_oglasa', 'SELECT * FROM moderator_vrsta_pozicija_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:34:19'),
(2275, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-06-11 17:34:24'),
(2276, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT vrsta_oglasa , id_vrsta_oglasa FROM vrsta_oglasa', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-06-11 17:34:24'),
(2277, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dodajUTablicu.php?imeTablice=oglas', 'SELECT kor_ime , id_korisnik FROM korisnik', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-06-11 17:34:24'),
(2278, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE table_name = zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-06-11 17:34:27'),
(2279, 'mod', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/dohvatiTablicu.php?tab=zahtjev_za_oglas', 'SELECT * FROM zahtjev_za_oglas', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/64.0.3282.140 Safari/537.36 Edge/17.17134', '2018-06-11 17:34:27'),
(2280, 'admin', '10.85.8.30', '/WebDiP/2017_projekti/WebDiP2017x156/crud.php', 'SELECT table_name FROM information_schema.tables where table_schema=WebDiP2017x156;', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36', '2018-06-11 17:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `kategorija_natjecaj`
--

CREATE TABLE IF NOT EXISTS `kategorija_natjecaj` (
  `id_kategorija_natjecaj` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) NOT NULL,
  `opis` varchar(45) DEFAULT NULL,
  `vrijeme_kreiranja` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_kategorija_natjecaj`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `kategorija_natjecaj`
--

INSERT INTO `kategorija_natjecaj` (`id_kategorija_natjecaj`, `naziv`, `opis`, `vrijeme_kreiranja`) VALUES
(2, 'Ratarstvo', 'Ratarstvo je poljoprivrena grana biljne proi', '2018-05-31 11:09:23'),
(3, 'Stočarstvo ', 'Stočarstvo jedna od primarnih djelatnost kojo', '2018-05-31 11:09:57'),
(4, 'Pčelarstvo', 'Pčelarstvo je specifična grana stočarstva koj', '2018-05-31 11:15:22');

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE IF NOT EXISTS `korisnik` (
  `id_korisnik` int(11) NOT NULL AUTO_INCREMENT,
  `kor_ime` varchar(45) CHARACTER SET latin1 NOT NULL,
  `email` varchar(45) CHARACTER SET latin1 NOT NULL,
  `lozinka` varchar(45) CHARACTER SET latin1 NOT NULL,
  `hash_lozinka` varchar(45) CHARACTER SET latin1 NOT NULL,
  `blokiran` tinyint(4) NOT NULL DEFAULT '0',
  `ext_tip_korisnika` int(11) NOT NULL DEFAULT '1',
  `ime` varchar(45) NOT NULL,
  `prezime` varchar(45) NOT NULL,
  `vrijeme` int(11) NOT NULL,
  `aktivacijski_kod` varchar(45) DEFAULT NULL,
  `aktiviran` tinyint(4) NOT NULL DEFAULT '0',
  `vrijeme_registracije` text NOT NULL,
  PRIMARY KEY (`id_korisnik`),
  UNIQUE KEY `id_korisnik_UNIQUE` (`id_korisnik`),
  KEY `fk_korisnik_tip_korisnika_idx` (`ext_tip_korisnika`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=27 ;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id_korisnik`, `kor_ime`, `email`, `lozinka`, `hash_lozinka`, `blokiran`, `ext_tip_korisnika`, `ime`, `prezime`, `vrijeme`, `aktivacijski_kod`, `aktiviran`, `vrijeme_registracije`) VALUES
(14, 'admin', 'admin@foi.hr', 'admin', 'ef9099764d0e9676a201c69dffc2ca67a9f6872e', 0, 3, 'admin', 'admin', 1527759314, NULL, 1, ''),
(17, 'mod', 'moderator@foi.hr', 'mod', '23fd307b210421e5bae252fe9b648022afd90b27', 0, 2, 'moderator', 'moderator', 1527759590, 'mod', 1, ''),
(18, 'reg', 'registriran@foi.hr', 'reg', '457ca5b4b1a35789c037297541bc482937feaadb', 0, 1, 'registriran', 'registriran', 1527759623, 'reg', 1, ''),
(23, 'neregistrirani', 'nereg@foi.hr', 'nereg', '6109a436d2e0d22a7fd9192530f83e37196df877', 0, 0, 'nereg', 'nereg', 1528574659, '866156d59929', 1, '2018-06-06 23:46:38');

-- --------------------------------------------------------

--
-- Table structure for table `moderator_natjecaj`
--

CREATE TABLE IF NOT EXISTS `moderator_natjecaj` (
  `id_moderator_natjecaj` int(11) NOT NULL AUTO_INCREMENT,
  `ext_korisnik` int(11) NOT NULL,
  `ext_kategorija_natjecaj` int(11) NOT NULL,
  PRIMARY KEY (`id_moderator_natjecaj`),
  KEY `fk_moderator_natjecaj_korisnik1_idx` (`ext_korisnik`),
  KEY `fk_moderator_natjecaj_kategorija_natjecaj1_idx` (`ext_kategorija_natjecaj`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `moderator_natjecaj`
--

INSERT INTO `moderator_natjecaj` (`id_moderator_natjecaj`, `ext_korisnik`, `ext_kategorija_natjecaj`) VALUES
(1, 14, 2),
(2, 23, 4);

-- --------------------------------------------------------

--
-- Table structure for table `moderator_pozicija`
--

CREATE TABLE IF NOT EXISTS `moderator_pozicija` (
  `id_moderator_pozicija` int(11) NOT NULL AUTO_INCREMENT,
  `ext_korisnik` int(11) DEFAULT NULL,
  `ext_pozicija` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_moderator_pozicija`),
  KEY `id_korisnik_idx` (`ext_korisnik`),
  KEY `f_key_pozicija_idx` (`ext_pozicija`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `moderator_pozicija`
--

INSERT INTO `moderator_pozicija` (`id_moderator_pozicija`, `ext_korisnik`, `ext_pozicija`) VALUES
(1, 14, 1),
(2, 17, 2);

-- --------------------------------------------------------

--
-- Table structure for table `moderator_vrsta_pozicija_oglasa`
--

CREATE TABLE IF NOT EXISTS `moderator_vrsta_pozicija_oglasa` (
  `id_moderator_vrsta_pozicija_oglasa` int(11) NOT NULL AUTO_INCREMENT,
  `ext_korisnik` int(11) NOT NULL,
  `ext_pozicija` int(11) NOT NULL,
  `ext_vrsta_oglasa` int(11) NOT NULL,
  PRIMARY KEY (`id_moderator_vrsta_pozicija_oglasa`),
  KEY `fk_moderator_vrsta_pozicija_oglasa_korisnik1_idx` (`ext_korisnik`),
  KEY `fk_moderator_vrsta_pozicija_oglasa_pozicija1_idx` (`ext_pozicija`),
  KEY `fk_moderator_vrsta_pozicija_oglasa_vrsta_oglasa1_idx` (`ext_vrsta_oglasa`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `moderator_vrsta_pozicija_oglasa`
--

INSERT INTO `moderator_vrsta_pozicija_oglasa` (`id_moderator_vrsta_pozicija_oglasa`, `ext_korisnik`, `ext_pozicija`, `ext_vrsta_oglasa`) VALUES
(1, 14, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `natjecaj`
--

CREATE TABLE IF NOT EXISTS `natjecaj` (
  `id_natjecaj` int(11) NOT NULL AUTO_INCREMENT,
  `naziv` varchar(45) CHARACTER SET latin1 NOT NULL,
  `otvoren_od` date NOT NULL,
  `otvoren_do` date NOT NULL,
  `broj_mjesta` int(11) NOT NULL,
  `iznos` float NOT NULL,
  `komentar` text CHARACTER SET latin1,
  `ext_kategorija_natjecaj` int(11) NOT NULL,
  PRIMARY KEY (`id_natjecaj`),
  KEY `fk_natjecaj_kategorija_natjecaj1_idx` (`ext_kategorija_natjecaj`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `natjecaj`
--

INSERT INTO `natjecaj` (`id_natjecaj`, `naziv`, `otvoren_od`, `otvoren_do`, `broj_mjesta`, `iznos`, `komentar`, `ext_kategorija_natjecaj`) VALUES
(6, 'Natjecaj1', '2018-06-10', '2018-06-07', 123, 100, 'natjecaj za dodjelu sredstava', 2),
(7, 'Natjecaj2', '2018-05-31', '2018-05-31', 123, 76987, 'natjecaj za dodjelu sredstava', 3),
(9, 'natjecaj4', '2018-01-01', '2018-07-08', 10, 100, 'komentar i opis', 3),
(10, 'test natjecaj', '2018-01-01', '2019-01-01', 100, 100, 'askldjlask', 4),
(11, 'natjecaj123', '2018-06-10', '2018-06-08', 20, 100, 'asdfklj', 4),
(12, 'natjeca321', '2018-06-10', '2018-07-11', 1, 200, 'laksfasdkl', 4);

-- --------------------------------------------------------

--
-- Table structure for table `nepozeljni_oglasi`
--

CREATE TABLE IF NOT EXISTS `nepozeljni_oglasi` (
  `id_nepozeljni_oglasi` int(11) NOT NULL AUTO_INCREMENT,
  `ext_oglas` int(11) DEFAULT NULL,
  `ext_korisnik` int(11) DEFAULT NULL,
  `razlog` text,
  `vrijeme_prijave` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_nepozeljni_oglasi`),
  KEY `fk_nepozeljni_oglasi_oglas1_idx` (`ext_oglas`),
  KEY `fk_nepozeljni_oglasi_korisnik1_idx` (`ext_korisnik`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `oglas`
--

CREATE TABLE IF NOT EXISTS `oglas` (
  `id_oglas` int(11) NOT NULL AUTO_INCREMENT,
  `id_vrsta` int(11) NOT NULL,
  `naziv` varchar(45) CHARACTER SET latin1 NOT NULL,
  `opis` text CHARACTER SET latin1 NOT NULL,
  `url` text CHARACTER SET latin1 NOT NULL,
  `prikazivanje_od` date NOT NULL,
  `prikazivanje_do` date NOT NULL,
  `broj_klikova` int(11) NOT NULL,
  `ext_vrsta_oglasa` int(11) NOT NULL,
  `ext_korisnik` int(11) NOT NULL,
  PRIMARY KEY (`id_oglas`),
  UNIQUE KEY `idoglas_UNIQUE` (`id_oglas`),
  KEY `fk_oglas_vrsta_oglasa1_idx` (`ext_vrsta_oglasa`),
  KEY `fk_korisnik_idx` (`ext_korisnik`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `oglas`
--

INSERT INTO `oglas` (`id_oglas`, `id_vrsta`, `naziv`, `opis`, `url`, `prikazivanje_od`, `prikazivanje_do`, `broj_klikova`, `ext_vrsta_oglasa`, `ext_korisnik`) VALUES
(2, 0, 'asfd', 'asdas', 'ajksdh', '2018-01-01', '2018-02-03', 1, 2, 0),
(3, 0, 'kljlkj', 'kljlkjlkjkl', 'jkljkljklj', '2019-02-02', '2019-03-02', 0, 2, 0),
(4, 0, 'asdasd', 'asdfasf', 'adg', '2018-01-01', '2019-01-01', 1, 2, 0),
(5, 0, 'oglas11', 'asdflkj', 'url', '2018-06-11', '2018-07-11', 0, 3, 17);

-- --------------------------------------------------------

--
-- Table structure for table `oglas_pozicija`
--

CREATE TABLE IF NOT EXISTS `oglas_pozicija` (
  `id_oglas_pozicija` int(11) NOT NULL AUTO_INCREMENT,
  `ext_oglas` int(11) DEFAULT NULL,
  `ext_pozicija` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_oglas_pozicija`),
  KEY `fk_oglas_pozicija_oglas1_idx` (`ext_oglas`),
  KEY `fk_oglas_pozicija_pozicija1_idx` (`ext_pozicija`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `oglas_pozicija`
--

INSERT INTO `oglas_pozicija` (`id_oglas_pozicija`, `ext_oglas`, `ext_pozicija`) VALUES
(1, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `postavke_sustava`
--

CREATE TABLE IF NOT EXISTS `postavke_sustava` (
  `id_postavke_sustava` int(11) NOT NULL AUTO_INCREMENT,
  `trajanje_kolacica` int(11) DEFAULT NULL,
  `pomak_vremena` int(11) DEFAULT NULL,
  `izgled_sucelja` int(11) DEFAULT NULL,
  `stranicenje` int(11) DEFAULT NULL,
  `trajanje_sesije` int(11) DEFAULT NULL,
  `sakrij_logo` int(11) DEFAULT NULL,
  `trajanje_aktivacijskog_koda` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_postavke_sustava`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `postavke_sustava`
--

INSERT INTO `postavke_sustava` (`id_postavke_sustava`, `trajanje_kolacica`, `pomak_vremena`, `izgled_sucelja`, `stranicenje`, `trajanje_sesije`, `sakrij_logo`, `trajanje_aktivacijskog_koda`) VALUES
(1, 48, 2, 1, 2, 48, 0, 24);

-- --------------------------------------------------------

--
-- Table structure for table `pozicija`
--

CREATE TABLE IF NOT EXISTS `pozicija` (
  `id_pozicija` int(11) NOT NULL AUTO_INCREMENT,
  `stranica` varchar(45) CHARACTER SET latin1 NOT NULL,
  `lokacija` varchar(45) CHARACTER SET latin1 NOT NULL,
  `sirina` int(11) NOT NULL,
  `visina` int(11) NOT NULL,
  PRIMARY KEY (`id_pozicija`),
  UNIQUE KEY `idpozicija_UNIQUE` (`id_pozicija`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `pozicija`
--

INSERT INTO `pozicija` (`id_pozicija`, `stranica`, `lokacija`, `sirina`, `visina`) VALUES
(1, '1', '1', 200, 100),
(2, '2', '2', 10, 100),
(3, '4', '2', 100, 100);

-- --------------------------------------------------------

--
-- Table structure for table `prijava_natjecaj`
--

CREATE TABLE IF NOT EXISTS `prijava_natjecaj` (
  `id_prijava_natjecaj` int(11) NOT NULL AUTO_INCREMENT,
  `pin` int(11) NOT NULL,
  `kolicina_povrsine` float NOT NULL,
  `broj_stoke` int(11) NOT NULL,
  `vrijednost_strojeva` float NOT NULL,
  `ext_natjecaj` int(11) NOT NULL,
  `ext_korisnik` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_prijava_natjecaj`),
  UNIQUE KEY `id_prijava_natjecaj_UNIQUE` (`id_prijava_natjecaj`),
  UNIQUE KEY `pin_UNIQUE` (`pin`),
  KEY `fk_prijava_natjecaj_natjecaj1_idx` (`ext_natjecaj`),
  KEY `fk_prijava_natjecaj_korisnik1_idx` (`ext_korisnik`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `prijava_natjecaj`
--

INSERT INTO `prijava_natjecaj` (`id_prijava_natjecaj`, `pin`, `kolicina_povrsine`, `broj_stoke`, `vrijednost_strojeva`, `ext_natjecaj`, `ext_korisnik`) VALUES
(13, 1, 2, 3, 400, 9, 14),
(15, 3, 4, 5, 6, 7, 18),
(16, 6, 6, 654, 6, 9, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tip_korisnika`
--

CREATE TABLE IF NOT EXISTS `tip_korisnika` (
  `id_tip_korisnika` int(11) NOT NULL AUTO_INCREMENT,
  `vrsta` varchar(45) CHARACTER SET latin1 NOT NULL,
  `opis` text,
  `vrijeme_kreiranja` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_tip_korisnika`),
  UNIQUE KEY `id_tip_korisnika_UNIQUE` (`id_tip_korisnika`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tip_korisnika`
--

INSERT INTO `tip_korisnika` (`id_tip_korisnika`, `vrsta`, `opis`, `vrijeme_kreiranja`) VALUES
(0, 'korisnik', 'Običan korisnik bez ovlasti', '0000-00-00 00:00:00'),
(1, 'registriran', 'Najniži rang ovlasti', '2018-05-26 09:40:27'),
(2, 'moderator', 'Srednji rang ovlasti', '2018-05-26 09:40:27'),
(3, 'admin', 'Najviši rang', '2018-05-26 09:40:27');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_oglasa`
--

CREATE TABLE IF NOT EXISTS `vrsta_oglasa` (
  `id_vrsta_oglasa` int(11) NOT NULL AUTO_INCREMENT,
  `trajanje` int(11) NOT NULL,
  `brzina_izmjene` int(11) NOT NULL,
  `cijena` float NOT NULL,
  `vrsta_oglasa` varchar(45) NOT NULL,
  PRIMARY KEY (`id_vrsta_oglasa`),
  UNIQUE KEY `idvrsta_oglasa_UNIQUE` (`id_vrsta_oglasa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vrsta_oglasa`
--

INSERT INTO `vrsta_oglasa` (`id_vrsta_oglasa`, `trajanje`, `brzina_izmjene`, `cijena`, `vrsta_oglasa`) VALUES
(2, 100, 200, 300, 'vrsta1'),
(3, 100, 20, 300, 'vrsta3'),
(4, 100, 100, 100, 'vrsta2'),
(5, 100, 100, 100, 'vrsta2'),
(6, 200, 2000, 200, 'vrsta1');

-- --------------------------------------------------------

--
-- Table structure for table `vrsta_oglasa_pozicija`
--

CREATE TABLE IF NOT EXISTS `vrsta_oglasa_pozicija` (
  `id_vrsta_oglasa_pozicija` int(11) NOT NULL AUTO_INCREMENT,
  `ext_vrsta_oglasa` int(11) DEFAULT NULL,
  `ext_pozicija` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_vrsta_oglasa_pozicija`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vrsta_oglasa_pozicija`
--

INSERT INTO `vrsta_oglasa_pozicija` (`id_vrsta_oglasa_pozicija`, `ext_vrsta_oglasa`, `ext_pozicija`) VALUES
(1, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `zahtjev_za_oglas`
--

CREATE TABLE IF NOT EXISTS `zahtjev_za_oglas` (
  `id_zahtjev_za_oglas` int(11) NOT NULL AUTO_INCREMENT,
  `ext_korisnik` int(11) NOT NULL,
  `ext_vrsta_oglasa` int(11) NOT NULL,
  `ext_oglas` int(11) NOT NULL,
  PRIMARY KEY (`id_zahtjev_za_oglas`),
  KEY `fk_zahtjev_za_oglas_korisnik1_idx` (`ext_korisnik`),
  KEY `fk_zahtjev_za_oglas_vrsta_oglasa1_idx` (`ext_vrsta_oglasa`),
  KEY `fk_zahtjev_za_oglas_oglas1_idx` (`ext_oglas`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `zahtjev_za_oglas`
--

INSERT INTO `zahtjev_za_oglas` (`id_zahtjev_za_oglas`, `ext_korisnik`, `ext_vrsta_oglasa`, `ext_oglas`) VALUES
(2, 23, 5, 4),
(3, 17, 5, 4),
(11, 17, 5, 4),
(12, 23, 4, 5);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD CONSTRAINT `fk_korisnik_tip_korisnika` FOREIGN KEY (`ext_tip_korisnika`) REFERENCES `tip_korisnika` (`id_tip_korisnika`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `moderator_natjecaj`
--
ALTER TABLE `moderator_natjecaj`
  ADD CONSTRAINT `fk_moderator_natjecaj_kategorija_natjecaj1` FOREIGN KEY (`ext_kategorija_natjecaj`) REFERENCES `kategorija_natjecaj` (`id_kategorija_natjecaj`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_moderator_natjecaj_korisnik1` FOREIGN KEY (`ext_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `moderator_pozicija`
--
ALTER TABLE `moderator_pozicija`
  ADD CONSTRAINT `f_key_moderator` FOREIGN KEY (`ext_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `f_key_pozicija` FOREIGN KEY (`ext_pozicija`) REFERENCES `pozicija` (`id_pozicija`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `moderator_vrsta_pozicija_oglasa`
--
ALTER TABLE `moderator_vrsta_pozicija_oglasa`
  ADD CONSTRAINT `fk_moderator_vrsta_pozicija_oglasa_korisnik1` FOREIGN KEY (`ext_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_moderator_vrsta_pozicija_oglasa_pozicija1` FOREIGN KEY (`ext_pozicija`) REFERENCES `pozicija` (`id_pozicija`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_moderator_vrsta_pozicija_oglasa_vrsta_oglasa1` FOREIGN KEY (`ext_vrsta_oglasa`) REFERENCES `vrsta_oglasa` (`id_vrsta_oglasa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `natjecaj`
--
ALTER TABLE `natjecaj`
  ADD CONSTRAINT `fk_natjecaj_kategorija_natjecaj1` FOREIGN KEY (`ext_kategorija_natjecaj`) REFERENCES `kategorija_natjecaj` (`id_kategorija_natjecaj`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nepozeljni_oglasi`
--
ALTER TABLE `nepozeljni_oglasi`
  ADD CONSTRAINT `fk_nepozeljni_oglasi_korisnik1` FOREIGN KEY (`ext_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_nepozeljni_oglasi_oglas1` FOREIGN KEY (`ext_oglas`) REFERENCES `oglas` (`id_oglas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `oglas`
--
ALTER TABLE `oglas`
  ADD CONSTRAINT `fk_oglas_vrsta_oglasa1` FOREIGN KEY (`ext_vrsta_oglasa`) REFERENCES `vrsta_oglasa` (`id_vrsta_oglasa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `oglas_pozicija`
--
ALTER TABLE `oglas_pozicija`
  ADD CONSTRAINT `fk_oglas_pozicija_oglas1` FOREIGN KEY (`ext_oglas`) REFERENCES `oglas` (`id_oglas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_oglas_pozicija_pozicija1` FOREIGN KEY (`ext_pozicija`) REFERENCES `pozicija` (`id_pozicija`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prijava_natjecaj`
--
ALTER TABLE `prijava_natjecaj`
  ADD CONSTRAINT `fk_prijava_natjecaj_korisnik1` FOREIGN KEY (`ext_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_prijava_natjecaj_natjecaj1` FOREIGN KEY (`ext_natjecaj`) REFERENCES `natjecaj` (`id_natjecaj`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `zahtjev_za_oglas`
--
ALTER TABLE `zahtjev_za_oglas`
  ADD CONSTRAINT `fk_zahtjev_za_oglas_korisnik1` FOREIGN KEY (`ext_korisnik`) REFERENCES `korisnik` (`id_korisnik`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zahtjev_za_oglas_oglas1` FOREIGN KEY (`ext_oglas`) REFERENCES `oglas` (`id_oglas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_zahtjev_za_oglas_vrsta_oglasa1` FOREIGN KEY (`ext_vrsta_oglasa`) REFERENCES `vrsta_oglasa` (`id_vrsta_oglasa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
