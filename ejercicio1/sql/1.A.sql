CREATE TABLE Jugadores (
    id INT NOT NULL PRIMARY KEY,
    id_equipo INT NOT NULL,
    nombre VARCHAR (20) NOT NULL,
    apellidos VARCHAR (20) NOT NULL,
    fecha_Nacimiento DATE NOT NULL,
    posicion VARCHAR (20) NOT NULL,
    sueldo INT NOT NULL,
    nacionalidad VARCHAR (20) NOT NULL CHANGE COLUMN `id_equipo` `id_equipo` INT(10) NOT NULL
    AFTER
        `id`,
    ADD
        CONSTRAINT `id_equipo` FOREIGN KEY (`id_equipo`) REFERENCES `Jugadores` (`id_equipo`) ON UPDATE NO ACTION ON DELETE NO ACTION;