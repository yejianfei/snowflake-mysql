CREATE TABLE `tb_tickets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `stub` char(1) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `stub` (`stub`)
) AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

INSERT INTO `tb_tickets` (`stub`) VALUES ('a');
