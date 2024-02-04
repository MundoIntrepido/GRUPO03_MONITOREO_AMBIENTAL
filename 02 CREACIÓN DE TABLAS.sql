/* VALIDACIÓN DE TABLAS */

/*1*/	IF OBJECT_ID('grupo3.analisis') IS NOT NULL DROP TABLE grupo3.analisis;
/*2*/	IF OBJECT_ID('grupo3.cliente') IS NOT NULL DROP TABLE grupo3.cliente;
/*3*/	IF OBJECT_ID('grupo3.contrato_monitoreo') IS NOT NULL DROP TABLE grupo3.contrato_monitoreo;
/*4*/	IF OBJECT_ID('grupo3.empleado') IS NOT NULL DROP TABLE grupo3.empleado;
/*5*/	IF OBJECT_ID('grupo3.empleado_area') IS NOT NULL DROP TABLE grupo3.empleado_area;
/*6*/	IF OBJECT_ID('grupo3.equipo_muestreo') IS NOT NULL DROP TABLE grupo3.equipo_muestreo;
/*7*/	IF OBJECT_ID('grupo3.muestreo') IS NOT NULL DROP TABLE grupo3.muestreo;
/*8*/	IF OBJECT_ID('grupo3.resultado') IS NOT NULL DROP TABLE grupo3.resultado;
/*9*/	IF OBJECT_ID('grupo3.test') IS NOT NULL DROP TABLE grupo3.test;
/*10*/	IF OBJECT_ID('grupo3.tipo_monitoreo') IS NOT NULL DROP TABLE grupo3.tipo_monitoreo;



/* CREACIÓN DE TABLAS */

create table grupo3.analisis
(
	analisis_id		int			not null	/*identity (1,1)*/,
	fecha_analisis	datetime	null,
	muestreo_id		int			null,
	test_id			int			null,
	empleado_id		int			null,
);

create table grupo3.cliente
(
	cliente_id		int			not null	/*identity (1,1)*/,
	nombre			varchar(100)	null,
	email			varchar(100)	null,
	telefono		int				null,
);

create table grupo3.contrato_monitoreo
(
	contrato_monitoreo_id	int				not null	/*identity (1,1)*/,
	monto					numeric (14, 2)	null,
	fecha_inicio			datetime		null,
	fecha_fin				datetime		null,
	cliente_id				int				null,
);

create table grupo3.empleado
(
	empleado_id			int			not null	/*identity (1,1)*/,
	empleado_nombre		varchar(50) null,
	empleado_area_id	int			null,
	condicion			varchar(50)	null,
	fecha_inicio		date		null,
	fecha_salida		date		null
);

create table grupo3.empleado_area
(
	empleado_area_id	int			not null	/*identity (1,1)*/,
	nombre				varchar(50) null,
);

create table grupo3.equipo_muestreo
(
	equipo_id	int			not null	/*identity (1,1)*/,
	nombre		varchar(100) null,
);

create table grupo3.muestreo
(
	muestreo_id				int		not null	/*identity (1,1)*/,
	fecha_muestreo			datetime	null,
	contrato_monitoreo_id	int			null,
	ubigeo					int			null,
	tipo_monitoreo_id		int			null,
	estado_actual			varchar(80) null,
	empleado_id				int			null,
	equipo_id				int			null,
);

create table grupo3.resultado
(
	resultado_id		int			not null	/*identity (1,1)*/,
	resultado_detalle	varchar(100)null,
	analisis_id			int			null,
	empleado_id			int			null,
	estado_actual		varchar(50) null,
	fecha_resultado		datetime	null,
	resultado_analisis	varchar(255)null,
);

create table grupo3.test
(
	test_id		int			not null	/*identity (1,1)*/,
	nombre		varchar(50) null,
	parametros	varchar(50) null,
);

create table grupo3.tipo_monitoreo
(
	tipo_monitoreo_id	int			not null	/*identity (1,1)*/,
	nombre_monitoreo	varchar(50) null,
);



/* ASIGNACIÓN DE CLAVE PRIMARIA */

alter table grupo3.analisis add constraint pk_analisis primary key (analisis_id)
alter table grupo3.cliente add constraint pk_cliente primary key (cliente_id)
alter table grupo3.contrato_monitoreo add constraint pk_contrato_monitoreo primary key (contrato_monitoreo_id)
alter table grupo3.empleado add constraint pk_empleado primary key (empleado_id)
alter table grupo3.empleado_area add constraint pk_empleado_area primary key (empleado_area_id)
alter table grupo3.equipo_muestreo add constraint pk_equipo primary key (equipo_id)
alter table grupo3.muestreo add constraint pk_muestreo primary key (muestreo_id)
alter table grupo3.resultado add constraint pk_resultado primary key (resultado_id)
alter table grupo3.test add constraint pk_test primary key (test_id)
alter table grupo3.tipo_monitoreo add constraint pk_tipo_monitoreo primary key (tipo_monitoreo_id)



/* ASIGNACIÓN DE CLAVE FORÁNEA */

alter table grupo3.analisis add constraint fk_analisis_empleado foreign key (empleado_id) references grupo3.empleado (empleado_id)
alter table grupo3.analisis add constraint fk_analisis_muestreo foreign key (muestreo_id) references grupo3.muestreo (muestreo_id)
alter table grupo3.analisis add constraint fk_analisis_test foreign key (test_id) references grupo3.test (test_id)
alter table grupo3.contrato_monitoreo add constraint fk_contrato_monitoreo_cliente foreign key (cliente_id) references grupo3.cliente (cliente_id)
alter table grupo3.empleado add constraint fk_empleado_empleado_area foreign key (empleado_area_id) references grupo3.empleado_area(empleado_area_id)
alter table grupo3.muestreo add constraint fk_muestreo_contrato_monitoreo foreign key (contrato_monitoreo_id) references grupo3.contrato_monitoreo(contrato_monitoreo_id)
alter table grupo3.muestreo add constraint fk_muestreo_empleado foreign key (empleado_id) references grupo3.empleado(empleado_id)
alter table grupo3.muestreo add constraint fk_muestreo_equipo_muestreo foreign key (equipo_id) references grupo3.equipo_muestreo(equipo_id)
alter table grupo3.muestreo add constraint fk_muestreo_tipo_monitoreo foreign key (tipo_monitoreo_id) references grupo3.tipo_monitoreo(tipo_monitoreo_id)
alter table grupo3.resultado add constraint fk_resultado_analisis foreign key (analisis_id) references grupo3.analisis(analisis_id)
alter table grupo3.resultado add constraint fk_resultado_empleado foreign key (empleado_id) references grupo3.empleado(empleado_id)

