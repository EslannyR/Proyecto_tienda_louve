USE tienda_louve;

/*Observation:
The other thing I learned is that inverted quotation marks are used for column
or table identifiers, not for literal text values, in the latter case single
quotation marks are used.*/

/*Salesman Data*/
INSERT INTO salesman (name, department)
VALUES('Luis Camacho', 'Ropa Masculina'),
    ('Lucia Lopez', 'Ropa Femenina'),
    ('María Ramírez', 'Accesorios');

/*Customer Data*/
INSERT INTO customer(name, address,email,phone) VALUES
    ('Vassili Philipeau', '9 Heath Alley', 'vphilipeau0@biblegateway.com', '+86 374 322 8373'),
    ('Rica Wardrope', '47 Summerview Hill', 'rwardrope1@google.com.hk', '+7 711 263 4415'),
    ('Edeline Mailey', '882 Waxwing Pass', 'emailey2@nydailynews.com', '+63 702 100 6918'),
    ('Ahmad Bilbery', '9951 Victoria Avenue', 'abilbery3@1688.com', '+86 530 792 5635'),
    ('Kaia Blowen', '14857 Paget Parkway', 'kblowen4@jiathis.com', '+54 532 339 9496'),
    ('Debra Mafham', '53 Leroy Court', 'dmafham5@spiegel.de', '+55 872 853 7685'),
    ('Sarine Ast', '5 Becker Avenue', 'sast6@msn.com', '+62 173 329 5970'),
    ('Sebastiano Buckenhill', '572 Rigney Road', 'sbuckenhill7@usda.gov', '+48 284 495 8674'),
    ('Konstance Drinkeld', '586 Huxley Crossing', 'kdrinkeld8@biblegateway.com', '+62 413 393 1262'),
    ('Stanley Tunmore', '25 Dennis Crossing', 'stunmore9@cisco.com', '+33 981 977 2095'),
    ('Webb Ben-Aharon', '7185 Crownhardt Center', 'wbenaharona@si.edu', '+48 674 704 3169'),
    ('Lanie Ealles', '14442 Hansons Point', 'leallesb@naver.com', '+7 472 348 8664'),
    ('Di Pales', '2549 West Plaza', 'dpalesc@facebook.com', '+86 851 632 5134'),
    ('Joyous Wickersham', '340 Crowley Plaza', 'jwickershamd@cargocollective.com', '+375 480 613 3244'),
    ('Tucky Whistlecraft', '927 Riverside Circle', 'twhistlecrafte@virginia.edu', '+1 180 322 2443'),
    ('Aldric Arrault', '9004 Meadow Ridge Road', 'aarraultf@cbsnews.com', '+63 619 835 1118'),
    ('Valaria Dionisii', '09302 Dapin Alley', 'vdionisiig@examiner.com', '+86 505 793 2581'),
    ('Ingrim Millom', '12 Fallview Court', 'imillomh@businessweek.com', '+86 590 359 2222'),
    ('Cleve Pettyfar', '66688 Wayridge Lane', 'cpettyfari@delicious.com', '+1 332 169 3515'),
    ('Timmy Abbots', '3 Crest Line Street', 'tabbotsj@e-recht24.de', '+1 266 431 5057');

/*Data Product*/
INSERT INTO product(name, description,price,category) VALUES
    ('Camiseta Negra', 'Camiseta de algodón negra', 20.00, 'Camisetas'),
    ('Falda Floral', 'Falda corta con diseño floral', 30.00, 'Faldas'),
    ('Jeans Azules', 'Jeans de corte ajustado en color azul', 45.00, 'Jeans'),
    ('Blusa Blanca', 'Blusa elegante color blanca', 25.00, 'Blusas'),
    ('Shorts Vaqueros', 'Shorts de mezclilla estilo casual', 28.00, 'Shorts'),
    ('Vestido Negro', 'Vestido de noche color negro', 50.00, 'Vestidos'),
    ('Sombrero de Paja', 'Sombrero de paja estilo veraniego', 15.00, 'Accesorios'),
    ('Zapatos de Tacón', 'Zapatos de tacón alto en color rojo', 55.00, 'Zapatos'),
    ('Pantalones de Cuero', 'Pantalones de cuero negro', 40.00, 'Pantalones'),
    ('Chaqueta de Mezclilla', 'Chaqueta de mezclilla estilo retro', 38.00, 'Chaquetas'),
    ('Bufanda de Lana', 'Bufanda de lana tejida a mano', 18.00, 'Accesorios'),
    ('Traje de Baño', 'Traje de baño de dos piezas', 32.00, 'Ropa de Baño'),
    ('Pantalones Cortos Deportivos', 'Pantalones cortos para actividades deportivas', 22.00, 'Deportivos'),
    ('Blazer Negro', 'Blazer elegante color negro', 42.00, 'Chaquetas'),
    ('Vestido Floral', 'Vestido estampado con flores', 48.00, 'Vestidos'),
    ('Gafas de Sol', 'Gafas de sol con protección UV', 12.00, 'Accesorios'),
    ('Sudadera Gris', 'Sudadera cómoda color gris', 28.00, 'Sudaderas'),
    ('Calcetines Estampados', 'Calcetines con diseños divertidos', 6.00, 'Accesorios'),
    ('Chamarra de Cuero', 'Chamarra de cuero estilo motociclista', 75.00, 'Chaquetas'),
    ('Blusa Estampada', 'Blusa con patrón estampado', 22.00, 'Blusas'),
    ('Zapatillas Deportivas', 'Zapatillas deportivas para correr', 60.00, 'Zapatos'),
    ('Vestido Elegante', 'Vestido elegante para ocasiones especiales', 65.00, 'Vestidos'),
    ('Pantalones Vaqueros Rasgados', 'Jeans rasgados estilo urbano', 35.00, 'Jeans'),
    ('Collar de Plata', 'Collar de plata con colgante', 18.00, 'Accesorios'),
    ('Jersey de Punto', 'Jersey de punto suave y cálido', 32.00, 'Jerseys'),
    ('Gorra Deportiva', 'Gorra ajustable para actividades deportivas', 10.00, 'Accesorios'),
    ('Vestido Largo', 'Vestido largo para eventos formales', 58.00, 'Vestidos'),
    ('Chaleco de Mezclilla', 'Chaleco de mezclilla estilo vintage', 26.00, 'Chaquetas'),
    ('Leggings Deportivos', 'Leggings elásticos para entrenamientos', 20.00, 'Deportivos'),
    ('Bufanda de Seda', 'Bufanda de seda suave y elegante', 30.00, 'Accesorios');

