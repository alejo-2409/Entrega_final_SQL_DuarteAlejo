
-- Creación de la base de datos.
CREATE DATABASE Creditos;
USE  creditos;

-- Tabla de clientes.
CREATE TABLE clientes(
id_cliente INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nombre VARCHAR (100) NOT NULL,
apellido VARCHAR (100) NOT NULL,
dni INT UNIQUE NOT NULL,
telefono VARCHAR (20) NOT NULL,
mail VARCHAR (100) DEFAULT NULL UNIQUE,
edad INT DEFAULT NULL
);

-- Tabla de créditos (Aclarar que la columna plazo está en en meses y solo aparece el número).

CREATE TABLE creditos(
id_credito INT PRIMARY KEY AUTO_INCREMENT,
monto INT,
interes INT,
gastos INT,
plazo VARCHAR (20) NOT NULL,
fecha_otorgamiento DATE NOT NULL,
saldo_pendiente INT,
id_cliente INT,
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);
ALTER TABLE creditos MODIFY COLUMN plazo INT;

-- Tabla de cuota de créditos.

CREATE TABLE cuota_credito(
id_cuota INT PRIMARY KEY AUTO_INCREMENT,
id_credito INT,
numero_cuota INT NOT NULL,
FOREIGN KEY (id_credito) REFERENCES creditos (id_credito)
);

ALTER TABLE cuota_credito ADD COLUMN monto_cuota INT NOT NULL;
ALTER TABLE cuota_credito ADD COLUMN interes_cuota INT NOT NULL;
ALTER TABLE cuota_credito ADD COLUMN gastos_cuota INT NOT NULL;
ALTER TABLE cuota_credito ADD COLUMN total_cuota INT NOT NULL; -- suma de los 3 anteriores
ALTER TABLE cuota_credito ADD COLUMN fecha_vencimiento DATE;

-- Tabla de empleados.

 CREATE TABLE empleados (
 id_empleado INT PRIMARY KEY AUTO_INCREMENT,
 nombre_empleado VARCHAR (100) DEFAULT NULL,
 apellido_empleado VARCHAR (100) DEFAULT NULL,
 email_empleado VARCHAR (100) UNIQUE 
 );
 
-- Tabla de cobros.
 CREATE TABLE cobros(
 id_cobro INT PRIMARY KEY AUTO_INCREMENT, 
 monto_cobro INT,
 fecha_pago DATE,
 metodo_de_pago VARCHAR (50),
 id_empleado INT DEFAULT NULL,
 id_credito INT NOT NULL,
 FOREIGN KEY (id_empleado)
 REFERENCES empleados (id_empleado),
FOREIGN KEY (id_credito)
REFERENCES creditos (id_credito)
 );
 ALTER TABLE cobros ADD COLUMN id_cuota INT NOT NULL;
 ALTER TABLE cobros ADD CONSTRAINT fk_id_cuota FOREIGN KEY (id_cuota) REFERENCES cuota_credito (id_cuota);

    
-- Tabla gestiones empleados.

CREATE TABLE gestiones_empleados(
id_gestion INT PRIMARY KEY AUTO_INCREMENT,
id_empleado INT,
id_cliente INT,
resultado_gestion VARCHAR (100),
FOREIGN KEY (id_empleado)
 REFERENCES empleados (id_empleado),
 FOREIGN KEY (id_cliente)
 REFERENCES clientes (id_cliente)
);
ALTER TABLE gestiones_empleados ADD COLUMN fecha_gestion DATE;


-- Tabla de tipo de gestiones

CREATE TABLE tipo_gestion (
  id_tipo INT PRIMARY KEY AUTO_INCREMENT,
  descripcion VARCHAR(100)
);
ALTER TABLE gestiones_empleados ADD COLUMN id_tipo INT;
ALTER TABLE gestiones_empleados ADD CONSTRAINT fk_id_tipo FOREIGN KEY (id_tipo) REFERENCES tipo_gestion (id_tipo);


