CREATE DATABASE IF NOT EXISTS tienda2;

USE tienda2;

CREATE TABLE IF NOT EXISTS t_usuarios (
    id_usuario INT(11) AUTO_INCREMENT NOT NULL,
    nombre     VARCHAR(100) NOT NULL,
    apellido   VARCHAR(100) NOT NULL,
    email      VARCHAR(200) NOT NULL,
    password   VARCHAR(200) NOT NULL,
    rol        VARCHAR(20) NOT NULL,
    imagen     VARCHAR(200) DEFAULT NULL,
    CONSTRAINT pk_usuario PRIMARY KEY(id_usuario),
    CONSTRAINT uq_email UNIQUE(email)
) ENGINE=InnoDB;

INSERT INTO t_usuarios 
VALUES (NULL, 'Carolina', 'bautista', 'carolinabau313@gmail.com', '123456', 'admin', 'imagen.jpg');

CREATE TABLE IF NOT EXISTS  t_categorias(
    id_categoria INT (11)AUTO_INCREMENT  NOT  NULL,
    nombre_categoria    VARCHAR(100)   NOT NULL,
    CONSTRAINT  pk_categoria PRIMARY KEY (id_categoria)


)ENGINE=InnoDB;

CREATE TABLE IF NOT EXISTS t_productos (
    id_producto      INT(11)AUTO_INCREMENT NOT NULL,
    nombre_producto  VARCHAR(100)       NOT NULL,
    stok             INT(11)             NOT  NULL,
    precio           decimal(10.0)      NOT NULL,
    imagen           VARCHAR(200),
    oferta           VARCHAR (255)       NOT  NULL,
    id_categoria     INT (11)               NOT  NULL,
    PRIMARY key (INT_producto),
    foreign  key (id_categoria)references t_categorias(id_categoria)

     
)ENGINE=InnoDB;