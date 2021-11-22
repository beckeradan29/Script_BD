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
/*==============================================================*/
/* LLAVES FORANEAS                                             */
/*==============================================================*/
alter table CLIENTE
   add constraint FK_CLIENTE_REFERENCE_VEHICULO foreign key (IDVEHICULO)
      references VEHICULO (IDVEHICULO);

alter table DIRECCION_CLIENTE
   add constraint FK_DIRECCIO_REFERENCE_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE);

alter table DIRECCION_EMPLEADO
   add constraint FK_DIRECCIO_REFERENCE_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_PUESTO foreign key (IDPUESTO)
      references PUESTO (IDPUESTO);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_TURNO foreign key (IDTURNO)
      references TURNO (IDTURNO);

alter table EMPLEADO
   add constraint FK_EMPLEADO_REFERENCE_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL);

alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO);
    
alter table FACTURA
   add constraint FK_FACTURA_REFERENCE_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE);

alter table INVENTARIO
   add constraint FK_INVENTAR_REFERENCE_PRODUCTO foreign key (COD_PRODUCTO)
      references PRODUCTO (COD_PRODUCTO);

alter table MUNICIPIO
   add constraint FK_MUNICIPI_REFERENCE_DEPARTAM foreign key (COD_DEPARTAMENTO)
      references DEPARTAMENTO (COD_DEPARTAMENTO);

alter table PRODUCTO
   add constraint FK_PRODUCTO_REFERENCE_CATEGORI foreign key (IDCATEGORIA)
      references CATEGORIA_PRODUCTO (IDCATEGORIA);

alter table PRODUCTO
   add constraint FK_PRODUCTO_REFERENCE_TIPO foreign key (IDTIPO)
      references TIPO_PRODUCTO (IDTIPO);

alter table PRODUCTO
   add constraint FK_PRODUCTO_REFERENCE_UNIDAD_M foreign key (IDUNUDAD)
      references UNIDAD_MEDIDA (IDUNUDAD);

alter table PRODUCTO
   add constraint FK_PRODUCTO_REFERENCE_SUCURSAL foreign key (COD_SUCURSAL)
      references SUCURSAL (COD_SUCURSAL);

alter table SUCURSAL
   add constraint FK_SUCURSAL_REFERENCE_MUNICIPI foreign key (COD_MUNICIPIO)
      references MUNICIPIO (COD_MUNICIPIO);

alter table TELEFONO_CLIENTE
   add constraint FK_TELEFONO_REFERENCE_CLIENTE foreign key (COD_CLIENTE)
      references CLIENTE (COD_CLIENTE);

alter table TELEFONO_EMPLEADO
   add constraint FK_TELEFONO_REFERENCE_EMPLEADO foreign key (COD_EMPLEADO)
      references EMPLEADO (COD_EMPLEADO);
/*==============================================================*/
/* TRIGGERS PROCEDIMIENTO Y FUNCION                                            */
/*==============================================================*/
CREATE OR REPLACE TRIGGER TRG_BUR_CLIENTE
BEFORE UPDATE ON CLIENTE
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
NCUI NUMBER(10);
BEGIN
  BEGIN
      SELECT CUI INTO NCUI
      FROM CLIENTE
       WHERE CUI = :NEW.CUI;
     EXCEPTION
     WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001,'No existe el CUI buscado');
     WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20002,'El cui existe mas de una vez');
     WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003,'Error al actualizr el CUI '||SQLERRM);
  END;
END;

CREATE OR REPLACE TRIGGER TRG_BUR_CLIENTE1
BEFORE UPDATE ON CLIENTE
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
NNIT NUMBER(10);
BEGIN
  BEGIN
      SELECT CUI INTO NNIT
      FROM CLIENTE
       WHERE NIT = :NEW.NIT;
     EXCEPTION
     WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001,'No existe el NIT buscado');
     WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20002,'El nit existe mas de una vez');
     WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003,'Error al actualizr el NIT '||SQLERRM);
  END;
END;

CREATE OR REPLACE TRIGGER TRG_BUR_EMPLEADO
BEFORE UPDATE ON EMPLEADO
REFERENCING OLD AS OLD NEW AS NEW
FOR EACH ROW
DECLARE
NCUI1 NUMBER(10);
BEGIN
  BEGIN
      SELECT CUI INTO NCUI1
      FROM EMPLEADO
       WHERE CUI = :NEW.CUI;
     EXCEPTION
     WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20001,'No existe el CUI buscado');
     WHEN TOO_MANY_ROWS THEN
        RAISE_APPLICATION_ERROR(-20002,'El cui existe mas de una vez');
     WHEN OTHERS THEN
        RAISE_APPLICATION_ERROR(-20003,'Error al actualizr el CUI '||SQLERRM);
  END;
