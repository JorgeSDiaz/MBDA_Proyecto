ALTER TABLE usuarios ADD CONSTRAINT PK_userid
    PRIMARY KEY (user_id);

ALTER TABLE ventas ADD CONSTRAINT PK_Vnombreobjeto
    PRIMARY KEY (nombre_objeto);

ALTER TABLE compras ADD CONSTRAINT PK_Cnombreobjeto
    PRIMARY KEY (nombre_objeto);

ALTER TABLE lineacompras ADD CONSTRAINT PK_NoLineaC
    PRIMARY KEY (no_linea);

ALTER TABLE lineaventas ADD CONSTRAINT PK_NoLineaV
    PRIMARY KEY (no_linea);

ALTER TABLE objetosdecoleccion ADD CONSTRAINT PK_id
    PRIMARY KEY (id);

ALTER TABLE cartas ADD CONSTRAINT PK_CAobjetoid
    PRIMARY KEY (objeto_id);

ALTER TABLE comics ADD CONSTRAINT PK_COobjetoid
    PRIMARY KEY (objeto_id);

ALTER TABLE figurasdeaccion ADD CONSTRAINT PK_FIobjetoid
    PRIMARY KEY (objeto_id);

ALTER TABLE telefonos ADD CONSTRAINT PK_numero_userid
    PRIMARY KEY (numero, user_id);