

CREATE TABLE PAISES
(
  IdPais char(3) not null primary key,
  NombrePais varchar(40) not null
)

CREATE TABLE CATEGORIA
(
  IDCategoria integer not null primary key ,
  NombreCategoria varchar(40) not null, 
  Descripcion varchar(128) 
)

CREATE TABLE CLIENTE
(
  idCliente char(5) not null primary key, 
  NomCliente varchar(40) not null, 
  DirCliente varchar(40) not null
   
  CONSTRAINT fk_id_pais FOREIGN KEY ( IdPais ) REFERENCES PAISES( IdPais )
  fonoCliente varchar(15)

)


