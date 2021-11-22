/*==============================================================*/
/* ADAN BECKER MARTINEZ MARTINEZ                     */
/* 3190-19-8253                       */
/*==============================================================*/
/*==============================================================*/
/* Table: ANUNCIO Y SEQUENCIA                                              */
/*==============================================================*/
create table ANUNCIO 
(
   IDANUNCIO            NUMBER(10)                     not null,
   DESCRIPCION         VARCHAR2(75)                   null,
   FECHA_INICIO         DATE                           null,
   FECHA_FIN           DATE                           null,
   constraint PK_ANUNCIO primary key (IDANUNCIO)
);

Create Sequence SQC_ANUNCIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: CATEGORIA_PRODUCTO Y SEQUENCIA                                   */
/*==============================================================*/
create table CATEGORIA_PRODUCTO 
(
   IDCATEGORIA          NUMBER(10)                     not null,
   CATEGORIA_PROD       VARCHAR(100)                   null,
   constraint PK_CATEGORIA_PRODUCTO primary key (IDCATEGORIA)
);

Create Sequence SQC_CATEGORIA_PRODUCTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: TIPO_PRODUCTO Y SEQUENCIA                                   */
/*==============================================================*/
create table TIPO_PRODUCTO 
(
   IDTIPO          NUMBER(10)                     not null,
   TIPO_PROD       VARCHAR(100)                   null,
   constraint PK_TIPO_PRODUCTO primary key (IDTIPO)
);

Create Sequence SQC_TIPO_PRODUCTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: CLIENTE Y SEQUENCIA Y TRIGGER PARA CUI Y NIT                                               */
/*==============================================================*/
create table CLIENTE 
(
   COD_CLIENTE          NUMBER(15)                     not null,
   IDVEHICULO           NUMBER(10)                     null,
   NIT                  VARCHAR2(75)                   null,
   CUI                  VARCHAR2(75)                   null,
   NOMBRE               VARCHAR2(75)                   null,
   APELLIDO             VARCHAR2(75)                   null,
   CORREO               VARCHAR2(75)                   null,
   GENERO               VARCHAR2(75)                   null,
   constraint PK_CLIENTE primary key (COD_CLIENTE)
);

Create Sequence SQC_CLIENTE
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: DEPARTAMENTO Y SEQUENCIA                                          */
/*==============================================================*/
create table DEPARTAMENTO 
(
   COD_DEPARTAMENTO     NUMBER(10)                     not null,
   DEPARTAMENTO         VARCHAR2(25)                   null,
   constraint PK_DEPARTAMENTO primary key (COD_DEPARTAMENTO)
);

Create Sequence SQC_DEPARTAMENTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: DIRECCION_CLIENTE Y SEQUENCIA                                     */
/*==============================================================*/
create table DIRECCION_CLIENTE 
(
   IDDIRECCION          NUMBER(15)                     not null,
   COD_CLIENTE          NUMBER(15)                     null,
   DIRECCION            VARCHAR2(75)                     null,
   constraint PK_DIRECCION_CLIENTE primary key (IDDIRECCION)
);

Create Sequence SQC_DIRECCION_CLIENTE
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;
/*==============================================================*/
/* Table: DIRECCION_EMPLEADO Y SEQUENCIA                                    */
/*==============================================================*/
create table DIRECCION_EMPLEADO 
(
   IDDIRECCION          NUMBER(15)                     not null,
   COD_EMPLEADO         NUMBER(10)                     null,
   DIRECCION            VARCHAR2(75)                     null,
   constraint PK_DIRECCION_EMPLEADO primary key (IDDIRECCION)
);

