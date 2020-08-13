# Database Querys with PSQL and reports in excel
 Se solicita hacer algunas Querys a una DB Backup, en base a estas querys generar reportes en formato Excel.

Realizado con pgAdmin 4.
las querys realizadas se encuentran en cada archivo, se puede descargar la base de datos en el siguiente link:
http://www.mediafire.com/file/5uw0irbmnn0sdin/new+database+.backup/file

Ejercicio 1

De la tabla "pagos" identificar el día con mayor número de transacciones.
crear un reporte en formato excel con los registros de ese día, identificando los siguientes campos:
- id
- monto
- fecha
- empresa (nombre)
- estado del pago (nombre)
- empleado (nombre)
- id de servicio del pagador (se puede encontrar en la tabla historicocobros, la cual mantiene una relación con la tabla de pagos)

De la tabla "pagos" identificar la suma de los montos pagados por día del mes, del mes de enero del año 2019. 
Generar un reporte en formato excel con esta información, indicando el total general diario y el total diario por empresa .

Ejercicio 2:

2.1- Actualizar todos los pagos de la empresa "Edesur" a la empresa "Edenorte" cuyo monto sea mayor a $5000
2.2- Poner en estado anulado todos los pagos del 2019 cuyo valor sea inferior a DOP $5000 y USD $10 (de existir)
2.3- Eliminar todos los registros de pagos e historicocobros cuya fecha de creación sea anterior y posterior al 2019
