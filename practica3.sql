

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


CREATE TABLE PROVEDORES 
(
   IdProvedores integer not null primary key,
   NomProveedor varchar(40) not null, 
   dirProveedor varchar (40) not null, 
   nomContacto varchar (80) not null, 
   cargoContacto varchar(80) not null, 
   CONSTRAINT fk_id_pais_proveedor FOREIGN KEY( IdPais) references PAISES(IdPais), 
   fonoProveedor varchar(15) not null, 
   faxProveedor varchar(15) not null
)


CREATE TABLE PRODUCTOS 
(
   IdProducto integer not null primary key, 
   NombreProducto varchar(80) not null,
   constraint fk_id_proveedor foreign key(IdProvedores) references PROVEDORES(idProveedor), 
   constraint fk_id_Categoria foreign key(IDCategoria)   references CATEGORIA(IDCategoria),
   cantxUnidad integer not null,
   precioPorUnidad DECIMAL(10, 2) NOT NULL, 
   UnidadExistencia smallint not null,
   UnidadPedido smallint not null
)


