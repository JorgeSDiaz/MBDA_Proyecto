CREATE TABLE usuarios(
user_id NUMBER(15) NOT NULL,
nombre VARCHAR(50) NOT NULL,
correo VARCHAR(50)
);

CREATE TABLE telefonos(
numero VARCHAR(10),
user_id NUMBER(18) NOT NULL
);

CREATE TABLE ventas(
nombre_objeto VARCHAR(50) NOT NULL,
preciototal NUMBER NOT NULL,
fecha DATE NOT NULL,
user_id NUMBER(15) NOT NULL
);

CREATE TABLE lineaventas(
No_Linea NUMBER NOT NULL,
cantidad NUMBER NOT NULL,
precio NUMBER NOT NULL,
nombre_objeto VARCHAR(50) NOT NULL
);

CREATE TABLE compras(
nombre_objeto VARCHAR(50) NOT NULL,
preciototal NUMBER NOT NULL,
fecha DATE NOT NULL,
user_id NUMBER(15) NOT NULL
);

CREATE TABLE lineacompras(
No_Linea NUMBER NOT NULL,
cantidad NUMBER NOT NULL,
precio NUMBER NOT NULL,
nombre_objeto VARCHAR(50) NOT NULL
);

CREATE TABLE objetosdecoleccion(
id NUMBER(15) NOT NULL,
nombre VARCHAR(50) NOT NULL,
anodefabricacion DATE,
tipo CHAR(1) NOT NULL,
disponibilidad NUMBER NOT NULL,
rareza VARCHAR(100),
valor NUMBER NOT NULL,
Lineaventa NUMBER,
Lineacompra NUMBER
);

CREATE TABLE cartas(
deck VARCHAR(50),
arte CHAR(1) NOT NULL,
objeto_id NUMBER(15) NOT NULL
);

CREATE TABLE comics(
autor VARCHAR(50) NOT NULL,
editorial VARCHAR(30) NOT NULL,
objeto_id NUMBER(15) NOT NULL
);

CREATE TABLE figurasdeaccion(
referencia VARCHAR(100) NOT NULL,
estilo VARCHAR(1) NOT NULL,
objeto_id NUMBER(15) NOT NULL
);