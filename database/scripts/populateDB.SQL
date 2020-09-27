
-- Adding some entries to populate the data base in dev mode
    INSERT INTO `presentation` (`title`, `text`)
    VALUES ('presentation', 'SoluAccess est le Service d’Accessibilité et d’Aménagement du Réseau de Services LIBELILLE.\r\nLe Réseau LIBELILLE vous propose un accompagnement personnalisé par l’apport de divers services d’aide aux personnes à mobilité réduite, âgées ou handicapées. \r\nNotre détermination étant de rompre l’isolement, notre démarche consiste à vous informer que notre Réseau de Services intervient afin de répondre aux besoins spécifiques que vous ou votre entourage pourriez rencontrer et pour lesquels vous seriez démunis de moyens d’action.\r\nAvec SoluAccess, le Réseau LIBELILLE a la volonté de répondre également aux désirs d’Autonomie et d’Accessibilité en développant l’Aménagement de l’habitat, l’Accessibilité des bâtiments accueillant du Public et l’apport d’Aides techniques spécialisées.\r\nSoluAccess vous propose une gamme de services et de matériels destinés aussi bien à l’accessibilité au domicile, entreprises ou lieux recevant du public.');
    

    INSERT INTO `slideCaption` (`title`, `text`)
    VALUES ('slide001', 'Some text for slide 01');

    INSERT INTO `slideCaption` (`title`, `text`)
    VALUES ('slide002', 'Some text for slide 02');

    INSERT INTO `slideCaption` (`title`, `text`)
    VALUES ('slide003', 'Some text for slide 03');



    INSERT INTO `Products` (`designation`, `details`, `imgUrl`, `price`)
    VALUES ('Rampe 50cm', 'Rampe PRS238 pliable 50cm x 100cm en aluminium', 'prs238.jpg', '100');


    INSERT INTO `Products` (`designation`, `details`, `imgUrl`, `price`)
    VALUES ('Rampe 75cm', 'Rampe KLM132 pliable 75cm x 100cm fabriquée en Allemagne', 'klm132.jpg', '200');


    INSERT INTO `Products` (`designation`, `details`, `imgUrl`, `price`)
    VALUES ('Rampe 100cm', 'Rampe CWT432 pliable 100cm x 100cm fabriquée en chine', 'cwt432.jpg', '400');


    INSERT INTO `News` (`news_id`, `news_title`, `news_content`, `news_date`, `news_imgUrl`) VALUES
        (1,	'C\'est la rentrée ! ',	'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',	'2020-09-27 17:16:43',	'Accessibilite.jpg'),
        (2,	'Club Marot',	'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',	'2020-09-27 17:17:13',	'clubmarot.jpg'),
        (3,	'La petite court',	'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',	'2020-09-27 17:18:02',	'lapetitecourt.jpg');