Create Sequence SQC_DIRECCION_EMPLEADO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;
/*==============================================================*/
/* Table: EMPLEADO Y SEQUENCIA Y TRIGGER PARA NIT Y CUI                                             */
/*==============================================================*/
create table EMPLEADO 
(
   COD_EMPLEADO         NUMBER(10)                     not null,
   IDTURNO              NUMBER(10)                     null,
   COD_SUCURSAL         NUMBER(5)                      null,
   IDPUESTO             NUMBER(10)                     null,
   CUI                  VARCHAR2(75)                   null,
   NOMBRE               VARCHAR2(75)                   null,
   APELLIDO             VARCHAR2(75)                   null,
   CORREO               VARCHAR2(75)                   null,
   GENERO               VARCHAR2(75)                   null,
   FECHA_INGRESO        DATE                           null,
   constraint PK_EMPLEADO primary key (COD_EMPLEADO)
);

Create Sequence SQC_EMPLEADO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: FACTURA SEQUENCIA                                              */
/*==============================================================*/
create table FACTURA 
(
   COD_FACTURA          NUMBER(10)                     not null,
   COD_CLIENTE          NUMBER(15)                     not null,
   COD_EMPLEADO         NUMBER(10)                     null,
   NOMBRE               VARCHAR2(75)                   null,
   NIT                  VARCHAR2(75)                   null,
   TELEFONO             VARCHAR2(75)                   null,
   PRODUCTO             VARCHAR2(75)                   null,
   CANTIDAD             NUMBER(10)                     null,
   COSTO                NUMBER(10,2)                   null,
   TIPO_PAGO            VARCHAR2(75)                 null,
   FECHA_EMISION        DATE                           null,
   constraint PK_FACTURA primary key (COD_FACTURA)
);

Create Sequence SQC_FACTURA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: INVENTARIO Y SEQUENCIA                                       */
/*==============================================================*/
create table INVENTARIO 
(
   COD_INVENTARIO       NUMBER(10)                     not null,
   COD_PRODUCTO         NUMBER(15)                     null,
   constraint PK_INVENTARIO_8253 primary key (COD_INVENTARIO)
);

Create Sequence SQC_INVENTARIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;
/*==============================================================*/
/* Table: MUNICIPIO Y SEQUENCIA                                             */
/*==============================================================*/
create table MUNICIPIO 
(
   COD_MUNICIPIO        NUMBER(10)                     not null,
   COD_DEPARTAMENTO     NUMBER(10)                     null,
   MUNICIPIO            VARCHAR2(25)                   null,
   constraint PK_MUNICIPIO primary key (COD_MUNICIPIO)
);

Create Sequence SQC_MUNICIPIO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: PRODUCTO Y SEQUENCIA Y TRIGEER                                           */
/*==============================================================*/
create table PRODUCTO 
(
   COD_PRODUCTO         NUMBER(15)                     not null,
   IDCATEGORIA          NUMBER(10)                     null,
   IDTIPO               NUMBER(10)                     null,
   IDUNUDAD             NUMBER(10)                     null,
   COD_SUCURSAL         NUMBER(5)                      null,
   PRODUCTO             VARCHAR2(200)                  null,
   CANTIDAD             NUMBER(10)                     null,
   PRECIO               NUMBER(10,2)                   null,
   FECHA_INGRESO        DATE                           null,
   constraint PK_PRODUCTO primary key (COD_PRODUCTO)
);
alter table producto add estado VARCHAR2(75);

Create Sequence SQC_PRODUCTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: PUESTO SEQUENCIA                                                */
/*==============================================================*/
create table PUESTO 
(
   IDPUESTO             NUMBER(10)                     not null,
   PUESTO               VARCHAR2(75)                   null,
   constraint PK_PUESTO primary key (IDPUESTO)
);

Create Sequence SQC_PUESTO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;
/*==============================================================*/
/* Table: SUCURSAL Y SEQUENCIA                                              */
/*==============================================================*/
create table SUCURSAL 
(
   COD_SUCURSAL         NUMBER(5)                      not null,
   COD_MUNICIPIO        NUMBER(10)                     null,
   NOMBRE_SUCURSAL      VARCHAR2(200)                  null,
   constraint PK_SUCURSAL primary key (COD_SUCURSAL)
);

