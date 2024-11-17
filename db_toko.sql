/*
SQLyog Professional v13.1.1 (64 bit)
MySQL - 8.0.30 : Database - db_toko
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_toko` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_toko`;

/*Table structure for table `barang` */

DROP TABLE IF EXISTS `barang`;

CREATE TABLE `barang` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `expired` date NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

/*Data for the table `barang` */

insert  into `barang`(`id`,`id_barang`,`id_kategori`,`nama_barang`,`merk`,`harga_beli`,`harga_jual`,`satuan_barang`,`stok`,`expired`,`tgl_input`,`tgl_update`) values 
(10,'BR001',5,'Lemon Sky','-','0','20000','PCS','99999999999993','0000-00-00','3 May 2024, 19:11','3 May 2024, 19:13'),
(11,'BR002',5,'Signature TJ','-','0','20000','PCS','99999999999999','0000-00-00','3 May 2024, 19:11','2024-05-12'),
(12,'BR003',5,'flychee','-','0','20000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(13,'BR004',5,'Mango Paradice','-','0','20000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(14,'BR005',5,'Black Tea','-','0','15000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(15,'BR006',5,'Peachek','-','0','20000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(16,'BR007',1,'es kopi susu','-','0','10000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(17,'BR008',1,'kopi ijo waris','-','0','7000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(18,'BR009',1,'kopi tj','-','0','6000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(19,'BR010',1,'kopi susu tj','-','0','8000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(20,'BR011',1,'matcha','-','0','13000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(21,'BR012',1,'taro','-','0','13000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(22,'BR013',1,'thai tea','-','0','13000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(24,'BR015',1,'red valvet','-','0','13000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(25,'BR016',1,'es soklat','-','0','10000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(26,'BR017',1,'milo','-','0','8000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(27,'BR018',1,'es teh','-','0','6000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(28,'BR019',1,'es teh susu','-','0','8000','PCS','99999999999996','0000-00-00','2024-05-12','2024-05-12'),
(29,'BR020',1,'leci tea','-','0','13000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(30,'BR021',1,'kubisu','-','0','7000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(31,'BR022',1,'joshua','-','0','7000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(32,'BR023',1,'lemon squash','-','0','15000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(33,'BR024',1,'leci squash','-','0','15000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(34,'BR025',1,'mango squash','-','0','15000','PCS','99999999999999','0000-00-00','2024-05-12','2024-05-12'),
(45,'BR035',5,'soda','cocacola','10000','15000','PCS','37','2024-10-24','23 October 2024, 5:36','23 October 2024, 5:52'),
(46,'BR036',1,'susu coklat','ultramilk','9000','10000','PCS','800','2024-10-25','23 October 2024, 5:52',NULL);

/*Table structure for table `emoney` */

DROP TABLE IF EXISTS `emoney`;

CREATE TABLE `emoney` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nim` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `saldo` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `emoney` */

insert  into `emoney`(`id`,`nim`,`nama`,`foto`,`saldo`) values 
(5,'2131730071','Frankie Steinlie','1729560435_2131730071.JPG',20000.00),
(7,'1111111111','Neru','1729561482_2131730093.jpg',100000.00);

/*Table structure for table `kategori` */

DROP TABLE IF EXISTS `kategori`;

CREATE TABLE `kategori` (
  `id_kategori` int NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `kategori` */

insert  into `kategori`(`id_kategori`,`nama_kategori`,`tgl_input`) values 
(1,'Beverage (Minuman)','3 May 2024, 18:19'),
(2,'Food (Makanan)','3 May 2024, 18:19'),
(4,'Ketan','3 May 2024, 18:19'),
(5,'Cocktail','3 May 2024, 18:19'),
(6,'Snack','23 October 2024, 5:28');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id_login` int NOT NULL AUTO_INCREMENT,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int NOT NULL,
  PRIMARY KEY (`id_login`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id_login`,`user`,`pass`,`id_member`) values 
(1,'admin','21232f297a57a5a743894a0e4a801fc3',1);

/*Table structure for table `login_mhs` */

DROP TABLE IF EXISTS `login_mhs`;

CREATE TABLE `login_mhs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) DEFAULT NULL,
  `nim` varchar(255) DEFAULT NULL,
  `password` varbinary(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `login_mhs` */

insert  into `login_mhs`(`id`,`nama`,`nim`,`password`) values 
(1,'Frankie','244107027008','$2y$10$SLfuRVjjhoJ0IMbVtXVliuRMT4.nvoy6URD7fjCTO.p0o34lMa.Oi');

/*Table structure for table `member` */

DROP TABLE IF EXISTS `member`;

CREATE TABLE `member` (
  `id_member` int NOT NULL AUTO_INCREMENT,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL,
  PRIMARY KEY (`id_member`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `member` */

insert  into `member`(`id_member`,`nm_member`,`alamat_member`,`telepon`,`email`,`gambar`,`NIK`) values 
(1,'Kelompok5','Malang','00000000','Kelompok5@gmail.com','1729766295Logo Polinema.png','0000000000');

/*Table structure for table `nota` */

DROP TABLE IF EXISTS `nota`;

CREATE TABLE `nota` (
  `id_nota` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `nota` */

insert  into `nota`(`id_nota`,`id_barang`,`id_member`,`jumlah`,`total`,`tanggal_input`,`periode`) values 
(19,'BR001',1,'3','60000','18 October 2024, 13:22','10-2024'),
(20,'BR001',1,'3','60000','18 October 2024, 13:22','10-2024');

/*Table structure for table `penjualan` */

DROP TABLE IF EXISTS `penjualan`;

CREATE TABLE `penjualan` (
  `id_penjualan` int NOT NULL AUTO_INCREMENT,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  PRIMARY KEY (`id_penjualan`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

/*Data for the table `penjualan` */

/*Table structure for table `toko` */

DROP TABLE IF EXISTS `toko`;

CREATE TABLE `toko` (
  `id_toko` int NOT NULL AUTO_INCREMENT,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL,
  PRIMARY KEY (`id_toko`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `toko` */

insert  into `toko`(`id_toko`,`nama_toko`,`alamat_toko`,`tlp`,`nama_pemilik`) values 
(1,'Kelompok 5','Malang','0000','');

/*Table structure for table `validasi` */

DROP TABLE IF EXISTS `validasi`;

CREATE TABLE `validasi` (
  `id_validasi` int NOT NULL AUTO_INCREMENT,
  `nim` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nominal` decimal(10,2) DEFAULT NULL,
  `fotobukti` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `valid` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_validasi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

/*Data for the table `validasi` */

insert  into `validasi`(`id_validasi`,`nim`,`nama`,`nominal`,`fotobukti`,`valid`) values 
(2,'2131730071','Frankie',20000.00,'foto',1),
(3,'2131730071','Frankie Steinlie',10000.00,'1729561116_6717021c81730.JPG',2),
(4,'1111111111','Neru',100000.00,'1729561501_6717039de6ac2.jpg',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
