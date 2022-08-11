SELECT * FROM deuda
GO

SELECT * FROM cuota
GO

UPDATE deuda 
SET interes = 16
WHERE id_deuda = 2

UPDATE deuda
SET valor_interes = valor_deuda * interes/100,
	valor_total = valor_deuda + valor_interes

	

UPDATE cuota
SET valor_interes = (SELECT de.interes 
					 FROM deuda de 
					 WHERE de.id_deuda = ref_deuda)



UPDATE cuota
SET valor_interes = 0, 
	valor_total = valor,
	fecha_pago_real = fecha_pago
WHERE id_cuota = 181 OR id_cuota = 183

UPDATE cuota
SET estado = 'PENDIENTE'
WHERE id_cuota = 184

UPDATE cuota
SET valor_total = ROUND(valor * (1 + valor_interes/100), 2),
	fecha_pago_real = DATEADD(DAY, 2, fecha_pago)
WHERE id_cuota = 182

UPDATE cuota
SET valor_total = ROUND(valor * (1 + valor_interes/100), 2),
	fecha_pago_real = DATEADD(DAY, 1, fecha_pago)
WHERE id_cuota IN (229, 241)

UPDATE cuota
SET valor_interes = 0, 
	valor_total = valor,
	fecha_pago_real = fecha_pago
WHERE id_cuota IN (230, 242)

UPDATE cuota
SET valor_interes = 0, 
	valor_total = valor,
	fecha_pago_real = DATEADD(DAY, -2, fecha_pago)
WHERE id_cuota IN (231, 243)

UPDATE cuota
SET valor_interes = 0, 
	valor_total = valor,
	fecha_pago_real = DATEADD(DAY, -1, fecha_pago)
WHERE id_cuota IN (232, 244)

UPDATE cuota
SET estado = 'PAGADA'
WHERE valor_total IS NOT NULL

SELECT * FROM cuota