END;

create or replace trigger producto_actualiza_stock
after insert on FACTURA FOR EACH ROW
declare
stock producto.cantidad%type;
begin
    select cantidad into stock from producto where producto = :new.producto;
    if stock - :new.cantidad > 0 then
   update producto set cantidad = cantidad - :new.cantidad
   where producto = :new.producto;
  else
  raise_application_error(-20001, 'No hay cantidad solisitada de producto');
  end if;
end;

create or replace trigger cuenta_actualiza_ingreso
after insert on FACTURA FOR EACH ROW
declare
stock cuenta.ingreso%type;
begin
 select ingreso into stock from cuenta where nombre = 'CUENTA EMPRESA';
    if stock >= 0 then
   update cuenta set ingreso = ingreso + :new.costo where nombre = 'CUENTA EMPRESA';
   end if;
end;

create or replace trigger producto_costo
before insert on FACTURA FOR EACH ROW
declare
stock producto.precio%type;
begin
    select precio into stock from producto where producto = :new.producto;
    if stock > 0 then
    :new.costo := :new.cantidad * stock;
  else
  raise_application_error(-20001, 'Error al calcular');
  end if;
end;

create or replace trigger producto_actualiza_estado
before update of cantidad on PRODUCTO FOR EACH ROW
declare
begin

   if :new.cantidad >= 0 then
   :new.estado := 'DISPONIBLE';
   else
   :new.estado := 'NO DISPONIBLE';
   end if;
  
end;

create or replace trigger producto_actualiza_total
after insert on COMPRA FOR EACH ROW
declare
stock cuenta.total%type;
begin
    select total into stock from cuenta where idcuenta = 1;
    if stock - :new.cantidad > 0 then
   update cuenta set total = total - :new.total
   where idcuenta = 1;
  else
  raise_application_error(-20001, 'No hay suficiente dinero en la cuenta para hacer la compra');
  end if;
end;

create or replace trigger producto_actualiza_cantidad
after insert on COMPRA FOR EACH ROW
declare
stock producto.cantidad%type;
begin
    select cantidad into stock from producto where producto = :new.producto;
    if stock - :new.cantidad > 0 then
   update producto set cantidad = cantidad + :new.cantidad
   where producto = :new.producto;
  else
  raise_application_error(-20001, 'Error');
  end if;
end;

create or replace trigger puesto_vitacora
after insert on PUESTO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'PUESTO', USER, SYSDATE, 'NUEVO PUESTO','INSERT');   
end;

create or replace trigger puesto_vitacora1
after delete on PUESTO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'PUESTO', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger telefono_emp_vitacora
after insert on TELEFONO_EMPLEADO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'TELEFONO_EMPLEADO', USER, SYSDATE, 'NUEVO TELEFONO','INSERT');   
end;

create or replace trigger telefono_emp_vitacora1
after delete on TELEFONO_EMPLEADO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'TELEFONO_EMPLEADO', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger direccion_emp_vitacora
after insert on DIRECCION_EMPLEADO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'DIRECCION_EMPLEADO', USER, SYSDATE, 'NUEVA DIRECCION','INSERT');   
end;

create or replace trigger direccion_emp_vitacora1
after delete on DIRECCION_EMPLEADO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'DIRECCION_EMPLEADO', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger telefono_cli_vitacora
after insert on TELEFONO_CLIENTE FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'TELEFONO_CLIENTE', USER, SYSDATE, 'NUEVO TELEFONO','INSERT');   
end;

create or replace trigger telefono_cli_vitacora1
after delete on TELEFONO_CLIENTE FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'TELEFONO_CLIENTE', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger direccion_cli_vitacora
after insert on DIRECCION_CLIENTE FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'DIRECCION_CLIENTE', USER, SYSDATE, 'NUEVA DIRECCION','INSERT');   
end;

create or replace trigger direccion_cli_vitacora1
after delete on DIRECCION_CLIENTE FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'DIRECCION_CLIENTE', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger factura_vitacora
after insert on FACTURA FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'FACTURA', USER, SYSDATE, 'NUEVO PUESTO','INSERT');   
end;

