---indices 
---1. Crear un índice agrupado para la tabla Reserva sobre el campo codigo_escuela. 
CREATE UNIQUE INDEX IReserva ON reserva (codigo_escuela);
--2. Eliminar el índice creado en el punto anterior. 
Drop index IReserva;
--3. Crear un índice que optimice la búsqueda y ordenamiento de la tabla 
--reserva_visita, si la consulta que se quisiera optimizar es por Cantidad de Alumnos Reservados. 
CREATE index clustered BusquedaOptima on reserva_visita(CantidadAlumnosReservados);
SELECT * FROM Table WITH(INDEX(  BusquedaOptima)); -- Query de prueba

--4. Crear un nuevo índice agrupado sobre la tabla Guia sobre los campos Apellido y Nombre. 
--Nota: Puede que no permita borrar la clave primaria. 
CREATE INDEX BGuia on Gui(Apellido asc, Nombre desc);
 ---5. Crear un índice que optimice la búsqueda por Fecha y Hora de la reserva
--- (índice compuesto) teniendo en cuenta que se realizan inserciones con mucha asiduidad sobre esta tabla (FILLFACTOR). 
CREATE INDEX BhoraFecha on Reserva (Fecha asc, hora desc);
 
 --6. Conceder permiso de INSERT y UPDATE sobre la tabla telefono_escuela a los usuarios jPerez, aFernandez. 
GRANT INSERT ON telefono_escuela TO jperez, Afernzandez;
GRANT update ON telefono_escuela TO jperez, Afernzandez;
 
---7. Eliminar los permisos de UPDATE sobre la tabla telefono_escuela para todos los usuarios. 
REVOKE INSERT ON telefono_escuela TO jperez, Afernzandez;
REVOKE update ON telefono_escuela;

--8. Conceder permisos de create table al usuario jPerez 
GRANT CREATE ON telefono_escuela TO jperez;


---9. Revocar los permisos de select para el usuario public sobre la tabla de Escuela. 
REVOKE SELECT ON telefono_escuela to public;


--CLASE 2 - Adicionales 
--1. Eliminar el índice sobre nombre y apellido en la tabla guia. 
drop index  on gui iF EXISTS nombre, apellido;


---2. Crear un índice que impida ingresar dos guías con igual nombre y apellido. 
create unique index on guia to nombre , apellido;


--3. Conceder al grupo CORDOBA permiso de SELECT para la tabla reserva_visita 
---grant select on reserva_visita to  



---4. El usuario jPerez (parte del grupo CORDOBA) no debe poder ver el campo Arancel_por_Alumno (pero sí el resto de la tabla). ¿Como se le deniega el permiso? 

---5. Conceder al grupo ADM todos los permisos de aplicables sobre la Base Jurasik_Park (creacion de tablas, backup, etc) 

---6. Denegar al usuario aFernandez (miembro del grupo ADM) el permiso para realizar backups sobre la base y sobre el log de transacciones. 


