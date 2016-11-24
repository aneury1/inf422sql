---practica 4



INSERT INTO Escuela values
(
   1,
   'Ab escuela ',
   'c/ francisco prat ramires'
)



insert into Escuela select  NombreEscuela, DomicilioEscuela from escuela where CodigoEscuela == 1 
