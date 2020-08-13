SELECT
	pago.monto,
	empresa.nombre AS nombre_empresa,
	empresa.id AS empresa_id
FROM public.pagos pago
LEFT JOIN public.empresas empresa ON pago.empresa_id = empresa.id
WHERE empresa.nombre = 'Edesur' AND pago.monto > 5000;

-- 596 registros para edesur

UPDATE public.pagos
SET empresa_id = 2
WHERE empresa_id = '1' AND monto > 5000;

--edenorte id : 2, edesur =1 
--596 registros actualizados