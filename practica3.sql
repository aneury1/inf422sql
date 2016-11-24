

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


CREATE TABLE CARGOS 
(
   IdCargo integer not null primary key, 
   desCargo varchar(80) not null
)


create table Distrito
(
   IdDistrito integer  not null primary key, 
    nomDistrito varchar(80) not null 
)

CREATE TABLE Empleados
(
   idEmpleado integer not null primary key, 
   nomEmpleado varchar(80) not null, 
   ApeEmpleado varchar(80) not null, 
   FechaNac Datetime not null,
   DirEmpleado varchar(100) not null, 
   idDistrito varchar(100) not null, 
   fonoEmpleado varchar(15) not null, 
   constraint fk_id_cargo foreign key( IdCargo) references CARGOS( IdCargo)  
   fecha_contratacion datetime not null,
   fotoEmpleado image not null 
)


create table pedidosCabe
(
   IDPedido integer not null primary key, 
   constraint fk_cliente_id_pedido foreign key(idCliente) references CLIENTE(idCliente),
   constraint fk_id_emepleado_pedido foreign key(idEmpleado) references Empleados(idEmpleado),
   fechaPedido datetime not null, 
   fechaEntrega datetime not null, 
   fechaEnvia datetime not null, 
   envioPedido char(1) not null, 
   destinatario varchar(60 )not null, 
   dirDestinatario varchar(128) not null
)

create table pedidosDetalle 
(
     constraint fk_id_pedido foreign key(IDPedido) references pedidosCabe(IDPedido),
	 constraint fk_id_producto foreign key(idProducto) references PRODUCTOS(idProducto),
	 precioUnidad decimal(10,2) not null, 
	 cantidad integer not null, 
	 Descuento Decimal(10,2)
)