-- Tabla de promesas de pago.
CREATE TABLE promesas_pago (
id_promesa INT PRIMARY KEY AUTO_INCREMENT,
monto_promesa INT,
estado_promesa VARCHAR (30) DEFAULT 'En curso',
fecha_promesa DATE,
id_cliente INT, 
id_empleado INT,
id_gestion INT,
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente),
FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado),
FOREIGN KEY (id_gestion) REFERENCES gestiones_empleados (id_gestion)
);


-- Tabla de performance de los empleados.
CREATE TABLE metricas_empleados(
id_empleado INT,
periodo DATE,
cantidad_gestiones INT DEFAULT 0,
cantidad_promesas INT DEFAULT 0,
promesas_cumplidas INT DEFAULT 0,
monto_cobrado INT DEFAULT 0,
PRIMARY KEY (id_empleado, periodo),
FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado)
);


-- Tabla de estado del crédito

CREATE TABLE estado_credito(
id_credito INT,
id_cuota INT,
id_cliente INT,
estado VARCHAR (50) DEFAULT 'Activo',
PRIMARY KEY (id_credito, id_cuota, id_cliente),
FOREIGN KEY (id_credito) REFERENCES creditos (id_credito),
FOREIGN KEY (id_cuota) REFERENCES cuota_credito (id_cuota),
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);


-- Tabla de comportamiento de clientes
CREATE TABLE score_clientes (
id_cliente INT PRIMARY KEY,
cantidad_creditos INT,
deuda_historica_total INT,
estado_creditos_actuales VARCHAR (50),
FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente)
);



-- Tabla de campañas de cobranzas

CREATE TABLE campaña_cobranzas (
id_campaña INT PRIMARY KEY AUTO_INCREMENT,
nombre_campaña VARCHAR (100),
fecha_inicio DATE,
fecha_fin DATE,
descripcion TEXT
);

-- Tabla de log de accesos al sistema de los empleados

CREATE TABLE log_empleados(
id_log INT PRIMARY KEY AUTO_INCREMENT, 
id_empleado INT,
fecha_acceso DATETIME DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (id_empleado) REFERENCES empleados (id_empleado)
);
-- Tabla y Trigger de auditoría de cobros por día

CREATE TABLE auditoria_cobros_dia(
id_auditoria INT PRIMARY KEY AUTO_INCREMENT,
id_cobro INT,
fecha_pago DATE
);

DELIMITER //

CREATE TRIGGER after_insert_cobros 
AFTER INSERT ON cobros 
FOR EACH ROW
	BEGIN
		INSERT INTO auditoria_cobros_dia (id_cobro, fecha_pago)
        VALUES (NEW.id_cobro, NEW.fecha_pago);
        END 
    //
    
    DELIMITER ;
   
   -- Tabla y Trigger de auditoría de créditos brindados
   CREATE TABLE auditoria_creditos_otorgardos (
   id_auditoria INT PRIMARY KEY AUTO_INCREMENT, 
   id_credito INT,
   monto INT,
   fecha_otorgamiento DATE,
   id_cliente INT,
   fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
   );


DELIMITER // 
CREATE TRIGGER after_insert_creditos 
AFTER INSERT ON creditos
FOR EACH ROW 
	BEGIN 
		INSERT INTO auditoria_creditos_otorgardos(id_credito, monto, 
        fecha_otorgamiento, id_cliente)
		VALUES (NEW.id_credito,NEW.monto, NEW.fecha_otorgamiento, NEW.id_cliente); 
	END 
    //
    DELIMITER ; 
    

-- Vista para visualizar las deudas vencidas
    
   CREATE OR REPLACE VIEW deudas_vencidas AS
		SELECT c.id_credito, c.monto, c.plazo, CONCAT (cl.nombre,' ', cl.apellido) AS cliente, e.estado
        FROM creditos c
        JOIN clientes cl ON cl.id_cliente = c.id_cliente
        JOIN estado_credito e ON c.id_credito = e.id_credito
        WHERE estado = 'Vencido';
  

