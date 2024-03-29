/* INSERT - AGREGAR DATOS A LAS TABLAS*/

--1 CLIENTE
insert into grupo3.cliente (cliente_id, nombre, email, telefono)

values
		(1,'EMBASADORA','embasadora@gmail.com',954555777),
		(2,'EMBOTELLADORA','embtelladora@gmail.com',924550759),
		(3,'DIRECCION REGIONAL DE AGRIULTURA','drag@gmail.com',984830554),
		(4,'SUNASS','sunas@gmail.com',938979333),
		(5,'VULCANIZADORA DE GAS','vulcanizadora@gmail.com',954830744),
 		(6,'MINERA DEL SUR','minera_del_sur@yahoo.com',917830733),
		(7,'PESQUERA PAC�FICO','pesquera_pacifico@hotmail.com',924830722),
		(8,'GAS INDUSTRIAL S.A.','gas_industrial@gmail.com',965830711),
		(9,'MINER�A MODERNA','mineria_moderna@yahoo.com',913830700),
    	(10,'EMPRESA PESQUERA ATL�NTICA','empresa_pesquera_atlantica@hotmail.com',946830699),
    	(11,'GAS DEL NORTE','gas_del_norte@gmail.com',928830688),
    	(12,'MINERALES PROFUNDOS','minerales_profundos@yahoo.com',959830677),
    	(13,'PESQUERA DEL CARIBE','pesquera_del_caribe@hotmail.com',974830666),
    	(14,'COMPRESI�N DE GAS','compresion_de_gas@gmail.com',918530655),
    	(15,'MINERA DEL PAC�FICO','minera_del_pacifico@yahoo.com',944830644),
    	(16,'EMPRESA PESQUERA SUR','empresa_pesquera_sur@hotmail.com',976830633),
    	(17,'GAS Y ENERG�A S.A.','gas_energia@gmail.com',927830622),
    	(18,'MINA DORADA','mina_dorada@yahoo.com',968830611),
    	(19,'PESQUERA DEL NORTE','pesquera_del_norte@hotmail.com',921830600),
    	(20,'GAS INDUSTRIAL','gas_industrial@gmail.com',963530599),
    	(21,'MINERA PERUANA','minera_peruana@yahoo.com',986830588),
    	(22,'PESQUERA OCE�NICA','pesquera_oceanica@hotmail.com',929830577),
    	(23,'GAS DEL SUR','gas_del_sur@gmail.com',914830566),
    	(24,'MINERA DEL ESTE','minera_del_este@yahoo.com',995830555),
    	(25,'EMPRESA PESQUERA MARINA','empresa_pesquera_marina@hotmail.com',937830544),
    	(26,'GAS EMPRESARIAL','gas_empresarial@gmail.com',943830533),
    	(27,'MINER�A Y PESCA S.A.','mineria_pesca@yahoo.com',967830522),
    	(28,'PESQUERA COSTERA','pesquera_costera@hotmail.com',956830511),
    	(29,'GAS Y COMBUSTIBLES','gas_combustibles@gmail.com',994830500),
		(30,'MINERA ANDINA','minera_andina@gmail.com',933812255)
go

--2 EQUIPO_MUESTREO
insert into grupo3.equipo_muestreo (equipo_id, nombre)

values	(1,'MULTIPARAMETRO'),
		(2,'CLORIMETRO'),
		(3,'CORRECT�METRO'),
		(4,'CALIBRADOR'),
		(5,'MICROPIMPORT'),
		(6,'BARRENA EDELMAN SUELO'),
		(7,'BIOSAMPLER 100 AIRE'),
		(8,'KIT DE MUESTREO HACH AGUA')
go

--3 TIPO_MONITOREO
insert into grupo3.tipo_monitoreo (tipo_monitoreo_id, nombre_monitoreo)

values
		(1,'AGUA'),
		(2,'SUELO'),
		(3,'AIRE')
go

--4 EMPLEADO_AREA
insert into grupo3.empleado_area (empleado_area_id, nombre)

values
		(1,'ANALISTA'),
		(2,'MUESTREADOR'),
		(3,'RECEPCIONISTA')
go

--5 TEST
insert into grupo3.test (test_id, nombre, parametros)
values
		(1,'ANALISIS DE PH DE SUELO','PH ADECUADO'),
		(2,'ANALISIS CAPACIDAD DE RETENCION DE AGUA DE SUELO','DRENAJE ADECUADO'),
		(3,'ANALISIS DE CALIDAD BIOLOGICA DEL AIRE','PRESENCIA DE MICROORGANISMOS'),
		(4,'ANALISIS DE CALIDAD DE AIRE','CONTAMINANTES DE DIOXIDO DE CARBONO (CO2)'),
		(5,'ANALISIS DE CALIDAD QUIMICA DEL AIRE','CONCENTRACION DE METALES PESADOS'),
		(6,'ANALISIS DE CALIDAD DE AGUA','IMPUREZAS Y TURBIDEZ EN EL AGUA')
go

--6 CONTRATO_MONITOREO
insert into grupo3.contrato_monitoreo (contrato_monitoreo_id, monto, fecha_inicio, fecha_fin, cliente_id)

