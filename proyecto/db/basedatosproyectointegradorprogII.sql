CREATE SCHEMA proyectoprogII;
USE proyectoprogII;
CREATE TABLE usuarios (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
email VARCHAR (50) NOT NULL,
contrasena VARCHAR (50) NOT NULL,
info_foto VARCHAR(20) NOT NULL,
fecha DATE NOT NULL,
dni INT NOT NULL,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deletedAt TIMESTAMP NULL
);

CREATE TABLE productos (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
id_usuario INT UNSIGNED NOT NULL,
nombre_producto VARCHAR (50) NOT NULL,
descripcion VARCHAR (100) NOT NULL,
fecha_carga DATE NOT NULL,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deletedAt TIMESTAMP NULL,
FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

CREATE TABLE comentarios (
id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
id_post INT UNSIGNED NOT NULL,
id_usuario INT UNSIGNED NOT NULL,
texto_comentario TEXT NOT NULL,
createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
deletedAt TIMESTAMP NULL,
FOREIGN KEY (id_post) REFERENCES productos(id),
FOREIGN KEY (id_usuario) REFERENCES usuarios(id)
);

INSERT INTO usuarios (email, contrasena, info_foto, fecha, dni) 
VALUES ('matias12@gmail.com', 'Maticapo12', 'Soy matías', '2001-09-16', 44937403),
 ('nicofernandez@gmail.com', 'nicogenio', 'Soy nico', '2003-07-10', 44937505),
 ('germandíaz@gmail.com', 'cuenta12', 'Soy German', '1999-06-12', 44937303),
('manusoldano@gmail.com', 'manusoldano', 'Soy manu', '1995-03-10', 449373205),
 ('dylanleisner@gmail.com', 'dylan15', 'Soy dylan', '2003-08-12', 449373205);

INSERT INTO productos (id_usuario, nombre_producto, descripcion, fecha_carga)
VALUES ( 1, 'Gabriel Arias', 'Gabriel Arias Arroyo es un futbolista chileno nacido en Argentina. Juega como arquero en Racing Club', "2021-9-12"),
(2, 'German Salort', 'Germán Guillermo Salort es un futbolista argentino. Juega de Arquero y su equipo actual es Comunicac', "2020-5-12"),
(3, 'Leandro Brey', 'Leandro Brey es un futbolista argentino. Actualmente es el arquero de la Reserva del C.A Boca Junior', "2018-7-19"),
(4, 'Augusto Batalla', 'Augusto Batalla es un futbolista argentino. Actualmente es el arquero titular de San Lorenzo de Alma', "2015-7-5"),
(5, 'Facundo Mura', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', "2016-1-5"),
(1, 'Federico Gattoni', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', "2018-9-12"),
(2, 'Bruno Bianchi', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', "2014-5-20"),
(3, 'Alan Rodriguez', 'Gattoni es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualmente juega en Independien', "2008-7-15"),
(4, 'Baltasar Barcia', 'Mateo Baltasar Barcia Fernández es un volante Uruguayo nacido el 19/02/2001 en Pando (URU). Actualme', "2005-9-15"),
(5, 'Ignacio Fernández', 'Ignacio Martín Fernández es un futbolista argentino. Se desempeña como mediocampista y su equipo act',"1999-2-15");
INSERT INTO comentarios (id_post, id_usuario, texto_comentario)
VALUES ( 1, 1, 'Idolo en Racing. Las gano todas'),
(1, 1, 'Muy buen arquero'),
(1, 1, 'muy bueno con los pies'),
(1, 1, 'Proximamente se va de racing'),
(2, 2, 'en su comienzo en comunicaciones estuvo bien'),
(2, 2, 'Bueno atajando penales. Fenomeno'),
(2, 2, 'Tiene su estilo atajando'),
(2, 2, 'Futuro europeo'),
(3, 3, 'Recien comenzando. Crack total'),
(3, 3, 'De a poco va mejorando'),
(3, 3, 'Futuro en liga brasileña'),
(3, 3, 'peleado con los hinchas'),
(4, 4, 'Recien comenzando. Crack total'),
(4, 4, 'mucho recorrido futbol argentino'),
(4, 4, 'Tiene sus diferencias con su club'),
(4, 4, 'estuvo por firmar para el real madrid'),
(5, 5, 'Jugador con mucho potencial, lo tuve en 5ta división y sus condiciones como clásico 10 se notaban'),
(5, 5, 'En inferiores la rompió'),
(5, 5, 'gran familia'),
(5, 1, 'potencial extremo'),
(2, 1, 'Tiene su estilo'),
(4, 1, 'Esta mejorando mucho'),
(4, 1, 'mejorando mucho'),
(1, 2, 'buen vinculo con los jovenes'),
(2, 2, 'Mejoranco muchisimo'),
(5, 2, 'buen vinculo con dirigentes'),
(5, 2, 'buena pegada'),
(2, 3, 'tiene lo suyo'),
(1, 3, 'lo que juega este muchacho es descomunal'),
(2, 3, 'buena volea'),
(10, 3, 'fenomeno'),
(10, 4, 'ambidiestro'),
(1, 4, 'ambidiestro'),
(1, 4, 'buena pegada tiro libres'),
(1, 4, 'jugador fenomenal'),
(1, 5, 'futuro europeo'),
(2, 5, 'futuro europeo'),
(2, 5, 'suele usar doble media'),
(2, 5, 'se comio un gol en el clasico'),
(2, 5, 'tiene su estilo');