create or replace trigger factura_vitacora1
after delete on FACTURA FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'FACTURA', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger cliente_vitacora
after insert on CLIENTE FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'CLIENTE', USER, SYSDATE, 'NUEVO CLIENTE','INSERT');   
end;

create or replace trigger cliente_vitacora1
after delete on CLIENTE FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'CLIENTE', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger producto_vitacora
after insert on PRODUCTO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'PRODUCTO', USER, SYSDATE, 'NUEVO PRODUCTO','INSERT');   
end;

create or replace trigger producto_vitacora1
after delete on PRODUCTO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'PRODUCTO', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger empleado_vitacora
after insert on EMPLEADO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'EMPLEADO', USER, SYSDATE, 'NUEVO EMPLEADO','INSERT');   
end;

create or replace trigger empleado_vitacora1
after delete on EMPLEADO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'EMPLEADO', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger sucursal_vitacora
after insert on SUCURSAL FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'SUCURSAL', USER, SYSDATE, 'NUEVA SUCURSAL','INSERT');   
end;

create or replace trigger sucursal_vitacora1
after delete on SUCURSAL FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'SUCURSAL', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger compra_vitacora
after insert on COMPRA FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'COMPRA', USER, SYSDATE, 'NUEVA COMPRA','INSERT');   
end;

create or replace trigger compra_vitacora1
after delete on COMPRA FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'COMPRA', USER, SYSDATE, 'BORRAR','DELETE');   
end;

create or replace trigger cuenta_vitacora
before update of TOTAL on CUENTA FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ANTIGUO, NUEVO, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'Cuenta', USER, SYSDATE, :old.total, :new.total, 'TOTAL','UPDATE');   
end;

create or replace trigger cuenta_vitacora_ing
before update of INGRESO on CUENTA FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ANTIGUO, NUEVO, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'Cuenta', USER, SYSDATE, :old.ingreso, :new.ingreso, 'INGRESO','UPDATE');   
end;

create or replace trigger producto_vitacora_es
before update of ESTADO on PRODUCTO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ANTIGUO, NUEVO, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'PRODUCTO', USER, SYSDATE, :old.estado, :new.estado, 'ESTADO','UPDATE');   
end;

create or replace trigger producto_vitacora_cant
before update of CANTIDAD on PRODUCTO FOR EACH ROW
declare
begin
    insert into vitacora(IDBITACURA, TABLA, USUARIO, FECHA, ANTIGUO, NUEVO, ATRIBUTO, TIPO)VALUES(SQC_BITACORA.NEXTVAL, 'PRODUCTO', USER, SYSDATE, :old.cantidad, :new.cantidad, 'CANTIDAD','UPDATE');   
end;

create or replace PROCEDURE PROC_BITACORA(NTABLA VARCHAR2, 
                            SCAMPO VARCHAR2, SVALORANT VARCHAR2, SVALORNUE VARCHAR2, STIP VARCHAR2) is
                            PRAGMA AUTONOMOUS_TRANSACTION;
begin
  insert into vitacora (IDBITACURA, TABLA, USUARIO, FECHA, ANTIGUO, NUEVO, ATRIBUTO, TIPO)
  values (SQC_BITACORA.NEXTVAL, NTABLA, USER, SYSDATE, SVALORANT, SVALORNUE, SCAMPO, STIP);
    COMMIT;
EXCEPTION
  WHEN OTHERS THEN
    RAISE_APPLICATION_ERROR(-20001,'Error Insertando Bitacora'||sqlerrm);
end;

CREATE PUBLIC SYNONYM PROC_BITACORA FOR PROC_BITACORA;

CREATE OR REPLACE FUNCTION TOTAL (VAL1 IN NUMBER, VAL2 IN NUMBER) RETURN NUMBER IS
NPRODUCTO NUMBER:=0;
BEGIN
	NPRODUCTO := PAR1 * VAL2;
	RETURN NPRODUCTO;
EXCEPTION
	WHEN OTHERS THEN
		RETURN 0;
END;
/*==============================================================*/
/* INSERTS A TABLAS PARA PRUEVAS                                         */
/*==============================================================*/
INSERT INTO ANUNCIO(IDANUNCIO, DESCRIPCION, FECHA_INICIO, FECHA_FIN) VALUES (SQC_ANUNCIO.NEXTVAL, 'OFERTA DE GASOLIDA CON EL 10% DE DESCUENTO','12/11/2021','12/12/2021');
INSERT INTO ANUNCIO(IDANUNCIO, DESCRIPCION, FECHA_INICIO, FECHA_FIN) VALUES (SQC_ANUNCIO.NEXTVAL, 'OFERTA DE DIESEL CON EL 12% DE DESCUENTO','12/11/2021','12/12/2021');
INSERT INTO ANUNCIO(IDANUNCIO, DESCRIPCION, FECHA_INICIO, FECHA_FIN) VALUES (SQC_ANUNCIO.NEXTVAL, 'OFERTA DE LUBRICANTES CON EL 10% DE DESCUENTO','12/11/2021','12/12/2021');

