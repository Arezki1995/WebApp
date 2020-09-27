    
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


CREATE TABLE IF NOT EXISTS presentation (
  	`title` VARCHAR(255) NOT NULL,
  	`text` longtext NOT NULL,
	PRIMARY KEY (`title`)
);


CREATE TABLE IF NOT EXISTS slideCaption (
  	`title` VARCHAR(255) NOT NULL,
  	`text` longtext NOT NULL,
	PRIMARY KEY (`title`)
);
