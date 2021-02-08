CREATE TABLE `attributes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `spiking` varchar(2) NOT NULL,
  `shots` varchar(2) NOT NULL,
  `passing` varchar(2) NOT NULL,
  `setting` varchar(2) NOT NULL,
  `blocking` varchar(2) DEFAULT NULL,
  `serve power` varchar(2) not null,
  `serve accuracy` varchar(2) not null,
  `digging` varchar(2) not null, 
  `quickness` varchar(2) not null, 
  `jumping` varchar(2) not null, 
  `NameID` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `NameID` (`NameID`),
  CONSTRAINT `attributes_ibfk_1` FOREIGN KEY (`nameID`) REFERENCES `names` (`id`)
) 