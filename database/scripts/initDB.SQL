    
-- Init database schema

CREATE TABLE IF NOT EXISTS `WebsiteData` (
  `property` varchar(32) NOT NULL,
  `value` longtext NOT NULL,
  PRIMARY KEY (property) 
);

CREATE TABLE IF NOT EXISTS Tasks (
	`task_id` INT AUTO_INCREMENT,
	`title` VARCHAR(255) NOT NULL,
	`description` VARCHAR(10000) NOT NULL,
	`priority` INT NOT NULL,
	PRIMARY KEY (task_id) 
);


CREATE TABLE IF NOT EXISTS Products (
	`prod_id` INT AUTO_INCREMENT,
	`designation` VARCHAR(255) NOT NULL,
	`details` VARCHAR(10000) NOT NULL,
	`imgUrl` VARCHAR(255),
	`price` INT NOT NULL,
	PRIMARY KEY (prod_id) 
);



CREATE TABLE IF NOT EXISTS News (
  	`news_id` int NOT NULL AUTO_INCREMENT,
  	`news_title` text(256) NOT NULL,
  	`news_content` longtext NOT NULL,
  	`news_date` timestamp NOT NULL,
	`news_imgUrl` VARCHAR(255),
	PRIMARY KEY (news_id)
);





INSERT INTO `WebsiteData` (`property`, `value`)
VALUES ('about', 'SoluAccess est le Service d’Accessibilité et d’Aménagement du Réseau de Services LIBELILLE.\r\nLe Réseau LIBELILLE vous propose un accompagnement personnalisé par l’apport de divers services d’aide aux personnes à mobilité réduite, âgées ou handicapées. \r\nNotre détermination étant de rompre l’isolement, notre démarche consiste à vous informer que notre Réseau de Services intervient afin de répondre aux besoins spécifiques que vous ou votre entourage pourriez rencontrer et pour lesquels vous seriez démunis de moyens d’action.\r\nAvec SoluAccess, le Réseau LIBELILLE a la volonté de répondre également aux désirs d’Autonomie et d’Accessibilité en développant l’Aménagement de l’habitat, l’Accessibilité des bâtiments accueillant du Public et l’apport d’Aides techniques spécialisées.\r\nSoluAccess vous propose une gamme de services et de matériels destinés aussi bien à l’accessibilité au domicile, entreprises ou lieux recevant du public.');