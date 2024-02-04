--RESPUESTAS CON CONSULTAS 

-------------------------------------------------------------------------------------------------------------------------------------
--1. ¿ Cuales son los nombres de los 10 clientes que solicitaron mayor cantidad de contratos de monitoreo en el mes de enero de 2024?
-------------------------------------------------------------------------------------------------------------------------------------
	SELECT TOP 10
		    A.cliente_id ,
			B.nombre,
			COUNT (B.nombre) AS CANTIDAD 
	FROM grupo3.contrato_monitoreo A
		INNER JOIN grupo3.cliente B
			ON A.cliente_id = B.cliente_id
	WHERE A.fecha_inicio BETWEEN '2024.01.01' AND '2024.01.31'
	GROUP BY B.nombre,A.cliente_id   
	ORDER BY cantidad DESC

---------------------------------------------------------------------------------------------------------------------------	
--2. ¿Cual fue el tipo de monitoreo más solicitado en el mes de enero 2024?
---------------------------------------------------------------------------------------------------------------------------
	SELECT TOP 1 B.nombre_monitoreo , 
			  COUNT(A.tipo_monitoreo_id) AS cantidad
	FROM grupo3.muestreo A
		INNER JOIN grupo3.tipo_monitoreo B
			ON A.tipo_monitoreo_id = B.tipo_monitoreo_id
		INNER JOIN grupo3.contrato_monitoreo C
			ON A.contrato_monitoreo_id = C.contrato_monitoreo_id
	WHERE c.fecha_inicio BETWEEN '2024.01.01' AND '2024.01.31'
	GROUP BY A.tipo_monitoreo_id,B.nombre_monitoreo

---------------------------------------------------------------------------------------------------------------------------
--3. ¿Qué tipo de monitoreo generó mayor facturación a la empresa en el mes de enero de 2024?
---------------------------------------------------------------------------------------------------------------------------
	SELECT TOP 1 * 
	FROM
	(
		SELECT 	B.nombre_monitoreo,
				SUM(C.monto) AS MONTO
		FROM grupo3.muestreo A
			INNER JOIN	grupo3.tipo_monitoreo B
				ON A.tipo_monitoreo_id = B.tipo_monitoreo_id
			INNER JOIN grupo3.contrato_monitoreo C
				ON A.contrato_monitoreo_id = C.contrato_monitoreo_id
		WHERE c.fecha_inicio BETWEEN '2024.01.01' AND '2024.01.31'
		GROUP BY  B.nombre_monitoreo, A.tipo_monitoreo_id
	) A
	ORDER BY nombre_monitoreo
		
