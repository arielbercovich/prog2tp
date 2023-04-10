USE informacion;
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
values ("dylanleisner@gmail.com","dylan15","Soy dylan", "2003-8-12","449373205");

INSERT INTO productos (id_usuario, nombre_producto, descripcion)
VALUES (8, "Ignacio Fernández", "Ignacio Martín Fernández es un futbolista argentino. Se desempeña como mediocampista y su equipo actual es River Plate de la Primera División de Argentina");

INSERT INTO comentarios (id_post, id_usuario, texto_comentario)
VALUES (12, 9, "tiene su estilo");