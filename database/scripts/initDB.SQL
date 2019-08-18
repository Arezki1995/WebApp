    
-- Init database schema
	
CREATE TABLE IF NOT EXISTS Tasks ( task_id INT AUTO_INCREMENT, title VARCHAR(255) NOT NULL, description VARCHAR(10000) NOT NULL, priority INT NOT NULL, PRIMARY KEY (task_id) );


CREATE TABLE IF NOT EXISTS Products ( prod_id INT AUTO_INCREMENT, designation VARCHAR(255) NOT NULL, details VARCHAR(10000) NOT NULL, imgUrl VARCHAR(255), price INT NOT NULL, PRIMARY KEY (prod_id) );