values
		(1,5000.00,'2024-01-23 14:28:34.567','2024-01-30 02:56:29.545',1),
		(2,8000.00,'2024-01-01 15:34:29.385','2024-01-28 02:56:29.332',1),
		(3,9800.00,'2024-01-10 10:56:29.126','2024-01-15 02:56:29.878',2),
		(4,9900.00,'2024-01-15 09:56:29.891','2024-01-30 02:56:29.434',3),
		(5,9800.00,'2024-01-18 08:56:29.566','2024-01-29 02:56:29.225',4),
		(6,7500.00,'2024-01-05 12:34:45.789','2024-01-25 18:45:29.443',6),
		(7,6200.00,'2024-01-12 09:15:29.456','2024-01-26 14:28:34.567',11),
		(8,7200.00,'2024-01-20 15:44:29.234','2024-01-29 11:30:29.789',18),
		(9,8800.00,'2024-01-04 18:36:29.845','2024-01-18 13:45:29.456',9),
		(10,6700.00,'2024-01-14 14:28:34.534','2024-01-24 10:30:29.104',14),
		(11,5300.00,'2024-01-03 22:56:29.333','2024-01-23 14:45:29.678',1),
		(12,9200.00,'2024-01-09 19:45:29.133','2024-01-29 11:34:29.507',8),
		(13,7200.00,'2024-01-13 16:28:34.523','2024-01-25 12:56:29.332',21),
		(14,7800.00,'2024-01-18 11:56:29.812','2024-01-28 17:45:29.670',3),
		(15,5500.00,'2024-01-22 08:34:29.678','2024-01-31 13:28:34.560',16),
		(16,9400.00,'2024-01-01 09:56:29.332','2024-01-29 14:45:29.801',12),
		(17,6700.00,'2024-01-05 08:28:34.567','2024-01-21 09:56:29.302',7),
		(18,6200.00,'2024-01-12 13:45:29.811','2024-01-24 19:56:29.508',19),
		(19,8800.00,'2024-01-10 09:56:29.332','2024-01-26 15:45:29.553',5),
		(20,7200.00,'2024-01-03 16:34:29.618','2024-01-22 11:56:29.352',20),
		(21,6300.00,'2024-01-14 08:45:29.113','2024-01-29 12:28:34.557',15),
		(22,7100.00,'2024-01-06 15:56:29.312','2024-01-30 10:45:29.866',2),
		(23,8000.00,'2024-01-07 12:45:29.111','2024-01-26 18:28:34.567',17),
		(24,9500.00,'2024-01-08 09:56:29.312','2024-01-25 14:45:29.691',13),
		(25,7600.00,'2024-01-11 16:28:34.517','2024-01-28 12:56:29.562',4),
		(26,6700.00,'2024-01-20 11:56:29.312','2024-01-30 17:45:29.561',10),
		(27,5800.00,'2024-01-14 09:45:29.811','2024-01-27 13:28:34.677',22),
		(28,7200.00,'2024-01-18 09:28:34.561','2024-01-29 09:56:29.377',8),
		(29,6400.00,'2024-01-01 10:56:29.312','2024-01-23 16:45:29.877',1),
		(30,8500.00,'2024-01-09 08:45:29.811','2024-01-28 14:56:29.337',15),
		(31,7200.00,'2024-01-15 14:56:29.132','2024-01-24 15:45:29.871',3),
		(32,7900.00,'2024-01-04 16:45:29.811','2024-01-19 13:56:29.772',10),
		(33,6700.00,'2024-01-11 11:28:34.517','2024-01-25 17:45:29.888',7),
		(34,6200.00,'2024-01-22 09:45:29.111','2024-01-29 15:56:29.378',2),
		(35,8800.00,'2024-01-10 17:56:29.312','2024-01-26 15:45:29.889',19),
		(36,7200.00,'2024-01-13 14:45:29.445','2024-01-25 17:56:29.378',6),
		(37,8200.00,'2024-01-18 09:56:29.352','2024-01-29 16:45:29.856',14),
		(38,5500.00,'2024-01-22 09:34:29.667','2024-01-30 11:45:29.167',21),
		(39,9200.00,'2024-01-09 14:35:29.532','2024-01-25 08:56:29.997',12),
		(40,6800.00,'2024-01-16 17:45:29.456','2024-01-28 13:34:29.129',5),
		(41,7200.00,'2024-01-11 09:56:29.332','2024-01-23 15:45:29.899',9),
		(42,8900.00,'2024-01-08 12:34:29.567','2024-01-27 16:28:34.567',16),
		(43,7700.00,'2024-01-05 15:56:29.332','2024-01-22 09:45:29.891',7),
		(44,6300.00,'2024-01-18 10:45:29.891','2024-01-29 14:56:29.392',14),
		(45,9200.00,'2024-01-09 14:35:29.532','2024-01-25 08:56:29.989',12),
		(46,6800.00,'2024-01-16 17:45:29.456','2024-01-28 13:34:29.923',5),
		(47,7200.00,'2024-01-11 09:56:29.356','2024-01-23 15:45:29.891',9),
		(48,8900.00,'2024-01-08 12:34:29.587','2024-01-27 16:28:34.599',16),
		(49,7700.00,'2024-01-05 15:56:29.309','2024-01-22 09:45:29.991',7),
		(50,6300.00,'2024-01-18 10:45:29.801','2024-01-29 14:56:29.392',14),
		(51,8300.00,'2024-01-06 11:56:29.302','2024-01-26 14:45:29.991',11),
		(52,9200.00,'2024-01-15 14:45:29.801','2024-01-28 17:56:29.932',3),
		(53,6700.00,'2024-01-20 08:45:29.856','2024-01-29 15:56:29.302',10),
		(54,7400.00,'2024-01-10 13:28:34.500','2024-01-26 09:56:29.562',2),
		(55,8900.00,'2024-01-07 16:45:29.801','2024-01-25 11:56:29.992',17),
		(56,6800.00,'2024-01-14 09:56:29.332','2024-01-28 14:45:29.891',13),
		(57,7200.00,'2024-01-21 14:45:29.801','2024-01-30 17:56:29.332',4),
		(58,8300.00,'2024-01-12 09:56:29.332','2024-01-23 15:45:29.891',1),
		(59,6200.00,'2024-01-18 13:45:29.891','2024-01-29 19:56:29.302',19),
		(60,8800.00,'2024-01-10 11:56:29.332','2024-01-26 15:45:29.891',5),
		(61,7200.00,'2024-01-03 16:34:29.608','2024-01-22 11:56:29.332',20),
		(62,7300.00,'2024-01-14 08:45:29.103','2024-01-29 12:28:34.507',15),
		(63,8500.00,'2024-01-06 15:56:29.330','2024-01-30 10:45:29.891',2),
		(64,9000.00,'2024-01-07 12:45:29.895','2024-01-26 18:28:34.567',17),
		(65,9600.00,'2024-01-08 09:56:29.352','2024-01-25 14:45:29.801',13),
		(66,7600.00,'2024-01-11 16:28:34.557','2024-01-28 12:56:29.132',4),
		(67,8700.00,'2024-01-20 11:56:29.335','2024-01-30 17:45:29.811',10),
		(68,7800.00,'2024-01-14 09:45:29.551','2024-01-27 13:28:34.534',22),
		(69,9200.00,'2024-01-09 14:35:29.532','2024-01-25 08:56:29.997',12),
		(70,6800.00,'2024-01-16 17:45:29.456','2024-01-28 13:34:29.129',5),
		(71,7200.00,'2024-01-11 09:56:29.332','2024-01-23 15:45:29.899',9),
		(72,8900.00,'2024-01-08 12:34:29.507','2024-01-27 16:28:34.567',16),
		(73,7700.00,'2024-01-05 15:56:29.939','2024-01-22 09:45:29.787',7),
		(74,6300.00,'2024-01-18 10:45:29.891','2024-01-29 14:56:29.892',14),
		(75,9200.00,'2024-01-09 14:35:29.932','2024-01-25 08:56:29.489',12),
		(76,6800.00,'2024-01-16 17:45:29.456','2024-01-28 13:34:29.443',5),
		(77,7200.00,'2024-01-11 09:56:29.956','2024-01-23 15:45:29.461',9),
		(78,8900.00,'2024-01-08 12:34:29.599','2024-01-27 16:28:34.599',16),
		(79,7700.00,'2024-01-05 15:56:29.309','2024-01-22 09:45:29.941',7),
		(80,6300.00,'2024-01-18 10:45:29.901','2024-01-29 14:56:29.392',14),
		(81,8300.00,'2024-01-06 11:56:29.302','2024-01-26 14:45:29.491',11),
		(82,9200.00,'2024-01-15 14:45:29.801','2024-01-28 17:56:29.932',3),
		(83,6700.00,'2024-01-20 08:45:29.856','2024-01-29 15:56:29.302',10),
		(84,7400.00,'2024-01-10 13:28:34.500','2024-01-26 09:56:29.562',2),
		(85,8900.00,'2024-01-07 16:45:29.801','2024-01-25 11:56:29.492',17),
		(86,6800.00,'2024-01-14 09:56:29.792','2024-01-28 14:45:29.841',13),
		(87,7200.00,'2024-01-21 14:45:29.809','2024-01-30 17:56:29.332',4),
		(88,8300.00,'2024-01-12 09:56:29.732','2024-01-23 15:45:29.894',1),
		(89,6200.00,'2024-01-18 13:45:29.891','2024-01-29 19:56:29.302',19),
		(90,8800.00,'2024-01-10 11:56:29.376','2024-01-26 15:45:29.874',5),
		(91,7200.00,'2024-01-03 16:34:29.668','2024-01-22 11:56:29.367',20),
		(92,7300.00,'2024-01-14 08:45:29.163','2024-01-29 12:28:34.507',15),
		(93,8500.00,'2024-01-06 15:56:29.360','2024-01-30 10:45:29.891',2),
		(94,9000.00,'2024-01-07 12:45:29.895','2024-01-26 18:28:34.577',17),
		(95,9600.00,'2024-01-08 09:56:29.322','2024-01-25 14:45:29.808',13),
		(96,7600.00,'2024-01-11 16:28:34.557','2024-01-28 12:56:29.832',4),
		(97,8700.00,'2024-01-20 11:56:29.325','2024-01-30 17:45:29.611',10),
		(98,7800.00,'2024-01-14 09:45:29.521','2024-01-27 13:28:34.566',22),
		(99,7200.00,'2024-01-18 09:56:29.322','2024-01-29 16:45:29.855',8),
		(100,5500.00,'2024-01-22 09:34:29.608','2024-01-30 11:45:29.147',21)
