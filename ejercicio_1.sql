--- QUERY PARA OBTENER Y ORDENAR EL DIA CON MAS TRANSACCIONES

SELECT COUNT (*), fecha::date from public.pagos GROUP BY fecha::date ORDER BY COUNT (fecha::date) DESC;

---DIA CON MAS TRANSACCIONES: 2018-12-03
---QUERY PARA GENERAR REPORTE CON EL DETALLE DEL DIA CON MAS TRANSACCIONES 

SELECT
	payments.id AS id_pagos,
	payments.monto,
	payments.fecha,
	business.nombre as nombre_empresa,
	paystates.nombre as estado_pago,
	replace(employee.nombre, ';', 'n') as empleado, -- aqui se hace este remplazo para cambiar el ; ya que al importarlo en excel generaba un error por la ñ.
	h_payment.servicio_id as id_servicio
FROM public.pagos payments
LEFT JOIN public.empleados employee ON payments.empleado_id = employee.id --- left join para mostrar todos los registros sin importar si tiene un empleado asociado o no
LEFT JOIN public.empresas business ON payments.empresa_id = business.id
LEFT JOIN public.estadopagos paystates ON payments.estadopago_id = paystates.id
LEFT JOIN public.historicocobros h_payment ON payments.cobro_id = h_payment.id
WHERE payments.fecha::date = '2018-12-03';

--- QUERY PARA EL TOTAL DIARIO POR EMPRESA

SELECT
	pagos.fecha::date AS dia,
	TRUNC(SUM(pagos.monto)) AS total_diario, --- se trunca el resultado para mejor visualizacion
	business.nombre AS empresa
FROM public.pagos pagos
LEFT JOIN public.empresas business ON pagos.empresa_id = business.id
WHERE fecha::date BETWEEN '2019-01-01' AND '2019-01-31'
---WHERE fecha::text LIKE '2019-01-%'; ---> OTRA FORMA DE HACER EL FILTRADO
GROUP BY pagos.fecha::date, business.nombre
ORDER BY fecha::date ASC; -- no hay dia 1 por que es feriado





