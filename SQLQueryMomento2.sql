CREATE DATABASE BibliotecaV2
USE BibliotecaV2

--Tabla Libro
CREATE TABLE Libro(IdLibro INT PRIMARY KEY,
Titulo VARCHAR(50) NOT NULL,
Editorial VARCHAR(50) NOT NULL,
Area VARCHAR (50) NOT NULL)

--Tabla Estudiante
CREATE TABLE Estudiante(IdLector INT PRIMARY KEY,
CC BIGINT NOT NULL,
Nombre VARCHAR (100)NOT NULL,
Direccion VARCHAR(100) NOT NULL,
Carrera VARCHAR(50) NOT NULL,
Edad INT NOT NULL)

--Tabla Autor
CREATE TABLE Autor(IdAuto INT PRIMARY KEY,
Nombre VARCHAR(100),
Nacionalidad VARCHAR(50))

--Creacion de la tabla "LiAut" (De quien es el libro)
CREATE TABLE LiAut(IdAutor INT FOREIGN KEY REFERENCES Autor(IdAuto),
IdLibro INT FOREIGN KEY REFERENCES Libro(IdLibro) )
--Creacion de la tabla prestamos
CREATE TABLE Prestamo(FechaPrestamo DATE NOT NULL, IdLector INT FOREIGN KEY REFERENCES Estudiante(IdLector),
IdLibro INT FOREIGN KEY REFERENCES Libro(IdLibro), FehcaDevolucion DATE NOT NULL, Devuelto VARCHAR(4) NOT NULL)

--Ingreso de Registros a la tabla Libro
INSERT INTO Libro(IdLibro,Titulo,Editorial,Area)
VALUES(123,'Caperucita Roja','Combel Editorial','Fantasia')

INSERT INTO Libro(IdLibro,Titulo,Editorial,Area)
VALUES(133,'La iliada','Feltrinelli','Epopeya')

INSERT INTO Libro(IdLibro,Titulo,Editorial,Area)
VALUES(243,'El arte de la Guerra','Alianza Editorial','No-Ficcion')

INSERT INTO Libro(IdLibro,Titulo,Editorial,Area)
VALUES(999,'Piense y hagase Rico','Ediciones Obelisco S.L.','Finanzas')

INSERT INTO Libro(IdLibro,Titulo,Editorial,Area)
VALUES(679,'Padre Rico Padre Pobre','Aguilar','Finanzas')

INSERT INTO Libro(IdLibro,Titulo,Editorial,Area)
VALUES(579,'Cien años de Soledad','Sudamericana', 'Ficcion')

--Ingreso de Registros a la tabla Autor
INSERT INTO Autor(IdAuto,Nombre,Nacionalidad)
VALUES(1628,' Charles Perrault ', 'Frances')

INSERT INTO Autor(IdAuto,Nombre,Nacionalidad)
VALUES(111,'Homero', 'Griegos')

INSERT INTO Autor(IdAuto,Nombre,Nacionalidad)
VALUES(722,'Sant Zu','Chino')

INSERT INTO Autor(IdAuto,Nombre,Nacionalidad)
VALUES(1883,'Napoleon Hil','Estado Unidense')

INSERT INTO Autor(IdAuto,Nombre,Nacionalidad)
VALUES(1974,'Robert Kiyosak','Estado Unidense')

INSERT INTO Autor(IdAuto,Nombre,Nacionalidad)
VALUES(1927,'Gabriel Garcia','Colombiano')

--Ingreso de registros en la Tabla ESTUDIANTES
INSERT INTO Estudiante(IdLector,CC,Nombre,Direccion,Carrera,Edad)
VALUES(1045,12345,'Keit Estrada', 'DG 78 #33-2B', 'Licenciatura en Idiomas', 19)

INSERT INTO Estudiante(IdLector,CC,Nombre,Direccion,Carrera,Edad)
VALUES(1021,78945,'Cristian Perez', 'DG 66 #30-269B', 'Psicologia', 25)

INSERT INTO Estudiante(IdLector,CC,Nombre,Direccion,Carrera,Edad)
VALUES(1011,12655,'Kaleb Parra', 'AV 44Z 25-42A', 'Ciencias Economicas', 20)