Create Sequence SQC_SUCURSAL
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: TELEFONO_CLIENTE Y SEQUENCIA                                      */
/*==============================================================*/
create table TELEFONO_CLIENTE 
(
   IDTELEFONO           NUMBER(15)                     not null,
   COD_CLIENTE          NUMBER(15)                     null,
   TELEFONO             VARCHAR2(75)                   null,
   constraint PK_TELEFONO_CLIENTE primary key (IDTELEFONO)
);

Create Sequence SQC_TELEFONO_CLIENTE
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;
/*==============================================================*/
/* Table: TELEFONO_EMPLEADO Y SEQUENCIA                                     */
/*==============================================================*/
create table TELEFONO_EMPLEADO 
(
   IDTELEFONO           NUMBER(15)                     not null,
   COD_EMPLEADO         NUMBER(10)                     null,
   TELEFONO             VARCHAR2(75)                   null,
   constraint PK_TELEFONO_EMPLEADO primary key (IDTELEFONO)
);

Create Sequence SQC_TELEFONO_EMPLEADO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;
/*==============================================================*/
/* Table: TURNO Y SEQUENCIA                                                 */
/*==============================================================*/
create table TURNO 
(
   IDTURNO              NUMBER(10)                     not null,
   TURNO                VARCHAR2(75)                   null,
   constraint PK_TURNO primary key (IDTURNO)
);

Create Sequence SQC_TURNO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: UNIDAD_MEDIDA Y SEQUENCIA                                       */
/*==============================================================*/
create table UNIDAD_MEDIDA 
(
   IDUNUDAD             NUMBER(10)                     not null,
   UNIDAD               VARCHAR2(75)                   null,
   constraint PK_UNIDAD_MEDIDA primary key (IDUNUDAD)
);

Create Sequence SQC_UNIDAD_MEDIDA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: VEHICULO Y SEQUENCIA                                             */
/*==============================================================*/
create table VEHICULO 
(
   IDVEHICULO           NUMBER(10)                     not null,
   TIPO_VEHICULO        VARCHAR2(75)                   null,
   constraint PK_VEHICULO primary key (IDVEHICULO)
);

Create Sequence SQC_VEHICULO
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* Table: VITACORA Y SEQUENCIA                                             */
/*==============================================================*/
create table VITACORA 
(
   IDBITACURA           NUMBER(15)                     not null,
   TABLA                VARCHAR2(75)                     null,
   USUARIO              VARCHAR2(75)                     null,
   FECHA                DATE                           null,
   ANTIGUO              VARCHAR2(75)                    null,
   NUEVO                VARCHAR2(75)                     null,
   ATRIBUTO             VARCHAR2(75)                     null,
   TIPO                 VARCHAR2(75)                     null,
   constraint PK_VITACORA primary key (IDBITACURA)
);

CREATE SEQUENCE SQC_BITACORA
START WITH 1
INCREMENT BY 1
MINVALUE 1
NOMAXVALUE;

/*==============================================================*/
/* TABLA CUENTA BANCO Y SEQUENCIA                                             */
/*==============================================================*/
CREATE TABLE CUENTA(
   IDCUENTA  NUMBER(15)             not null,
   NOMBRE     VARCHAR2(75)           null,
   TOTAL   NUMBER(10,2)           null,
   TOTAL1   NUMBER(10,2)           null,
   INGRESO   NUMBER(10,2)           null,
   GANANCIA   NUMBER(10,2)           null,
   constraint PK_CUENTA primary key (IDCUENTA)
);

Create Sequence SQC_CUENTA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;

/*==============================================================*/
/* TABLA COMPRA Y SEQUENCIA                                             */
/*==============================================================*/
CREATE TABLE COMPRA(
   IDCOMPRA  NUMBER(15)             not null,
   PROEVEDOR     VARCHAR2(75)           null,
   PRODUCTO      VARCHAR2(75)           null,
   CANTIDAD      NUMBER(10,2)           null,
   PRECIO        NUMBER(10,2)           null,
   TOTAL        NUMBER(10,2)           null,
   constraint PK_COMPRA primary key (IDCOMPRA)
);

Create Sequence SQC_COMPRA
Start With 1
Minvalue 1
Nomaxvalue
Increment By 1
Cache 20;
