/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.32-MariaDB : Database - db_toko
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_toko` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `db_toko`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `barang` */

insert  into `barang`(`id`,`id_barang`,`id_kategori`,`nama_barang`,`merk`,`harga_beli`,`harga_jual`,`satuan_barang`,`stok`,`tgl_input`,`tgl_update`) values 
(10,'BR001',5,'Lemon Sky','-','0','20000','PCS','99999999999999','3 May 2024, 19:11','3 May 2024, 19:13'),
(11,'BR002',5,'Signature TJ','-','0','20000','PCS','99999999999999','3 May 2024, 19:11','2024-05-12'),
(12,'BR003',5,'flychee','-','0','20000','PCS','99999999999999','2024-05-12','2024-05-12'),
(13,'BR004',5,'Mango Paradice','-','0','20000','PCS','99999999999999','2024-05-12','2024-05-12'),
(14,'BR005',5,'Black Tea','-','0','15000','PCS','99999999999999','2024-05-12','2024-05-12'),
(15,'BR006',5,'Peachek','-','0','20000','PCS','99999999999999','2024-05-12','2024-05-12'),
(16,'BR007',1,'es kopi susu','-','0','10000','PCS','99999999999999','2024-05-12','2024-05-12'),
(17,'BR008',1,'kopi ijo waris','-','0','7000','PCS','99999999999999','2024-05-12','2024-05-12'),
(18,'BR009',1,'kopi tj','-','0','6000','PCS','99999999999999','2024-05-12','2024-05-12'),
(19,'BR010',1,'kopi susu tj','-','0','8000','PCS','99999999999999','2024-05-12','2024-05-12'),
(20,'BR011',1,'matcha','-','0','13000','PCS','99999999999999','2024-05-12','2024-05-12'),
(21,'BR012',1,'taro','-','0','13000','PCS','99999999999999','2024-05-12','2024-05-12'),
(22,'BR013',1,'thai tea','-','0','13000','PCS','99999999999999','2024-05-12','2024-05-12'),
(23,'BR014',1,'nenen','-','0','10000','PCS','99999999999999','2024-05-12','2024-05-12'),
(24,'BR015',1,'red valvet','-','0','13000','PCS','99999999999999','2024-05-12','2024-05-12'),
(25,'BR016',1,'es soklat','-','0','10000','PCS','99999999999999','2024-05-12','2024-05-12'),
(26,'BR017',1,'milo','-','0','8000','PCS','99999999999999','2024-05-12','2024-05-12'),
(27,'BR018',1,'es teh','-','0','6000','PCS','99999999999999','2024-05-12','2024-05-12'),
(28,'BR019',1,'es teh susu','-','0','8000','PCS','99999999999996','2024-05-12','2024-05-12'),
(29,'BR020',1,'leci tea','-','0','13000','PCS','99999999999999','2024-05-12','2024-05-12'),
(30,'BR021',1,'kubisu','-','0','7000','PCS','99999999999999','2024-05-12','2024-05-12'),
(31,'BR022',1,'joshua','-','0','7000','PCS','99999999999999','2024-05-12','2024-05-12'),
(32,'BR023',1,'lemon squash','-','0','15000','PCS','99999999999999','2024-05-12','2024-05-12'),
(33,'BR024',1,'leci squash','-','0','15000','PCS','99999999999999','2024-05-12','2024-05-12'),
(34,'BR025',1,'mango squash','-','0','15000','PCS','99999999999999','2024-05-12','2024-05-12'),
(35,'BR026',4,'Ke Ri','ketan','0','6000','PCS','99999999999999','2024-05-12','12 May 2024, 16:27'),
(36,'BR027',4,'Ke Susu','ketan','0','6000','PCS','99999999999999','2024-05-12','12 May 2024, 16:27'),
(37,'BR028',4,'Ke Cokot Mas','ketan','0','7000','PCS','99999999999999','2024-05-12','12 May 2024, 16:27'),
(38,'BR029',4,'Cok Keju','ketan','0','8000','PCS','99999999999999','2024-05-12','12 May 2024, 16:26'),
(39,'BR030',4,'Ke Ju Su','ketan','0','9000','PCS','99999999999999','2024-05-12','12 May 2024, 16:26'),
(40,'BR031',4,'Ke Crot Tan','ketan','0','9000','PCS','99999999999999','2024-05-12','12 May 2024, 16:26'),
(41,'BR032',4,'Ke Crot Tan peJu','ketan','0','10000','PCS','99999999999996','2024-05-12','12 May 2024, 16:26'),
(42,'BR033',4,'Ken Cang','ketan','0','8000','PCS','99999999999999','2024-05-12','12 May 2024, 16:26'),
(43,'BR034',4,'si Coklat lagi kencang','ketan','0','7000','PCS','99999999999999','2024-05-12','12 May 2024, 16:26');

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`,`tgl_input`) values 
(1,'Beverage (Minuman)','3 May 2024, 18:19'),
(2,'Food (Makanan)','3 May 2024, 18:19'),
(3,'Snack','3 May 2024, 18:19'),
(4,'Ketan','3 May 2024, 18:19'),
(5,'Cocktail','3 May 2024, 18:19');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `login` */

insert  into `login`(`id_login`,`user`,`pass`,`id_member`) values 
(1,'admin','21232f297a57a5a743894a0e4a801fc3',1);

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL AUTO_INCREMENT,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `member` */

insert  into `member`(`id_member`,`nm_member`,`alamat_member`,`telepon`,`email`,`gambar`,`NIK`) values 
(1,'Toko','alamat','000000000','email@gmail.com','1728106422Logo Polinema.png','0000000000');

/*Table structure for table `nota` */

DROP TABLE IF EXISTS `nota`;

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `nota` */

/*Table structure for table `penjualan` */

DROP TABLE IF EXISTS `penjualan`;

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `penjualan` */

/*Table structure for table `toko` */

DROP TABLE IF EXISTS `toko`;

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  PRIMARY KEY (`id_toko`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

/*Data for the table `toko` */

insert  into `toko`(`id_toko`,`nama_toko`,`alamat_toko`,`tlp`,`nama_pemilik`) values 
(1,'Kasir Toko','','0000','Toko');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
