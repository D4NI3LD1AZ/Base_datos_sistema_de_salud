CREATE DATABASE SistemadeSalud;
USE SistemadeSalud;

CREATE TABLE Paciente
(
ID SMALLINT AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR (100) NOT NULL,
Correo_electronico VARCHAR(255) NOT NULL,
Telefono Int NOT NULL
);

CREATE TABLE Doctor
(
ID_Doc SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR (100) NOT NULL,
Correo_electronico VARCHAR(255) NOT NULL,
Telefono Int NOT NULL
);


CREATE TABLE Agenda_Doc
(
Disponibilidad DATETIME PRIMARY  KEY,
Doctor SMALLINT UNSIGNED NOT NULL,
FOREIGN KEY (Doctor) references Doctor (ID_Doc)
);

CREATE TABLE Sede
(
Direccion VARCHAR(255) NOT NULL PRIMARY KEY,
Nombre_Sede VARCHAR(255) NOT NULL
);


CREATE TABLE Historial_Medico
(
Nombre_Paciente VARCHAR(255) PRIMARY KEY,
Descripcion VARCHAR (255) NOT NULL,
Id_paciente  SMALLINT NOT NULL ,
FOREIGN KEY (Id_paciente) references Paciente (ID)
);

CREATE TABLE Cita
(
Codigo_Cita SMALLINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Fecha_Cita DATETIME NOT NULL,
Id_Paciente SMALLINT  NOT NULL,
Id_Doc SMALLINT UNSIGNED NOT NULL,
Lugar VARCHAR(255) NOT NULL,
Consulta ENUM ("Consulta General") NOT NULL,
FOREIGN KEY (Id_Paciente) references Paciente (ID),
FOREIGN KEY (Id_Doc) references Doctor (ID_Doc),
FOREIGN KEY (Lugar) references Sede (Direccion)
);

CREATE TABLE Reporte_Citas
(
Confirmacion_Cita ENUM ("Si","No") NOT NULL,
Cod_Cita SMALLINT UNSIGNED NOT NULL,
FOREIGN KEY (Cod_Cita) references Cita (Codigo_Cita)
);

/*REGISTRAR PACIENTES*/
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Daniel Fernando Diaz','danield1@gmail.com',32687390);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Julian Andres Peralta','julianp2@gmail.com',32687391);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Santiago Sanchez Salamanca','santiagos3@gmail.com',32687393);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Juan Esteban Murcia','juanm4@gmail.com',32687394);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Nicolas Stiven Daza','nicolasd5@gmail.com',32687395);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Fernando Malagon','fernandom6@gmail.com',32687396);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Jose Andres Gutierres','josej7@gmail.com',32687397);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Raul Santiago Piza','santiagop8@gmail.com',32687398);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Kevin Santiago Gomez','keving9@gmail.com',32687399);
INSERT INTO Paciente (Nombre,Correo_electronico,Telefono) 
VALUES ('Santiago Nemesio Mesa','santiagom10@gmail.com',32687310);

/*REGISTRAR DOCTOR*/
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1101,'Diego Suarez','diegos01@gmail.com',31234501);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1102,'Rafael Orozco','rafaelo02@gmail.com',31234502);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1103,'Diomedez Diaz','diomedesd03@gmail.com',31234503);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1104,'James Rodriguez','jamesr04@gmail.com',31234504);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1105,'Radamel Falcao','radamelf05@gmail.com',31234505);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1106,'Juan Guillermo Cuadrado','juanc06@gmail.com',31234506);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1107,'David Ospina','divido07@gmail.com',31234507);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1108,'Yerri Mina','yerrim08@gmail.com',31234508);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1109,'Luis Diaz','luisd09@gmail.com',31234509);
INSERT INTO Doctor (ID_Doc,Nombre,Correo_electronico,Telefono) 
VALUES (1110,'Nicol Sofia Diaz','nicold10@gmail.com',31234510);

/*REGISTRAR AGENDA_DOC*/
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2023-03-01 13:50:25',1101);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2023-03-01 10:40:35',1101);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2023-03-03 08:23:25',1103);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2023-03-03 13:20:55',1103);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2023-04-04 12:30:15',1102);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2023-03-4 17:20:24',1102);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2023-03-07 11:30:35',1104);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2023-03-8 13:20:55',1104);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2022-04-16 14:25:15',1106);
INSERT INTO Agenda_Doc (Disponibilidad,Doctor)
VALUES ('2022-04-17 15:43:29',1106);

/*REGISTRAR SEDE*/
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('calle 123a #149-55','Compensar Antioquia');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('calle 131a #49-15','Compensar Marvella');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('calle 23b #39-14','Compensar Suba');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('calle 63c #19-65','Compensar Soacha');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('calle 19c #219-65','Compensar Patio Bonito');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('carrera 29b #29-25','Compensar Alamos');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('carrera 212a #319-25','Compensar Bella Vista');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('carrera 89c #19-35','Compensar Medellin');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('carrera 212b #149-21','Compensar Santa Marta');
INSERT INTO Sede (Direccion,Nombre_sede)
VALUES ('carrera 159b #32-44','Compensar Barranquilla');

/*REGISTRAR HISTORIAL MEDICO*/
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Nicol Sofia Diaz','Revision General',10);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Kevin Santiago Gomez','Revision General',9);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Raul Santiago Piza','Reision Genral',8);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Jose Andres Gutierres','Revision General',7);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Fernando Malagon','Revision General',6);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Nicolas Stiven Daza','Revision General',5);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Santiago Sanchez Salamanca','Revision General',4);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Juan Esteban Murcia','Revision General',3);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Julian Andres Peralta','Revision General',2);
INSERT INTO  Historial_Medico (Nombre_Paciente,Descripcion,Id_paciente)
VALUES ('Daniel Fernando Diaz','Revision General',1);

/*REGISTRAR CITAS*/
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-03-01 14:13:29',1,1101,'calle 23b #39-14','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-03-07 11:23:49',3,1102,'carrera 159b #32-44','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-04-06 12:30:19',2,1102,'carrera 159b #32-44','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-03-05 10:26:19',2,1101,'calle 63c #19-65','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-03-05 16:32:49',6,1107,'calle 63c #19-65','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-02-04 09:22:39',5,1106,'calle 123a #149-55','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-04-16 08:45:10',4,1105,'calle 123a #149-55','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-04-06 11:50:30',6,1104,'carrera 212a #319-25','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-02-17 15:30:45',2,1104,'carrera 212a #319-25','Consulta General');
INSERT INTO  Cita (Fecha_Cita,Id_Paciente,Id_Doc,Lugar,Consulta)
VALUES ('2023-06-09 11:50:39',1,1109,'calle 23b #39-14','Consulta General');

/*REGISTRAR Reporte Citas*/
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('Si',4);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('Si',5);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('Si',3);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('Si',1);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('No',2);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('Si',8);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('Si',2);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('No',10);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('Si',3);
INSERT INTO  Reporte_Citas (Confirmacion_Cita,Cod_Cita)
VALUES ('Si',4);


SELECT ID,Nombre, correo_electronico AS email, telefono
From Paciente;

SELECT * FROM Paciente LIMIT 5;

SELECT count(*) FROM Paciente WHERE  ID=2 or ID=4 or ID=6 or ID=8 or ID=0  ; 

SELECT * FROM Paciente INNER JOIN  Historial_Medico;

select *from Paciente;
select *from Doctor;
select*from Cita;
select *from Sede;
select *from Historial_Medico;
select*from Agenda_doc;
select*from Reporte_Citas;
