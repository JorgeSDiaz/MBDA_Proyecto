--Usuario--

--Consultar que objetos hay disponibles para la compra--
SELECT nombre, tipo, disponibilidad, rareza, valor
FROM objetosdecoleccion WHERE disponibilidad > 0;
--Consultar Ventas diarias--
SELECT lv.nombre_objeto, ve.fecha, lv.precio
FROM lineaventas lv JOIN ventas ve
ON (lv.nombre_objeto = ve.nombre_objeto)
WHERE ve.fecha = '7-10-2021';

--Gerente--

--Consultar monto total de ventas registrado por --
--cada tipo de objeto--
SELECT oc.tipo, SUM(lc.precio) AS monto_total
FROM objetosdecoleccion oc JOIN lineacompras lc 
ON (oc.lineacompra = lc.no_linea)
GROUP BY oc.tipo;
--Consultar compras diarias--
SELECT lc.nombre_objeto, co.fecha, lc.precio
FROM lineacompras lc JOIN compras co
ON (lc.nombre_objeto = co.nombre_objeto)
WHERE co.fecha = '7-10-2021';