INSERT INTO TIPO_PRODUCTO(IDTIPO, TIPO_PROD) VALUES (SQC_TIPO_PRODUCTO.NEXTVAL, 'GASOLINA');
INSERT INTO TIPO_PRODUCTO(IDTIPO, TIPO_PROD) VALUES (SQC_TIPO_PRODUCTO.NEXTVAL, 'DIESEL');
INSERT INTO TIPO_PRODUCTO(IDTIPO, TIPO_PROD) VALUES (SQC_TIPO_PRODUCTO.NEXTVAL, 'ACEITE');

insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Alta Verapaz');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Baja Verapaz');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Chimaltenango');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Chiquimula');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'El Progreso');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Escuintla');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Guatemala');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Huehuetenango');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Izabal');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Jalapa');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Jutiapa');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Peten');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Quetzaltenango');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Retalhuleu');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Sacatepequez');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'San Marcos');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Santa Marcos');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Santa Rosa');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Solola');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Suchitepequez');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Totonicapan');
insert into DEPARTAMENTO (COD_DEPARTAMENTO, DEPARTAMENTO) values (SQC_DEPARTAMENTO.Nextval, 'Zacapa');

-----------------ALTA VERAPAZ--------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'Coban');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'Santa Cruz Verapaz');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'San Cristobal Verapaz');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'Tactic');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '1', 'Tamahu');

-----------------BAJA VERAPAZ------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'Salama');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'San Miguel Chija');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'Rabinal');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'Cubulto');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '2', 'Granados');

-----------------Chimaltenango-----------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'Chimaltenango');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'Tecpan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'Patzun');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'Zaragoza');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '3', 'El Tejar');

-----------------Chiquimula-----------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Jocotan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Camotan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Olapa');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Ipala');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '4', 'Esquipulas');

------------------El PROGRESO-------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'Guastatoya');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'Sanarate');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'Morazan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'El Jicaro');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '5', 'Sansare');

------------------ESCUINTLA-----------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'Siqunala');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'La Gomera');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'Palin');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'Nueva Concepcion');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '6', 'Puerto San Jose');

-----------------GUATEMALA-------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'San Jose Pinula');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'Santa Catarina Pinula');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'Fraijanes');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'Mixco');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '7', 'Villa Nueva');

------------------HUHUETENANANGO--------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'Chiantla');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'La Libertad');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'Santa Eulalia');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'Santa Barbara');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '8', 'Colotenango');


-------------------IZABAL----------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'Puerto Barrios');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'Livingston');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'El Estor');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'Morales');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '9', 'Los Amates');

--------------------JALAPA---------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'San Pedro Pinula');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'Monjas');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'Mataquescuintla');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'San Luis Jilotepeque');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '10', 'San Manuel Chaparron');

--------------------JUTIAPA--------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'Jutiapa');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'El Progreso');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'Agua Blanca');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'Asuncion Mita');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '11', 'Jalpatagua');

---------------------PETEN---------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'Flores');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'San Benito');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'La Libertad');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'Poptun');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '12', 'Melchor de Mencos');

-------------------Quetzaltenango--------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Salcaja');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Caantel');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Colomba');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Coatepeque');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '13', 'Genova');

-------------------RETALHULEU--------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'Champerico');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'San Sebastian');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'San Carlos');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'San Felipe');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '14', 'Santa Cruz');

------------------SACATEPEQUEZ-----------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'Antigua Guatemala');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'Sumpago');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'Ciudad Vieja');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'San Lucas Sacatepequez');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '15', 'Santa Lucia Milpas Altas');

--------------------San Marcos-----------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'San Pedro Sacatepequez');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'Tacana');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'Malacatan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'San Antonio');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '16', 'El Tumbador');

-------------------Santa Rosa------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Cuilapa');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Barberena');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Chiquimulilla');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Pueblo Nuevo Viñas');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '17', 'Taxisco');

------------------Solola---------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'Nahuala');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'Santiago Atitlan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'Panajachel');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'San Pedro la Laguna');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '18', 'San Lucas Toliman');