INSERT INTO Estudiante(IdLector,CC,Nombre,Direccion,Carrera,Edad)
VALUES(1511,12685,'Juan Castaño', 'AV 69 #12-202C', 'Ingienera Civil', 20)

INSERT INTO Estudiante(IdLector,CC,Nombre,Direccion,Carrera,Edad)
VALUES(1539,12795,'Lebron James', 'AV 69 #12-202C', 'Enfermeria', 20)

INSERT INTO Estudiante(IdLector,CC,Nombre,Direccion,Carrera,Edad)
VALUES(2799,127899,'Cristina Cogollo', 'Av 44B# 65-102', 'Informatica', 22)

INSERT INTO Estudiante(IdLector,CC,Nombre,Direccion,Carrera,Edad)
VALUES(5555,125,'Gloria Mesa','DG 99 #12-15', 'Informatica', 44)

--Ingreso de regitros a la tabla LibAut
INSERT INTO LiAut(IdAutor,IdLibro)
VALUES(1628,123)

INSERT INTO LiAut(IdAutor,IdLibro)
VALUES(111,133)

INSERT INTO LiAut(IdAutor,IdLibro)
VALUES(722,243)

INSERT INTO LiAut(IdAutor,IdLibro)
VALUES(1883,999)

INSERT INTO LiAut(IdAutor,IdLibro)
VALUES(1974,679)

INSERT INTO LiAut(IdAutor,IdLibro)
VALUES(1927,579)

--Ingreso deregistros a la tala PRESTAMO
INSERT INTO Prestamo(IdLector,IdLibro,FechaPrestamo,FehcaDevolucion,Devuelto)
VALUES(1045,123,'2024/01/01','2024/03/04','Si')

INSERT INTO Prestamo(IdLector,IdLibro,FechaPrestamo,FehcaDevolucion,Devuelto)
VALUES(1021,133,'2024/01/01','2024/03/04','Si')

INSERT INTO Prestamo(IdLector,IdLibro,FechaPrestamo,FehcaDevolucion,Devuelto)
VALUES(1011,243,'2024/12/01','2025/01/01', 'No')

INSERT INTO Prestamo(IdLector,IdLibro,FechaPrestamo,FehcaDevolucion,Devuelto)
VALUES(1511,999,'2024/07/03','2024/09/01', 'Si')

INSERT INTO Prestamo(IdLector,IdLibro,FechaPrestamo,FehcaDevolucion,Devuelto)
VALUES(1539,679,'2024/01/01','2024/02/24','Si')

INSERT INTO Prestamo(IdLector,IdLibro,FechaPrestamo,FehcaDevolucion,Devuelto)
VALUES(2799,999,'2024/01/01','2024/02/24','Si')

INSERT INTO Prestamo(IdLector,IdLibro,FechaPrestamo,FehcaDevolucion,Devuelto)
VALUES(5555,579,'2024/02/09', '2024/07/01', 'Si')

--Confirmo datos guardados
SELECT * FROM Prestamo
SELECT * FROM LiAut
SELECT * FROM Libro
SELECT * FROM Autor
SELECT * FROM Estudiante

--1. Listar solamente el nombre y edad de los estudiantes
SELECT Nombre,Edad FROM Estudiante

--2. ¿Qué estudiantes pertenecen a la carrera de Informática? Listar toda su información
SELECT * FROM Estudiante WHERE Carrera='Informatica'

--3. Listar los estudiantes su apellido comienza con la letra ‘G’
SELECT * FROM Estudiante WHERE Nombre LIKE 'G%'

--4.	¿Cuántos estudiantes son mayores de 15 años?
SELECT * FROM Estudiante WHERE Edad>15

--5.	¿Quiénes son los autores que tienen nacionalidad ‘COLOMBIANO’? Listar solamente los nombres
SELECT Nombre FROM Autor WHERE Nacionalidad='Colombiano'

--6.	Mostrar todos los libros, menos los que el área sea ‘INFORMÁTICA’
SELECT * FROM Libro WHERE AREA NOT IN('Informatica')

--7.	Mostrar toda la información de los estudiantes que su edad esté entre los 20 y 30 años
SELECT * FROM Estudiante WHERE Edad BETWEEN 20 AND 30

--8.	De la tabla estudiante necesitamos mostrar todos los registros que en cualquier parte de la identificación tenga el 00
SELECT * FROM Estudiante WHERE CC LIKE '%00%'