-- Vista clientes sin gestionar
CREATE OR REPLACE VIEW clientes_sin_gestionar AS
SELECT cl.id_cliente, cl.nombre, cl.apellido
FROM clientes cl
WHERE cl.id_cliente NOT IN (
    SELECT DISTINCT g.id_cliente
    FROM gestiones_empleados g
);

-- Vista para ver ranking de performance de empleados

CREATE OR REPLACE VIEW ranking_empleados AS 
	SELECT CONCAT (e.nombre_empleado,' ', e.apellido_empleado) AS empleado, 
		m.periodo, 
		calcular_performance (m.cantidad_gestiones, m.promesas_cumplidas, m.monto_cobrado) AS puntaje
    FROM empleados e 
    JOIN metricas_empleados m ON e.id_empleado = m.id_empleado
    ORDER BY puntaje DESC;
    
    -- Vista mejor empleado
    
    CREATE OR REPLACE VIEW top_empleado AS
    SELECT * 
    FROM ranking_empleados
    LIMIT 1;
    
  -- Vista del resutlado de las campañas de cobranzas en un periodo
  
  CREATE OR REPLACE VIEW resultado_campaña AS
  SELECT c.nombre_campaña, 
  CONCAT('Entre',c.fecha_inicio, 'y', c.fecha_fin) AS periodo, 
  COUNT(co.id_cobro) AS cantidad_cobros,
  SUM(co.monto_cobro) AS total_cobrado
  FROM campaña_cobranzas c 
  LEFT JOIN cobros co ON co.fecha_pago BETWEEN c.fecha_inicio AND c.fecha_fin
  GROUP BY id_campaña;
  
  
  -- Función para calcular la performance de los empleados

DELIMITER //

CREATE FUNCTION calcular_performance(
cantidad_gestiones INT, 
promesas_cumplidas INT,
monto_cobrado INT
)
RETURNS INT
DETERMINISTIC
	BEGIN
		DECLARE resultado INT;
		SET resultado = cantidad_gestiones * 0.2 + promesas_cumplidas * 0.4 + monto_cobrado * 0.4;
		RETURN resultado;
    
	END ; 
    //
    
DELIMITER ;
  
	-- Función para calcular el total pagado de un crédito

    DELIMITER //
    
CREATE FUNCTION total_pagado_credito(p_id_credito INT)
RETURNS INT
DETERMINISTIC

BEGIN
  DECLARE total INT;
  SELECT IFNULL(SUM(monto_cobro), 0) INTO total
  FROM cobros
  WHERE id_credito = p_id_credito;
  RETURN total;
END;
//
DELIMITER ;

    
    
-- Stored procedure para no dar un credito a quien tenga uno pendiente
    
    
    DELIMITER //
    
    CREATE PROCEDURE  renovacion_credito (
    IN p_id_credito INT)
    BEGIN
	DECLARE v_estado VARCHAR(50);

    SELECT estado_credito INTO v_estado
    FROM estado_credito
    WHERE id_credito = p_id_credito;

    IF v_estado = 'en mora' THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se puede otorgar crédito por saldo en mora';
    ELSE
        SELECT 'Crédito habilitado' AS mensaje;
    END IF;

    
    END; //
    
    DELIMITER ; 
    
    
   
   -- Actualizar saldo pendiente
   
	DELIMITER //
    
    CREATE PROCEDURE  actualizar_saldo_pendiente (
    IN p_id_credito INT)
    BEGIN
	DECLARE v_total_cobros INT;
	DECLARE v_monto_total INT;
	DECLARE v_nuevo_saldo INT;

	SELECT IFNULL(SUM(monto_cobro),0)
    INTO v_total_cobros
    FROM cobros 
    WHERE id_credito = p_id_credito;
   
	SELECT monto
    INTO v_monto_total 
    FROM creditos
	WHERE id_credito = p_id_credito;
    
    SET v_nuevo_saldo = v_monto_total - v_total_cobros;
    
    UPDATE creditos
    SET saldo_pendiente = v_nuevo_saldo
    WHERE id_credito = p_id_credito;
    
    IF
		v_nuevo_saldo = 0 THEN
        UPDATE estado_credito
        SET estado = 'Finalizado'
        WHERE id_credito = p_id_credito;
        
        ELSEIF
			v_nuevo_saldo >= 0 THEN
			UPDATE estado_credito
			SET estado = 'Vencido'
			WHERE id_credito = p_id_credito;
	END IF ; 
    
    END //
    
    DELIMITER ; 
    
    
