DROP DATABASE IF EXISTS Bono;
CREATE DATABASE Bono;
USE Bono;

CREATE TABLE Habitaciones(
	NumHab int(3) NOT NULL,
    Capacidad int(2) NOT NULL,
    Precio double NOT NULL,
    Piso int(2),
    PRIMARY KEY (NumHab)
);

CREATE TABLE Personas(
	Cedula int(10) NOT NULL,
    Nombre varchar(20) NOT NULL,
    Apellido varchar(20) NOT NULL,
    Telefono int(10) NOT NULL,
    NumHab int(3) NOT NULL,
    PRIMARY KEY (Cedula),
    FOREIGN KEY (NumHab) REFERENCES Habitaciones (NumHab)
);

CREATE TABLE Alquiler(
	Id int(3) NOT NULL,
    Fecha varchar(10) NOT NULL,
    Cedula int(10) NOT NULL,
    PRIMARY KEY (Id),
    FOREIGN KEY (Cedula) REFERENCES Personas(Cedula)
);

select * from Habitaciones;
select * from Personas;
select * from Alquiler;