--
-- Table structure for table `netlog_down`
--

DROP TABLE IF EXISTS `netlog_down`;

CREATE TABLE `netlog_down` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `band` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1170 DEFAULT CHARSET=latin1;


--
-- Table structure for table `netlog_up`
--

DROP TABLE IF EXISTS `netlog_up`;

CREATE TABLE `netlog_up` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ts` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `band` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1162 DEFAULT CHARSET=latin1;
