-- Adding some entries to populate the data base in dev mode
    INSERT INTO Tasks(title, description, priority) 
    VALUES ('DB initialization script', 'You should create an SQL script that allows to init your database', 2);
    
    INSERT INTO Tasks(title, description, priority) 
    VALUES ('CRUD functions in app', 'Write the app code to connect to your database and perform CRUD operations', 1);
	
    INSERT INTO Tasks(title, description, priority) 
    VALUES ('Workout every saturday', 'You have to take care of yourself and your health so do some workout', 3);





    INSERT INTO `Products` (`designation`, `details`, `imgUrl`, `price`)
    VALUES ('Rampe 50cm', 'Rampe PRS238 pliable 50cm x 100cm en aluminium', '/assets/products/prs238.png', '100');


    INSERT INTO `Products` (`designation`, `details`, `imgUrl`, `price`)
    VALUES ('Rampe 75cm', 'Rampe KLM132 pliable 75cm x 100cm fabriquée en Allemagne', '/assets/products/klm132.png', '200');


    INSERT INTO `Products` (`designation`, `details`, `imgUrl`, `price`)
    VALUES ('Rampe 100cm', 'Rampe CWT432 pliable 100cm x 100cm fabriquée en chine', '/assets/products/cwt432.png', '400');