go

--7 EMPLEADO
insert into grupo3.empleado (empleado_id, empleado_nombre, empleado_area_id, condicion, fecha_inicio)

values
		(1,'JOSE PERES RAMIREZ',1,'ACTIVO','2023-12-01'),
		(2,'MARCO GONZALES RODRIGUEZ',1,'ACTIVO','2023-12-01'),
		(3,'PEDRO ORDAYA MENDOZA',1,'ACTIVO','2023-12-01'),
		(4,'GONZALO SANEZ CAMPOS',1,'ACTIVO','2023-12-01'),
		(5,'VICTOR RONDON ACOSTA',1,'ACTIVO','2023-12-01'),
		(6,'MARCELA CONTRERAS CAMPODONICO',1,'ACTIVO','2023-12-01'),
    	(7,'ANA PEREZ RAMIREZ',1,'ACTIVO','2023-12-01'),
    	(8,'MARIO GONZALEZ RODRIGUEZ',1,'ACTIVO','2023-12-01'),
    	(9,'PEDRO ORTIZ MENDOZA',1,'ACTIVO','2023-12-01'),
    	(10,'GABRIELA SANCHEZ CAMPOS',1,'ACTIVO','2023-12-01'),
    	(11,'VERONICA RONDON ACOSTA',1,'INACTIVO','2023-12-01'),
    	(12,'MAURICIO CONTRERAS CAMPODONICO',1,'ACTIVO','2023-12-01'),
   		(13,'CAROLINA GUTIERREZ MARTINEZ',1,'ACTIVO','2023-12-01'),
    	(14,'ALEJANDRO LOPEZ FLORES',1,'ACTIVO','2023-12-01'),
    	(15,'CARMEN TORO RIVERA',1,'ACTIVO','2023-12-01'),
    	(16,'RICARDO MARTINEZ VEGA',1,'INACTIVO','2023-12-01'),
    	(17,'ISABEL MARTINEZ DIAZ',1,'ACTIVO','2023-12-01'),
    	(18,'FELIPE PEREZ MARTINEZ',1,'ACTIVO','2023-12-01'),
    	(19,'LAURA SANCHEZ TORRES',1,'ACTIVO','2023-12-01'),
    	(20,'HUGO TORRES CAMPOS',1,'INACTIVO','2023-12-01'),
    	(21,'ROSA TORO SALAZAR',2,'ACTIVO','2023-12-01'),
    	(22,'JUAN GARCIA MOLINA',2,'ACTIVO','2023-12-01'),
    	(23,'SOFIA CAMPOS RIVERA',2,'ACTIVO','2023-12-01'),
    	(24,'MIGUEL RIVERA CRUZ',2,'ACTIVO','2023-12-01'),
    	(25,'MONICA DIAZ CASTILLO',2,'ACTIVO','2023-12-01'),
    	(26,'CARLOS SALAZAR PEREZ',2,'ACTIVO','2023-12-01'),
    	(27,'NATALIA VEGA MARTINEZ',2,'ACTIVO','2023-12-01'),
    	(28,'RAFAEL GUTIERREZ SANTOS',2,'ACTIVO','2023-12-01'),
    	(29,'PATRICIA MOLINA TORRES',2,'ACTIVO','2023-12-01'), 
    	(30,'JULIO SANTOS CAMPOS',2,'ACTIVO','2023-12-01'),
    	(31,'ANA LUCIA CAMPODONICO RAMIREZ',2,'ACTIVO','2023-12-01'),
    	(32,'EDUARDO ORTEGA MARTINEZ',2,'ACTIVO','2023-12-01'),
    	(33,'MARINA CASTILLO MOLINA',2,'ACTIVO','2023-12-01'),
    	(34,'JAVIER TORRES RAMIREZ',2,'ACTIVO','2023-12-01'),
    	(35,'CLAUDIA MENDOZA MARTINEZ',2,'ACTIVO','2023-12-01'),
    	(36,'JORGE SANTOS TORO',2,'ACTIVO','2023-12-01'),
    	(37,'PAOLA MARTINEZ GARCIA',2,'ACTIVO','2023-12-01'),
    	(38,'ALBERTO VEGA RIVERA',2,'ACTIVO','2023-12-01'),
    	(39,'ROSARIO CAMPOS ORTEGA',2,'ACTIVO','2023-12-01'),
    	(40,'LUIS CRUZ MARTINEZ',2,'ACTIVO','2023-12-01'),
    	(41,'SARA TORO SANCHEZ',3,'ACTIVO','2023-12-01'),
    	(42,'MARIO SANCHEZ MOLINA',3,'ACTIVO','2023-12-01'),
    	(43,'VANESSA TORRES GUTIERREZ',3,'ACTIVO','2023-12-01'),
    	(44,'RUBEN SALAZAR ORTEGA',3,'ACTIVO','2023-12-01'),
    	(45,'EVA MOLINA CASTILLO',3,'ACTIVO','2023-12-01'),
    	(46,'CARLOS MARTINEZ RAMIREZ',3,'ACTIVO','2023-12-01'),
    	(47,'PATRICIA VEGA MENDOZA',3,'ACTIVO','2023-12-01'),
    	(48,'FELIX GUTIERREZ TORO',3,'ACTIVO','2023-12-01'),
    	(49,'MARINA CAMPODONICO SANCHEZ',3,'ACTIVO','2023-12-01'),
    	(50,'JORGE GARCIA TORRES',3,'ACTIVO','2023-12-01')

	--ACTUALIZA FECHA DE SALIDA A LOS EMPLEADOS CON ID 11, 16 Y 20
	update grupo3.empleado
	set fecha_salida = '2023-12-15'
	where empleado_id in (11, 16, 20)