-------------------Suchitepequez---------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'Mazatenango');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'Patulul');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'Chicacao');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'San Bernandino');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '19', 'Santo Domingo');

--------------------Totonicapan----------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'San Francisco el Alto');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'Momostenango');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'San Cristobal');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'San Bartolo');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '20', 'La Reforma');

------------------Zacapa-------------------
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Estanzuela');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Rio Hondo');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Teculutan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Gualan');
insert into MUNICIPIO (COD_MUNICIPIO, COD_DEPARTAMENTO, MUNICIPIO) values (SQC_MUNICIPIO.Nextval, '21', 'Cabañas');

INSERT INTO PRODUCTO(COD_PRODUCTO,IDCATEGORIA,IDTIPO,IDUNUDAD,COD_SUCURSAL,PRODUCTO,CANTIDAD,PRECIO,FECHA_INGRESO,ESTADO) VALUES
(SQC_PRODUCTO.NEXTVAL,1,1,1,1,'GASOLINA SUPER',5000,35,'12/11/2021','DISPONIBLE');
INSERT INTO PRODUCTO(COD_PRODUCTO,IDCATEGORIA,IDTIPO,IDUNUDAD,COD_SUCURSAL,PRODUCTO,CANTIDAD,PRECIO,FECHA_INGRESO,ESTADO) VALUES
(SQC_PRODUCTO.NEXTVAL,1,1,1,1,'GASOLINA REGULAR',5000,32,'12/11/2021','DISPONIBLE');
INSERT INTO PRODUCTO(COD_PRODUCTO,IDCATEGORIA,IDTIPO,IDUNUDAD,COD_SUCURSAL,PRODUCTO,CANTIDAD,PRECIO,FECHA_INGRESO,ESTADO) VALUES
(SQC_PRODUCTO.NEXTVAL,1,2,1,1,'DIESEL FULL',5000,25,'12/11/2021','DISPONIBLE');
INSERT INTO PRODUCTO(COD_PRODUCTO,IDCATEGORIA,IDTIPO,IDUNUDAD,COD_SUCURSAL,PRODUCTO,CANTIDAD,PRECIO,FECHA_INGRESO,ESTADO) VALUES
(SQC_PRODUCTO.NEXTVAL,2,3,2,1,'ACEITE CASTROL',5000,15,'12/11/2021','DISPONIBLE');

insert into TURNO (IDTURNO, TURNO) values (SQC_TURNO.Nextval, 'DIURNO');
insert into TURNO (IDTURNO, TURNO) values (SQC_TURNO.Nextval, 'NOCTURNO');
insert into TURNO (IDTURNO, TURNO) values (SQC_TURNO.Nextval, 'MIXTO');

INSERT INTO UNIDAD_MEDIDA(IDUNUDAD, UNIDAD) VALUES (SQC_UNIDAD_MEDIDA.NEXTVAL, 'GALON');
INSERT INTO UNIDAD_MEDIDA(IDUNUDAD, UNIDAD) VALUES (SQC_UNIDAD_MEDIDA.NEXTVAL, 'LITRO');
INSERT INTO UNIDAD_MEDIDA(IDUNUDAD, UNIDAD) VALUES (SQC_UNIDAD_MEDIDA.NEXTVAL, 'TONEL');

INSERT INTO VEHICULO(IDVEHICULO, TIPO_VEHICULO) VALUES (SQC_VEHICULO.NEXTVAL, 'AUTOMOVIL');
INSERT INTO VEHICULO(IDVEHICULO, TIPO_VEHICULO) VALUES (SQC_VEHICULO.NEXTVAL, 'BUS');
INSERT INTO VEHICULO(IDVEHICULO, TIPO_VEHICULO) VALUES (SQC_VEHICULO.NEXTVAL, 'CAMEON');
INSERT INTO VEHICULO(IDVEHICULO, TIPO_VEHICULO) VALUES (SQC_VEHICULO.NEXTVAL, 'TRAILER');
INSERT INTO VEHICULO(IDVEHICULO, TIPO_VEHICULO) VALUES (SQC_VEHICULO.NEXTVAL, 'MOTOSICLETA');

insert into puesto(idpuesto,puesto)values (SQC_PUESTO.NEXTVAL,'CAJERO');

