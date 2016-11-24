---practica 4



INSERT INTO Escuela values
(
   1,
   'Ab escuela ',
   'c/ francisco prat ramires'
)

insert into Escuela select  NombreEscuela, DomicilioEscuela from escuela where CodigoEscuela == 1 ;

delete from telefono_Escuela where TelefonoEscuela <> '1111-1111'

update telefono_Escuela set TelefonoEscuela = '5445-3223' where TelefonEscuela = '0000-0000'

update Guia set CodigoGuia = 2 where CodigoGuia == 1

delete from ReservaTipoVisita where CantidadReserva < 10

delete from guias where NomGuia = null

select from guias where nomGui = 'bernardo'

select * from reservas;

select From reservas where CantidadAlumnosReservados > 20

SELECT * FROM reservas WHERE  FechaVisitaReservada ='3-6-2004'