go

--08 MUESTREO
insert into grupo3.muestreo (muestreo_id, fecha_muestreo, contrato_monitoreo_id, ubigeo, tipo_monitoreo_id, estado_actual, empleado_id, equipo_id)

values
		(1,'2024-01-24 12:34:51.906',04,'110609',1,'EN_PROCESO',28,8),
		(2,'2024-01-05 11:29:33.276',05,'110601',1,'INICIO',29,1),	
		(3,'2024-01-11 09:43:09.947',07,'140301',2,'FINALIZADO',30,2),
		(4,'2024-01-16 13:56:16.443',08,'140501',1,'EN_PROCESO',31,3),
		(5,'2024-01-17 14:56:39.509',09,'140601',1,'INICIO',22,4),
		(6,'2024-01-23 10:56:08.323',10,'140701',3,'FINALIZAO',40,5),
		(7,'2024-01-23 09:56:59.566',11,'180301',3,'EN_PROCESO',39,7),
		(8,'2024-01-10 08:45:22.123',12,'100101',2,'FINALIZADO',25,6),
		(9,'2024-01-14 16:28:34.567',13,'110601',1,'EN_PROCESO',38,2),
		(10,'2024-01-19 12:34:45.789',14,'140101',1,'INICIO',26,3),
		(11,'2024-01-25 14:45:29.891',15,'140301',3,'FINALIZADO',27,5),
		(12,'2024-01-29 10:45:29.332',17,'140507',3,'EN_PROCESO',32,7),
		(13,'2024-01-06 09:56:29.332',19,'110508',1,'INICIO',23,4),
		(14,'2024-01-13 14:28:34.567',20,'100101',1,'FINALIZADO',35,8),
		(15,'2024-01-24 14:56:29.332',21,'110601',1,'EN_PROCESO',24,1),
		(16,'2024-01-18 11:56:29.812',22,'140301',1,'INICIO',33,2),
		(17,'2024-01-27 16:28:34.567',24,'140603',1,'FINALIZADO',40,3),
		(18,'2024-01-25 14:45:29.891',25,'140604',3,'EN_PROCESO',36,5),
		(19,'2024-01-21 09:56:29.302',26,'110605',2,'INICIO',31,6),
		(20,'2024-01-29 19:56:29.302',27,'100606',3,'FINALIZADO',28,7),
		(21,'2024-01-26 15:45:29.553',29,'110607',1,'EN_PROCESO',37,1),
		(22,'2024-01-22 11:56:29.352',30,'140610',1,'INICIO',29,3),
		(23,'2024-01-29 14:56:29.392',31,'140608',1,'FINALIZADO',38,4),
		(24,'2024-01-25 17:56:29.378',32,'140609',2,'EN_PROCESO',39,6),
		(25,'2024-01-29 16:45:29.856',33,'110901',1,'INICIO',23,8),
		(26,'2024-01-30 11:45:29.167',34,'100101',1,'FINALIZADO',30,2),
		(27,'2024-01-30 17:56:29.332',36,'110903',1,'EN_PROCESO',35,3),
		(28,'2024-01-25 17:56:29.378',37,'140904',3,'INICIO',24,5),
		(29,'2024-01-29 09:56:29.377',38,'140905',3,'FINALIZADO',33,7),
		(30,'2024-01-23 16:45:29.877',39,'140906',1,'EN_PROCESO',26,1),
		(31,'2024-01-28 14:56:29.337',40,'110907',1,'INICIO',32,4),
		(32,'2024-01-24 08:45:22.123',41,'100101',1,'FINALIZADO',37,1),
		(33,'2024-01-13 16:28:34.567',42,'110909',1,'EN_PROCESO',31,2),
		(34,'2024-01-09 12:34:45.789',43,'140101',1,'INICIO',29,3),
		(35,'2024-01-14 14:45:29.891',44,'140110',1,'FINALIZADO',38,4),
		(36,'2024-01-11 10:45:29.332',45,'140112',3,'EN_PROCESO',35,5),
		(37,'2024-01-25 09:56:29.332',46,'110102',2,'INICIO',24,6),
		(38,'2024-01-13 14:28:34.567',47,'100111',3,'FINALIZADO',33,7),
		(39,'2024-01-23 14:56:29.332',48,'110103',1,'EN_PROCESO',26,8),
		(40,'2024-01-18 11:56:29.812',49,'140104',1,'INICIO',37,1),
		(41,'2024-01-27 16:28:34.567',50,'140109',1,'FINALIZADO',28,2),
		(42,'2024-01-25 14:45:29.891',51,'140105',1,'EN_PROCESO',38,3),
		(43,'2024-01-21 09:56:29.302',52,'110106',1,'INICIO',29,4),
		(44,'2024-01-29 19:56:29.302',53,'100107',3,'FINALIZADO',24,5),
		(45,'2024-01-26 15:45:29.553',54,'110801',2,'EN_PROCESO',35,6),
		(46,'2024-01-22 11:56:29.352',55,'140802',3,'INICIO',26,7),
		(47,'2024-01-29 14:56:29.392',56,'140803',1,'FINALIZADO',37,8),
		(48,'2024-01-25 17:56:29.378',57,'140805',1,'EN_PROCESO',28,1),
		(49,'2024-01-29 16:45:29.856',58,'110806',1,'INICIO',39,2),
		(50,'2024-01-30 11:45:29.167',59,'100807',1,'FINALIZADO',30,3),
		(51,'2024-01-30 17:56:29.332',60,'110804',1,'EN_PROCESO',31,4),
		(52,'2024-01-25 17:56:29.378',61,'140808',3,'INICIO',24,5),
		(53,'2024-01-29 09:56:29.377',62,'140505',3,'FINALIZADO',33,7),
		(54,'2024-01-23 16:45:29.877',63,'140506',1,'EN_PROCESO',26,1),
		(55,'2024-01-28 14:56:29.337',64,'110507',1,'INICIO',32,4),
		(56,'2024-01-24 08:45:22.123',65,'100508',1,'FINALIZADO',37,1),
		(57,'2024-01-13 16:28:34.567',66,'110509',1,'EN_PROCESO',31,2),
		(58,'2024-01-09 12:34:45.789',67,'140301',1,'INICIO',29,3),
		(59,'2024-01-14 14:45:29.891',68,'140602',1,'FINALIZADO',38,4),
		(60,'2024-01-11 10:45:29.332',69,'140603',3,'EN_PROCESO',35,5),
		(61,'2024-01-25 09:56:29.332',70,'110604',2,'INICIO',24,6),
		(62,'2024-01-13 14:28:34.567',71,'100605',3,'FINALIZADO',33,7),
		(63,'2024-01-23 14:56:29.332',72,'110606',1,'EN_PROCESO',26,8),
		(64,'2024-01-18 11:56:29.812',73,'140607',1,'INICIO',37,1),
		(65,'2024-01-27 16:28:34.567',74,'140610',1,'FINALIZADO',28,2),
		(66,'2024-01-25 14:45:29.891',75,'140608',1,'EN_PROCESO',38,3),
		(67,'2024-01-21 09:56:29.302',76,'110609',1,'INICIO',29,4),
		(68,'2024-01-29 19:56:29.302',77,'100901',3,'FINALIZADO',24,5),
		(69,'2024-01-26 15:45:29.553',78,'110902',2,'EN_PROCESO',35,6),
		(70,'2024-01-22 11:56:29.352',79,'140903',3,'INICIO',26,7),
		(71,'2024-01-29 14:56:29.392',80,'140904',1,'FINALIZADO',37,8),
		(72,'2024-01-25 17:56:29.378',81,'140905',1,'EN_PROCESO',28,1),
		(73,'2024-01-29 16:45:29.856',82,'110906',3,'INICIO',23,7),
		(74,'2024-01-22 10:32:14.123',83,'140907',3,'FINALIZADO',24,5),
		(75,'2024-01-28 09:17:49.765',84,'140908',1,'EN_PROCESO',25,3),
		(76,'2024-01-30 15:03:03.332',85,'140909',3,'INICIO',26,7),
		(77,'2024-01-26 11:45:22.908',86,'100101',1,'FINALIZADO',27,2),
		(78,'2024-01-27 17:29:18.567',87,'140110',1,'EN_PROCESO',28,8),
		(79,'2024-01-29 13:14:43.891',88,'140112',2,'INICIO',29,6),
		(80,'2024-01-23 10:59:37.443',89,'110102',1,'FINALIZADO',30,4),
		(81,'2024-01-29 16:56:59.509',90,'140111',3,'EN_PROCESO',31,5),
		(82,'2024-01-20 14:22:14.323',91,'140103',2,'INICIO',32,6),
		(83,'2024-01-26 09:19:13.566',92,'140107',3,'FINALIZADO',33,7),
		(84,'2024-01-23 12:13:29.123',93,'100801',1,'EN_PROCESO',34,1),
		(85,'2024-01-28 18:57:49.567',94,'110802',1,'INICIO',35,2),
		(86,'2024-01-29 14:06:43.789',95,'140803',1,'FINALIZADO',36,3),
		(87,'2024-01-24 09:44:34.891',96,'140805',1,'EN_PROCESO',37,4),
		(88,'2024-01-26 13:29:32.332',97,'140806',3,'INICIO',38,5),
		(89,'2024-01-29 14:57:08.567',98,'140807',2,'FINALIZADO',39,6),
		(90,'2024-01-29 16:39:08.890',99,'110804',3,'EN_PROCESO',40,7),
	    (91,'2024-01-29 17:38:11.223',100,'110808',1,'INICIO',21,8),
	    (92,'2024-01-29 18:37:09.567',1,'140104',1,'FINALIZADO',22,1),
		(93,'2024-01-30 14:22:01.454',2,'100505',1,'EN_PROCESO',23,2),
		(94,'2024-01-28 08:17:35.221',3,'140506',1,'INICIO',34,4),
		(95,'2024-01-22 16:09:47.891',4,'100507',2,'FINALIZADO',36,6),
		(96,'2024-01-27 10:33:58.567',5,'180508',1,'EN_PROCESO',28,8),
		(97,'2024-01-25 13:25:43.891',6,'100509',1,'INICIO',29,1),
		(98,'2024-01-29 14:46:38.567',7,'110601',1,'FINALIZADO',30,3),
		(99,'2024-01-26 19:11:49.891',7,'140602',3,'EN_PROCESO',31,5),
		(100,'2024-01-30 14:32:02.567',7,'140505',3,'INICIO',32,7),
		(101,'2024-01-29 15:20:14.567',10,'100102',1,'FINALIZADO',33,1),
		(102,'2024-01-30 09:42:27.891',10,'110111',1,'EN_PROCESO',34,2),
		(103,'2024-01-28 14:15:33.567',10,'140103',1,'INICIO',35,3),
		(104,'2024-01-26 12:56:29.891',12,'140107',1,'FINALIZADO',36,4),
		(105,'2024-01-30 16:39:21.567',12,'180801',3,'EN_PROCESO',37,5),
		(106,'2024-01-29 13:25:33.891',15,'100802',2,'INICIO',38,6),
		(107,'2024-01-28 14:46:28.567',15,'110803',3,'FINALIZADO',39,7),
		(108,'2024-01-26 19:11:39.891',15,'140805',1,'EN_PROCESO',40,8),
		(109,'2024-01-30 14:32:28.567',17,'140806',1,'INICIO',21,1),
		(110,'2024-01-29 15:20:58.567',17,'100807',1,'FINALIZADO',22,2),
		(111,'2024-01-30 09:42:52.891',27,'110804',1,'EN_PROCESO',23,3),
		(112,'2024-01-28 14:16:23.567',27,'140505',1,'INICIO',24,4),
		(113,'2024-01-26 12:57:09.891',27,'140506',3,'FINALIZADO',25,5),
		(114,'2024-01-30 16:39:46.567',33,'180507',2,'EN_PROCESO',26,6),
		(115,'2024-01-29 13:25:58.891',33,'100508',3,'INICIO',27,7),
		(116,'2024-01-28 14:46:53.567',33,'110509',1,'FINALIZADO',28,8),
		(117,'2024-01-26 19:12:04.891',43,'140601',1,'EN_PROCESO',29,1),
		(118,'2024-01-30 14:32:53.567',43,'140602',1,'INICIO',30,2),
		(119,'2024-01-29 15:21:32.567',43,'100111',1,'FINALIZADO',31,3),
		(120,'2024-01-30 09:43:17.891',59,'110103',1,'EN_PROCESO',32,4),
		(121,'2024-01-28 14:17:13.567',59,'140107',3,'INICIO',33,5),
		(122,'2024-01-26 12:57:49.891',59,'140801',2,'FINALIZADO',34,6),
		(123,'2024-01-30 16:40:11.567',81,'180802',3,'EN_PROCESO',35,7),
		(124,'2024-01-29 13:26:23.891',81,'100803',1,'INICIO',36,8),
		(125,'2024-01-28 14:47:18.567',81,'110805',1,'FINALIZADO',37,1),
		(126,'2024-01-26 19:12:29.891',85,'140806',1,'EN_PROCESO',38,2),
		(127,'2024-01-30 14:33:18.567',85,'140807',1,'INICIO',39,3),
		(128,'2024-01-29 15:22:06.567',85,'100804',1,'FINALIZADO',40,4)