INSERT INTO CATEGORIA_PRODUCTO(IDCATEGORIA, CATEGORIA_PROD) VALUES (SQC_CATEGORIA_PRODUCTO.NEXTVAL, 'COMBUSTIBLE');
INSERT INTO CATEGORIA_PRODUCTO(IDCATEGORIA, CATEGORIA_PROD) VALUES (SQC_CATEGORIA_PRODUCTO.NEXTVAL, 'LUBRICANTE');

insert into empleado(COD_EMPLEADO, IDTURNO,COD_SUCURSAL, IDPUESTO, CUI, NOMBRE, APELLIDO ,CORREO, GENERO, FECHA_INGRESO)values
(SQC_EMPLEADO.NEXTVAL, 1, 1, 1, '12345678932165','JESUS','MARTINEZ','JMARTINEZ@GMAIL.COM','MASCULINO',SYSDATE);

insert into telefono_empleado(idtelefono, cod_empleado, telefono) values (SQC_TELEFONO_EMPLEADO.NEXTVAL, 1, 45236987);

insert into factura(COD_FACTURA ,COD_CLIENTE, COD_EMPLEADO, NOMBRE, NIT, TELEFONO,PRODUCTO, CANTIDAD, COSTO, TIPO_PAGO, FECHA_EMISION)values
(SQC_FACTURA.NEXTVAL, 1, 1, 'Adan Martinez', '45698788', '41861592', 'GASOLINA SUPER', 10,35 ,'Efectivo',SYSDATE);
insert into factura(COD_FACTURA ,COD_CLIENTE, COD_EMPLEADO, NOMBRE, NIT, TELEFONO,PRODUCTO, CANTIDAD, COSTO, TIPO_PAGO, FECHA_EMISION)values
(SQC_FACTURA.NEXTVAL, 1, 1, 'Adan Martinez', '45698788', '41861592', 'GASOLINA SUPER', 90,35 ,'Efectivo',SYSDATE);
insert into factura(COD_FACTURA ,COD_CLIENTE, COD_EMPLEADO, NOMBRE, NIT, TELEFONO,PRODUCTO, CANTIDAD, COSTO, TIPO_PAGO, FECHA_EMISION)values
(SQC_FACTURA.NEXTVAL, 1, 1, 'Adan Martinez', '45698788', '41861592', 'GASOLINA SUPER', 500,35 ,'Cheque',SYSDATE);
insert into factura(COD_FACTURA ,COD_CLIENTE, COD_EMPLEADO, NOMBRE, NIT, TELEFONO,PRODUCTO, CANTIDAD, COSTO, TIPO_PAGO, FECHA_EMISION)values
(SQC_FACTURA.NEXTVAL, 1, 1, 'Adan Martinez', '45698788', '41861592', 'GASOLINA SUPER', 50,35 ,'Cheque',SYSDATE);
insert into factura(COD_FACTURA ,COD_CLIENTE, COD_EMPLEADO, NOMBRE, NIT, TELEFONO,PRODUCTO, CANTIDAD, COSTO, TIPO_PAGO, FECHA_EMISION)values
(SQC_FACTURA.NEXTVAL, 1, 1, 'Adan Martinez', '45698788', '41861592', 'GASOLINA SUPER', 50,35 ,'EFECTIVO',SYSDATE);
insert into factura(COD_FACTURA ,COD_CLIENTE, COD_EMPLEADO, NOMBRE, NIT, TELEFONO,PRODUCTO, CANTIDAD, COSTO, TIPO_PAGO, FECHA_EMISION)values
(SQC_FACTURA.NEXTVAL, 1, 1, 'Adan Martinez', '45698788', '41861592', 'GASOLINA SUPER', 100,35 ,'EFECTIVO',SYSDATE);
insert into factura(COD_FACTURA ,COD_CLIENTE, COD_EMPLEADO, NOMBRE, NIT, TELEFONO,PRODUCTO, CANTIDAD, COSTO, TIPO_PAGO, FECHA_EMISION)values
(SQC_FACTURA.NEXTVAL, 1, 1, 'Adan Martinez', '45698788', '41861592', 'GASOLINA SUPER', 350,35 ,'EFECTIVO',SYSDATE);

INSERT INTO SUCURSAL(COD_SUCURSAL,COD_MUNICIPIO,NOMBRE_SUCURSAL) VALUES 
(SQC_SUCURSAL.NEXTVAL,1,'SANTA CLARA');

INSERT INTO CUENTA(IDCUENTA, NOMBRE, TOTAL, TOTAL1) VALUES
(SQC_CUENTA.NEXTVAL, 'CUENTA EMPRESA', 75000, 75000);

