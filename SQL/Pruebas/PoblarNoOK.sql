INSERT INTO usuarios (user_id,nombre,correo) 
VALUES ('a','Pris','probertazzi0@boston.com');

INSERT INTO ventas (nombre_objeto,Fecha,User_id)
VALUES (12,'4-10-2021',2);

INSERT INTO lineaventas (no_linea, cantidad, precio, nombre_objeto)
VALUES (18, 1, 1015, 'Scratch the Cat');

INSERT INTO lineacompras (no_linea, cantidad, precio, nombre_objeto)
VALUES (2, 1, 12, 'Adolf');

INSERT INTO objetosdecoleccion (id, nombre, anofabricacion, tipo, 
disponibilidad, rareza, valor, lineaventa, lineacompra)
VALUES (2, 'Adolf', NULL, 'Z', 'A', 1000, 1, 2, 2);

INSERT INTO cartas (deck, arte, objeto_id)
VALUES (x, 'R', 11);

INSERT INTO comics (autor, editorial, objeto_id)
VALUES ('Frank Miller', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 1);

INSERT INTO figurasdecoleccion (referencia, estilo, objeto_id)
VALUES ('Charlie y la fabrica de chocolate', 'TT', 18);

INSERT INTO telefonos (numero, user_id)
VALUES (+63-857-442-4752000000, 1);