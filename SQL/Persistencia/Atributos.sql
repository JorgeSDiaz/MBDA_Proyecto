--TMoneda--
ALTER TABLE lineaventas ADD CONSTRAINT CK_lv_precio
CHECK (MOD(precio, 500) = 0);
ALTER TABLE lineacompras ADD CONSTRAINT CK_lc_precio
CHECK (MOD(precio, 500) = 0);
ALTER TABLE objetosdecoleccion ADD CONSTRAINT CK_oc_valor
CHECK (MOD(valor, 500) = 0);

--TArte--
ALTER TABLE cartas ADD CONSTRAINT CK_cartas_art
CHECK(arte = 'N' AND arte = 'H' AND arte = 'F' AND arte = 'R');

--TEstilo
ALTER TABLE figurasdeaccion ADD CONSTRAINT PK_fa_estilo
CHECK(estilo = 'F' AND estilo = 'H' AND estilo = 'E' AND estilo = 'G');

--TObjeto
ALTER TABLE objetosdecoleccion ADD CONSTRAINT PK_oc_tipo
CHECK(tipo = 'C' AND tipo = 'F' AND tipo = 'T');

--TRare
ALTER TABLE objetosdecoleccion ADD CONSTRAINT PK_oc_rareza
CHECK(rareza = '%A%' OR rareza = '%L%' OR rareza = '%P%' OR rareza = '%U%');

--Correo