---------------------------------------------------------------------------------------------------------------------------
--4. ¿Cuántos son los montos mínimos y máximos de los contratos  de monitoreo de agua, suelo y aire en enero de 2024?
---------------------------------------------------------------------------------------------------------------------------		
	DECLARE @fecha_inicio  DATE='2024.01.01', 
			@fecha_fin     DATE='2024.01.31'

	DECLARE @UNION TABLE (monto NUMERIC(14,2),nombre_monitoreo VARCHAR(250),cantidad CHAR(30))

	INSERT INTO @UNION
	SELECT MAX(B.monto) AS MONTO,
		   C.nombre_monitoreo ,
		   'MAXIMO' AS CANTIDAD
	FROM grupo3.muestreo A
	 INNER JOIN grupo3.contrato_monitoreo B
		ON a.contrato_monitoreo_id=B.contrato_monitoreo_id
	 INNER JOIN grupo3.tipo_monitoreo C
				ON A.tipo_monitoreo_id= C.tipo_monitoreo_id
	WHERE A.tipo_monitoreo_id=1 
			AND B.fecha_inicio BETWEEN @fecha_inicio AND @fecha_fin 
	GROUP BY C.nombre_monitoreo 

	INSERT INTO @UNION
	SELECT MIN (B.monto) AS MONTO,
		   C.nombre_monitoreo,
		   'MINIMO' AS CANTIDAD
	FROM grupo3.muestreo A
	 INNER JOIN grupo3.contrato_monitoreo B
		ON a.contrato_monitoreo_id=B.contrato_monitoreo_id
	 INNER JOIN grupo3.tipo_monitoreo C
				ON A.tipo_monitoreo_id= C.tipo_monitoreo_id
	WHERE A.tipo_monitoreo_id=1
			AND B.fecha_inicio BETWEEN @fecha_inicio AND @fecha_fin
	GROUP BY C.nombre_monitoreo
	ORDER BY C.nombre_monitoreo
	
	INSERT INTO @UNION
	SELECT MAX(B.monto) AS MONTO,
		   C.nombre_monitoreo ,
		   'MAXIMO' AS CANTIDAD
	FROM grupo3.muestreo A
	 INNER JOIN grupo3.contrato_monitoreo B
		ON a.contrato_monitoreo_id=B.contrato_monitoreo_id
	 INNER JOIN grupo3.tipo_monitoreo C
				ON A.tipo_monitoreo_id= C.tipo_monitoreo_id
	WHERE A.tipo_monitoreo_id=2
			AND B.fecha_inicio BETWEEN  @fecha_inicio AND @fecha_fin
	GROUP BY C.nombre_monitoreo
	
	INSERT INTO @UNION
	SELECT MIN (B.monto) AS MONTO,
		   C.nombre_monitoreo,
		   'MINIMO' AS CANTIDAD
	FROM grupo3.muestreo A
	 INNER JOIN grupo3.contrato_monitoreo B
		ON a.contrato_monitoreo_id=B.contrato_monitoreo_id
	 INNER JOIN grupo3.tipo_monitoreo C
				ON A.tipo_monitoreo_id= C.tipo_monitoreo_id
	WHERE A.tipo_monitoreo_id=2
		AND B.fecha_inicio BETWEEN @fecha_inicio AND @fecha_fin 
	GROUP BY C.nombre_monitoreo
	
	INSERT INTO @UNION
	SELECT MAX(B.monto) AS MONTO,
		   C.nombre_monitoreo ,
		   'MAXIMO' AS CANTIDAD
	FROM grupo3.muestreo A
	 INNER JOIN grupo3.contrato_monitoreo B
		ON a.contrato_monitoreo_id=B.contrato_monitoreo_id
	 INNER JOIN grupo3.tipo_monitoreo C
				ON A.tipo_monitoreo_id= C.tipo_monitoreo_id
	WHERE A.tipo_monitoreo_id=3
		AND B.fecha_inicio BETWEEN @fecha_inicio AND @fecha_fin
	GROUP BY C.nombre_monitoreo
	
	INSERT INTO @UNION
	SELECT MIN (B.monto) AS MONTO,
		   C.nombre_monitoreo,
		   'MINIMO' AS CANTIDAD
	FROM grupo3.muestreo A
	 INNER JOIN grupo3.contrato_monitoreo B
		ON a.contrato_monitoreo_id=B.contrato_monitoreo_id
	 INNER JOIN grupo3.tipo_monitoreo C
				ON A.tipo_monitoreo_id= C.tipo_monitoreo_id
	WHERE A.tipo_monitoreo_id=3
		AND B.fecha_inicio BETWEEN @fecha_inicio AND @fecha_fin
	GROUP BY C.nombre_monitoreo

	SELECT nombre_monitoreo,monto,cantidad FROM @UNION 

---------------------------------------------------------------------------------------------------------------------------
--5. ¿Cuál es el nombre empleado que realizó más muestreos en el mes de enero de 2024?
---------------------------------------------------------------------------------------------------------------------------		
	SELECT TOP 1 * 
	FROM
	(
		SELECT 
			COUNT(B.empleado_nombre) AS cantidad,
			B.empleado_nombre
		FROM grupo3.muestreo A
			INNER JOIN grupo3.empleado B
				ON A.empleado_id = B.empleado_id
		WHERE A.fecha_muestreo BETWEEN '2024.01.01' AND '2024.01.31'
		GROUP BY B.empleado_nombre,A.empleado_id
	) A
	ORDER BY cantidad DESC

