ALTER TABLE ventas ADD CONSTRAINT FK_usuario_ventas 
	FOREIGN KEY (user_id) REFERENCES usuarios(user_id);
ALTER TABLE compras ADD CONSTRAINT FK_usuario_compras 
	FOREIGN KEY (user_id) REFERENCES usuarios(user_id);

ALTER TABLE lineaventas ADD CONSTRAINT FK_ventas_Lventas
	FOREIGN KEY (nombre_objeto) REFERENCES ventas(nombre_objeto);
ALTER TABLE lineacompras ADD CONSTRAINT FK_compras_Lcompras
	FOREIGN KEY (nombre_objeto) REFERENCES compras(nombre_objeto);

ALTER TABLE objetosdecoleccion ADD CONSTRAINT FK_Lventas_ObjCol
	FOREIGN KEY (lineaventa) REFERENCES lineaventas(no_linea);
ALTER TABLE objetosdecoleccion ADD CONSTRAINT FK_Lcompras_ObjCol
	FOREIGN KEY (lineacompra) REFERENCES lineacompras(no_linea);

ALTER TABLE cartas ADD CONSTRAINT FK_ObjCol_cartas
	FOREIGN KEY (objeto_id) REFERENCES objetosdecoleccion(id);
ALTER TABLE comics ADD CONSTRAINT FK_ObjCol_comics
	FOREIGN KEY (objeto_id) REFERENCES objetosdecoleccion(id);
ALTER TABLE figurasdeaccion ADD CONSTRAINT FK_ObjCol_Faccion
	FOREIGN KEY (objeto_id) REFERENCES objetosdecoleccion(id);

ALTER TABLE telefonos ADD CONSTRAINT FK_usuarios_telefonos
	FOREIGN KEY (user_id) REFERENCES usuarios(user_id);