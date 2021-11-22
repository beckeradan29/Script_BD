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