-- Stored procedure para insertar datos en las tablas Creditos y Cuota_credito

DELIMITER // 

CREATE PROCEDURE insertar_credito_con_cuotas (
IN p_monto INT,
IN p_interes INT,
IN p_gastos INT,
IN p_plazo INT,
IN p_fecha_otorgamiento DATE,
IN p_id_cliente INT
)

BEGIN
	DECLARE v_id_credito INT;
	DECLARE v_id_cuota INT;
    DECLARE i INT DEFAULT 1;
    DECLARE v_monto_cuota INT;
    DECLARE v_interes_por_cuota INT;
    DECLARE v_gastos_cuota INT;
    DECLARE v_total_cuota INT;
	DECLARE v_fecha_vencimiento DATE;
    
    SET v_monto_cuota = p_monto DIV p_plazo;
    SET v_interes_por_cuota = p_interes DIV p_plazo;
    SET v_gastos_cuota = p_gastos DIV p_plazo;
    SET v_total_cuota = v_monto_cuota + v_interes_por_cuota + v_gastos_cuota;
    
    INSERT INTO creditos (monto, interes, gastos, plazo, fecha_otorgamiento, saldo_pendiente, id_cliente)
    VALUES
    (p_monto, p_interes, p_gastos, p_plazo, p_fecha_otorgamiento, p_monto + p_interes + p_gastos, p_id_cliente);
    
    SET v_id_credito = LAST_INSERT_ID();
    
    WHILE
	i <= p_plazo DO
    SET v_fecha_vencimiento = DATE_ADD(p_fecha_otorgamiento, INTERVAL i MONTH);
    
    INSERT INTO cuota_credito (id_credito, numero_cuota, monto_cuota, interes_cuota, gastos_cuota, total_cuota, fecha_vencimiento)
    VALUES
    (v_id_credito, i, v_monto_cuota, v_interes_por_cuota, v_gastos_cuota, v_total_cuota, v_fecha_vencimiento);
    IF i = 1 THEN
            SET v_id_cuota = LAST_INSERT_ID(); 
        END IF;
    SET i = i + 1;
    
    END WHILE;
    INSERT INTO estado_credito (id_credito, id_cuota, id_cliente, estado)
    VALUES (v_id_credito, v_id_cuota, p_id_cliente, 'Activo');

END 
//
DELIMITER ;

-- Trigger para promesas de pago promesas
DELIMITER //
CREATE TRIGGER promesas
BEFORE INSERT ON promesas_pago 
FOR EACH ROW
BEGIN

	IF
    NEW.fecha_promesa > CURDATE() + INTERVAL 7 DAY  THEN
    SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'No se permiten generar promesas mayores a 7 días';
    END IF;
END;
//
DELIMITER ;


-- TRIGGER PARA QUE SE PONGA LA FECHA POR DEFAULT EN LA FECHA DE PAGO


DELIMITER //

CREATE TRIGGER set_fecha_pago
BEFORE INSERT ON cobros
FOR EACH ROW
BEGIN
  IF NEW.fecha_pago IS NULL THEN
    SET NEW.fecha_pago = CURDATE();
  END IF;
END;
//

DELIMITER ;