go

--09 AN�ISIS

insert into grupo3.analisis (analisis_id, fecha_analisis, muestreo_id, test_id, empleado_id)
values
		(1,'2024-01-27 19:12:04.891',51,2,5),
		(2,'2024-01-20 14:46:28.567',67,2,5),
		(3,'2024-01-14 09:44:34.891',44,5,8),
		(4,'2024-01-27 16:28:34.567',22,6,8),
		(5,'2024-01-15 11:56:29.352',82,4,9),
		(6,'2024-01-15 17:56:29.332',103,1,10),
		(7,'2024-01-15 12:56:29.947',124,5,12),
		(8,'2024-01-02 08:45:22.123',33,3,14),
		(9,'2024-01-03 16:28:34.567',15,2,17),
		(10,'2024-01-05 14:34:45.789',48,4,19),
		(11,'2024-01-07 14:45:29.891',76,1,7),
		(12,'2024-01-08 10:45:29.332',42,6,6),
		(13,'2024-01-11 09:56:29.332',11,3,13),
		(14,'2024-01-12 14:28:34.567',39,5,10),
		(15,'2024-01-15 14:56:29.332',29,2,1),
		(16,'2024-01-17 11:56:29.812',57,1,16),
		(17,'2024-01-18 16:28:34.567',24,6,11),
		(18,'2024-01-20 14:45:29.891',98,4,18),
		(19,'2024-01-21 10:45:29.332',62,3,5),
		(20,'2024-01-23 09:56:29.377',33,6,9),
		(21,'2024-01-25 16:45:29.856',11,5,14),
		(22,'2024-01-26 10:45:29.167',70,2,12),
		(23,'2024-01-29 16:45:29.877',22,4,3),
		(24,'2024-01-30 11:56:29.352',81,1,7),
		(25,'2024-01-02 17:56:29.378',57,6,18),
		(26,'2024-01-03 16:45:29.856',45,3,10),
		(27,'2024-01-05 11:45:29.167',12,4,15),
		(28,'2024-01-06 17:56:29.332',68,5,8),
		(29,'2024-01-09 14:28:34.567',87,2,1),
		(30,'2024-01-10 14:45:29.891',33,1,16),
		(31,'2024-01-12 11:45:29.332',59,6,13),
		(32,'2024-01-14 10:45:29.167',75,3,5),
		(33,'2024-01-16 17:56:29.332',22,4,9),
		(34,'2024-01-18 11:56:29.812',41,5,14),
		(35,'2024-01-19 16:28:34.567',64,1,17),
		(36,'2024-01-22 14:45:29.891',82,3,10),
		(37,'2024-01-23 10:45:29.332',19,2,16),
		(38,'2024-01-26 09:56:29.377',50,6,4),
		(39,'2024-01-27 14:56:29.332',96,1,11),
		(40,'2024-01-30 16:45:29.856',69,5,2),
		(41,'2024-01-29 11:45:29.167',33,4,7),
		(42,'2024-01-25 17:56:29.378',15,2,15),
		(43,'2024-01-01 16:45:29.856',49,3,19),
		(44,'2024-01-02 11:45:29.332',58,1,6),
		(45,'2024-01-03 14:56:29.332',71,5,8),
		(46,'2024-01-04 17:56:29.332',80,6,14),
		(47,'2024-01-05 16:45:29.856',62,2,17),
		(48,'2024-01-08 11:45:29.167',43,4,19),
		(49,'2024-01-09 17:56:29.332',53,1,1),
		(50,'2024-01-12 16:45:29.856',76,3,16),
		(51,'2024-01-13 10:45:29.332',18,2,11),
		(52,'2024-01-14 14:45:29.891',35,5,10),
		(53,'2024-01-16 12:45:29.332',79,6,13),
		(54,'2024-01-17 14:56:29.332',98,1,15),
		(55,'2024-01-20 17:56:29.332',26,4,18),
		(56,'2024-01-21 11:45:29.167',64,3,5)