---------------------------------------------------------------------------------------------------------------------------
--6. ¿Cuáles son los nombres de los empleados que analizaron más muestras en el mes de enero de 2024?
---------------------------------------------------------------------------------------------------------------------------
	SELECT *
	FROM 
		(
			SELECT  B.empleado_nombre,
				   COUNT(A.muestreo_id) AS cantidad_muestras
	
			FROM grupo3.analisis A
				INNER JOIN grupo3.empleado B
					ON A.empleado_id = B.empleado_id
			WHERE A.fecha_analisis BETWEEN '2024.01.01' AND '2024.01.31'
			GROUP BY B.empleado_nombre
		)A
	ORDER BY cantidad_muestras DESC
	
---------------------------------------------------------------------------------------------------------------------------
--7. ¿Qué duración promedio tienen los monitoreos de agua solicitados en enero de 2024?
---------------------------------------------------------------------------------------------------------------------------
	SELECT nombre_monitoreo,
		   AVG(CONVERT(DECIMAL(10,2),resultado))promedio
	FROM
		(
			SELECT D.nombre_monitoreo, 
				   DATEDIFF (DAY, a.fecha_inicio , a.fecha_fin )  AS resultado, 
				   C.nombre
			FROM grupo3.contrato_monitoreo A
				INNER JOIN grupo3.muestreo B
					ON A.contrato_monitoreo_id = B.contrato_monitoreo_id
				INNER JOIN grupo3.cliente C
					ON a.cliente_id = C.cliente_id
				INNER JOIN grupo3.tipo_monitoreo D
					ON b.tipo_monitoreo_id = D.tipo_monitoreo_id
			WHERE  D.tipo_monitoreo_id=1
		) A
		GROUP BY A.nombre_monitoreo
---------------------------------------------------------------------------------------------------------------------------
--8.¿Cuántos empleados activos tuvo la empresa en enero de 2024?
---------------------------------------------------------------------------------------------------------------------------
	SELECT 	empleado_nombre	,
			condicion
	FROM grupo3.empleado
	WHERE condicion='ACTIVO' OR
			fecha_inicio BETWEEN '2024.01.01' AND '2024.01.31' 

---------------------------------------------------------------------------------------------------------------------------
--9. ¿ Cuales son los nombres de los clientes que solicitaron el monitoreo del agua en el mes de enero 2024?
---------------------------------------------------------------------------------------------------------------------------
	SELECT C.NOMBRE AS CLIENTE,
		   D.nombre_monitoreo AS MONITOREO
	FROM grupo3.muestreo A
		INNER JOIN  grupo3.contrato_monitoreo B
			ON A.contrato_monitoreo_id =B.contrato_monitoreo_id
		INNER JOIN grupo3.cliente  C
			ON B.cliente_id=C.cliente_id
		INNER JOIN grupo3.tipo_monitoreo D
			ON A.tipo_monitoreo_id=D.tipo_monitoreo_id
	WHERE A.tipo_monitoreo_id=1
	      AND A.fecha_muestreo BETWEEN '2024.01.01' AND '2024.01.31'
	GROUP BY C.NOMBRE ,D.nombre_monitoreo

---------------------------------------------------------------------------------------------------------------------------
--10. ¿Cuál es el ubigeo de los monitoreos realizados en enero de 2024?
---------------------------------------------------------------------------------------------------------------------------
	SELECT ubigeo, 
		   COUNT(*)cantidad
	FROM 
		(
			SELECT	B.nombre_monitoreo,
	  				A.ubigeo
			FROM grupo3.muestreo A
					INNER JOIN grupo3.tipo_monitoreo B
						ON A.tipo_monitoreo_id= B.tipo_monitoreo_id
			WHERE A.fecha_muestreo BETWEEN '2024.01.01' AND '2024.01.31'
		) A
	GROUP BY A.ubigeo