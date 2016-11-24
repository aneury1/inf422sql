CREATE DATABASE JurasicPark;



CREATE TABLE escuela (
                       CodigoEscuela integer not null primary key,
                       NombreEscuela varchar(64) not null,
					   DomicilioEscuela varchar(128) not null
					  )
					  
CREATE TABLE TelefonoEscuela
(
	CONSTRAINT fk_Escuela_id FOREIGN KEY (CodigoEscuela) REFERENCES Escuela(CodigoEscuela),
    TelefonoEscuela varchar(12) not null
);

CREATE TABLE Reserva
(
    Numero_reserva integer not null primary key,
    FechaVisitaReservada date not null,
	HoraVisitaReservada time not null,
	CONSTRAINT fk_EscuelaReserva_id FOREIGN KEY (CodigoEscuela) REFERENCES Escuela(CodigoEscuela)
);

CREATE TABLE TipoVisita
(
   CodigoTipoVisita integer not null primary key, 
   DescripcionTipoVisita varchar(128) not null,
   ArancelPorAlumno float not null
);

CREATE TABLE Guia
(
 CodigoGuia integer not null primary key,
 NombreGuia varchar(32) not null, 
 ApellidoGuia varchar(32) not null
);


CREATE TABLE ReservaTipoVisita
(
    CONSTRAINT fk_NumeroReserva_id FOREIGN KEY (Numero_reserva) REFERENCES Reserva(Numero_reserva),
    CONSTRAINT fk_CodVisita_id FOREIGN KEY(CodigoTipoVisita) REFERENCES TipoVisita(CodigoTipoVisita),
	CONSTRAINT fk_CodigoGuia_id FOREIGN KEY(CodigoGuia) REFERENCES Guia(CodigoGuia),
	CantidadAlumnosReservados integer not null,
	CantidadAlumnosReales integer not null 
);

CREATE TABLE ReservaPorGrado
(
    CONSTRAINT fk_NumeroReserva2_id FOREIGN KEY (Numero_reserva) REFERENCES Reserva(Numero_reserva),
    CONSTRAINT fk_CodVisita2_id FOREIGN KEY(CodigoTipoVisita) REFERENCES TipoVisita(CodigoTipoVisita),
	CONSTRAINT fk_CodigoGuia2_id FOREIGN KEY(CodigoGuia) REFERENCES Guia(CodigoGuia) 
);

create table DistritoEscolar
(
    codigo_distrito_escolar integer not null
	constraint fk_codigo_escuale foreign key(CodigoEscuela) References Escuela(CodigoEscuela)
);

ALTER TABLE escuela  DROP COLUMN domicilioEscuela;

ALTER TABLE Guia  Add COLUMN domicilioGuia varchar(128);

drop table TelefonoEscuela;