go

--10 RESULTADO
insert into grupo3.resultado (resultado_id, resultado_detalle, analisis_id, empleado_id, estado_actual, fecha_resultado, resultado_analisis)

values
		(1,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',1,5,'FINAL','2024-01-28 02:56:29.947','RESULTADO APTO'),
		(2,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',2,9,'FINAL','2024-01-19 16:45:29.856','RESULTADO APTO'),
		(3,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',3,10,'FINAL','2024-01-13 14:56:29.332','RESULTADO APTO'),
		(4,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',4,11,'FINAL','2024-01-26 17:56:29.378','RESULTADO OBSERVADO'),
		(5,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',5,12,'FINAL','2024-01-14 14:45:29.891','RESULTADO OBSERVADO'),
		(6,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',6,10,'FINAL','2024-01-14 11:56:29.352','RESULTADO SUBSANADO'),
		(7,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',7,13,'FINAL','2024-01-14 14:32:53.567','RESULTADO APTO'),
		(8,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',8,15,'FINAL','2024-01-23 08:12:47.123','RESULTADO SUBSANADO'),
		(9,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',9,6,'FINAL','2024-01-27 19:34:51.456','RESULTADO OBSERVADO'),
		(10,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',10,16,'FINAL','2024-01-29 11:23:54.789','RESULTADO APTO'),
		(11,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',11,7,'FINAL','2024-01-17 13:44:59.234','RESULTADO SUBSANADO'),
		(12,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',12,18,'FINAL','2024-01-31 15:56:23.901','RESULTADO OBSERVADO'),
		(13,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',13,20,'FINAL','2024-01-28 12:37:45.345','RESULTADO APTO'),
		(14,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',14,2,'FINAL','2024-01-21 18:09:38.678','RESULTADO SUBSANADO'),
		(15,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',15,19,'FINAL','2024-01-30 09:21:27.543','RESULTADO APTO'),
		(16,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',16,4,'FINAL','2024-01-16 10:32:14.567','RESULTADO OBSERVADO'),
		(17,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',17,8,'FINAL','2024-01-25 14:43:32.890','RESULTADO SUBSANADO'),
		(18,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',18,14,'FINAL','2024-01-22 07:54:29.678','RESULTADO APTO'),
		(19,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',19,17,'FINAL','2024-01-20 16:26:35.234','RESULTADO APTO'),
		(20,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',20,1,'FINAL','2024-01-19 11:37:48.567','RESULTADO OBSERVADO'),
		(21,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',21,9,'FINAL','2024-01-24 13:49:42.123','RESULTADO SUBSANADO'),
		(22,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',22,12,'FINAL','2024-01-18 15:31:56.456','RESULTADO APTO'),
		(23,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',23,3,'FINAL','2024-01-29 08:15:27.789','RESULTADO OBSERVADO'),
		(24,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',24,10,'FINAL','2024-01-26 09:47:38.234','RESULTADO APTO'),
		(25,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',25,15,'FINAL','2024-01-15 17:59:51.567','RESULTADO SUBSANADO'),
		(26,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',26,19,'FINAL','2024-01-27 11:23:44.890','RESULTADO OBSERVADO'),
		(27,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',27,5,'FINAL','2024-01-23 14:35:29.123','RESULTADO SUBSANADO'),
		(28,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',28,13,'FINAL','2024-01-28 16:47:38.456','RESULTADO APTO'),
		(29,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',29,7,'FINAL','2024-01-17 19:59:51.789','RESULTADO OBSERVADO'),
		(30,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',30,18,'FINAL','2024-01-31 08:12:47.234','RESULTADO APTO'),
		(31,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',31,11,'FINAL','2024-01-25 10:24:53.567','RESULTADO SUBSANADO'),
		(32,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',32,1,'FINAL','2024-01-20 12:37:45.890','RESULTADO OBSERVADO'),
		(33,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',33,2,'FINAL','2024-01-18 09:43:51.234','RESULTADO SUBSANADO'),
		(34,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',34,8,'FINAL','2024-01-15 14:56:29.567','RESULTADO APTO'),
		(35,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',35,14,'FINAL','2024-01-28 16:32:53.890','RESULTADO OBSERVADO'),
		(36,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',36,17,'FINAL','2024-01-26 11:12:47.123','RESULTADO SUBSANADO'),
		(37,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',37,4,'FINAL','2024-01-23 13:21:34.456','RESULTADO APTO'),
		(38,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',38,12,'FINAL','2024-01-22 08:32:14.789','RESULTADO OBSERVADO'),
		(39,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',39,16,'FINAL','2024-01-21 10:59:27.123','RESULTADO APTO'),
		(40,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',40,10,'FINAL','2024-01-27 17:07:38.234','RESULTADO SUBSANADO'),
		(41,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',41,18,'FINAL','2024-01-16 12:54:59.567','RESULTADO OBSERVADO'),
		(42,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',42,5,'FINAL','2024-01-20 15:37:45.890','RESULTADO SUBSANADO'),
		(43,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',43,19,'FINAL','2024-01-19 09:29:51.123','RESULTADO APTO'),
		(44,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',44,13,'FINAL','2024-01-31 14:06:29.456','RESULTADO OBSERVADO'),
		(45,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',45,7,'FINAL','2024-01-29 16:32:53.789','RESULTADO SUBSANADO'),
		(46,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',46,1,'FINAL','2024-01-25 10:43:51.234','RESULTADO APTO'),
		(47,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',47,9,'FINAL','2024-01-24 14:56:29.567','RESULTADO OBSERVADO'),
		(48,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',48,14,'FINAL','2024-01-18 11:12:47.890','RESULTADO APTO'),
		(49,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',49,3,'FINAL','2024-01-30 08:21:34.123','RESULTADO SUBSANADO'),
		(50,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',50,11,'FINAL','2024-01-29 12:32:14.456','RESULTADO OBSERVADO'),
		(51,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',51,15,'FINAL','2024-01-22 18:54:59.789','RESULTADO SUBSANADO'),
		(52,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',52,20,'FINAL','2024-01-17 08:37:45.123','RESULTADO APTO'),
		(53,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',53,2,'FINAL','2024-01-31 15:06:29.456','RESULTADO OBSERVADO'),
		(54,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR APTO',54,8,'FINAL','2024-01-28 13:32:53.789','RESULTADO APTO'),
		(55,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR SUBSANADO',55,13,'FINAL','2024-01-20 16:47:47.234','RESULTADO SUBSANADO'),
		(56,'SE REALIZO LA VERIFICACION DEL MUESTREO DANDO POR OBSERVADO',56,17,'FINAL','2024-01-26 11:12:47.890','RESULTADO OBSERVADO');
go