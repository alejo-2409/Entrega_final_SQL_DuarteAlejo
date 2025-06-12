/* Script de inserción de datos*/

-- Inserto datos de clientes
INSERT INTO clientes (nombre, apellido, dni, telefono, mail, edad)
	VALUES
('Sofía', 'Martínez', 25698741, '1155551234', 'sofia.martinez@email.com', 30),
('Juan', 'Pérez', 30123456, '1166667890', 'juan.perez@email.com', 45),
('Isabella', 'García', 38765432, '1177772345', 'isabella.garcia@email.com', 22),
('Mateo', 'López', 28901234, '1188888901', 'mateo.lopez@email.com', 50),
('Valentina', 'Rodríguez', 42345678, '1199993456', 'valentina.rodriguez@email.com', 28),
('Benjamín', 'Díaz', 33456789, '1144445678', 'benjamin.diaz@email.com', 38),
('Emma', 'Fernández', 40567890, '1133339012', 'emma.fernandez@email.com', 25),
('Sebastián', 'Gómez', 29678901, '1122224567', 'sebastian.gomez@email.com', 42),
('Martina', 'Ruiz', 36789012, '1111118901', 'martina.ruiz@email.com', 31),
('Nicolás', 'Torres', 45890123, '1100003456', 'nicolas.torres@email.com', 27),
('Lucía', 'Flores', 31901234, '1154321098', 'lucia.flores@email.com', 48),
('Gabriel', 'Vargas', 27012345, '1165432109', 'gabriel.vargas@email.com', 35),
('Camila', 'Jiménez', 39123456, '1176543210', 'camila.jimenez@email.com', 29),
('Alejandro', 'Castro', 43234567, '1187654321', 'alejandro.castro@email.com', 41),
('Antonella', 'Ortiz', 34345678, '1198765432', 'antonella.ortiz@email.com', 24);

-- Inserto datos sobre créditos
CALL insertar_credito_con_cuotas (10000, 15, 50, 12, '2025-03-15', 1);
CALL insertar_credito_con_cuotas(50000, 12, 100, 24, '2025-02-20', 2);
CALL insertar_credito_con_cuotas (25000, 18, 75, 18, '2025-03-01', 3);
CALL insertar_credito_con_cuotas (75000, 10, 150, 36, '2025-01-10', 4);
CALL insertar_credito_con_cuotas (15000, 20, 60, 6, '2025-03-25', 5);
CALL insertar_credito_con_cuotas(30000, 14, 80, 24, '2025-02-10', 6);
CALL insertar_credito_con_cuotas (60000, 11, 120, 18, '2025-01-25', 7);
CALL insertar_credito_con_cuotas (20000, 16, 70, 15, '2025-03-05', 8);
CALL insertar_credito_con_cuotas (40000, 13, 90, 14 , '2025-02-15', 9);
CALL insertar_credito_con_cuotas (80000, 9, 160, 20, '2025-01-05', 10);
CALL insertar_credito_con_cuotas (12000, 19, 55, 9 , '2025-03-20', 11);
CALL insertar_credito_con_cuotas (35000, 13, 85, 14, '2025-02-05', 12);
CALL insertar_credito_con_cuotas (55000, 12, 110, 8 , '2025-01-20', 13);
CALL insertar_credito_con_cuotas (18000, 17, 65, 12, '2025-03-10', 14);
CALL insertar_credito_con_cuotas (45000, 14, 95, 6, '2025-02-01', 15);

-- Inserto datos de empleados.
 INSERT INTO empleados (nombre_empleado, apellido_empleado, email_empleado) VALUES
('Laura', 'Gómez', 'laura.gomez@empresa.com'),
('Carlos', 'Rodríguez', 'carlos.rodriguez@empresa.com'),
('Ana', 'Pérez', 'ana.perez@empresa.com'),
('Javier', 'López', 'javier.lopez@empresa.com'),
('Mariana', 'Díaz', 'mariana.diaz@empresa.com'),
('Sebastián', 'Fernández', 'sebastian.fernandez@empresa.com'),
('Valentina', 'Ruiz', 'valentina.ruiz@empresa.com'),
('Martín', 'Torres', 'martin.torres@empresa.com'),
('Lucía', 'Flores', 'lucia.flores@empresa.com'),
('Andrés', 'Vargas', 'andres.vargas@empresa.com'),
('Camila', 'Jiménez', 'camila.jimenez@empresa.com'),
('Federico', 'Castro', 'federico.castro@empresa.com'),
('Daniela', 'Ortiz', 'daniela.ortiz@empresa.com'),
('Gustavo', 'Suárez', 'gustavo.suarez@empresa.com'),
('Silvina', 'Romero', 'silvina.romero@empresa.com');

-- Inserto datos de tipo de gestiones

INSERT INTO tipo_gestion (descripcion) VALUES
('LLamada telefónica'),
('Correo electrónico'),
('Carta documento'),
('Mensaje de texto');

-- Inserto datos de gestiones de empleados.    
INSERT INTO gestiones_empleados (id_empleado, id_cliente, resultado_gestion, id_tipo, fecha_gestion) VALUES
(1, 1, 'Cliente informa imposibilidad de pago.', 1,'2025-04-01'),
(2, 3, 'Notificación de deuda.',2, '2025-04-03'),
(1, 9, 'Intimación de pago.',3, '2025-04-05'),
(3, 4, 'Cliente desconoce deuda.',1, '2025-05-01'),
(2, 6, 'Envío plan de pagos.', 2, '2025-04-30'),
(1, 8, 'Promesa de pago.', 1, '2025-05-02'),
(3, 10, 'Promesa de pago.', 4, '2025-05-03'),
(1, 11, 'Promesa de pago.',1, '2025-04-02'),
(2, 13, 'Envío de correo electrónico con descuento por pago total.', 2, '2025-06-06'),
(3, 15, 'Promesa de pago.', 1, '2025-05-14'),
(1, 12, 'Notificación de inicio de acciones legales.', 3, '2025-05-06'),
(2, 14, 'Promesa de pago.', 4, '2025-04-25');

-- Inserto datos de promesas de pago
INSERT INTO promesas_pago (monto_promesa, estado_promesa, fecha_promesa, id_cliente, id_empleado, id_gestion) VALUES
(3500, 'Pendiente',CURDATE(), 11, 1, 11), 
(8000, 'Pendiente','2025-04-25', 5, 1, 3),  
(1200, 'Pendiente','2025-05-03', 7, 2, 5),  
(5000, 'Pendiente','2025-05-02',15, 3, 11), 
(2200, 'Pendiente','2025-04-02' ,9, 1, 6),  
(10000, 'Cumplida', '2025-05-06' ,3, 2, 2), 
(6000, 'Pendiente', CURDATE() ,1, 1, 1),  
(9500, 'Pendiente', '2025-06-06' ,13, 2, 12), 
(1800, 'Pendiente','2025-06-07' ,10, 3, 10), 
(4200, 'Pendiente','2025-05-06' ,14, 2, 10),
(7800, 'Vencida','2025-04-06' ,2, 3, 4),
(1500, 'Pendiente','2025-05-06' ,6, 2, 8),
(11500, 'Cumplida','2025-04-06' ,8, 1, 9),  
(2800, 'Pendiente','2025-05-06' ,4, 3, 7),  
(6700, 'Pendiente', '2025-05-07',12, 1, 9); 


-- Inserto datos de cobros
INSERT INTO cobros (monto_cobro, fecha_pago, metodo_de_pago, id_empleado, id_credito, id_cuota) VALUES
	(500, '2025-05-01', 'Transferencia Bancaria', NULL, 2, 1),
    (200, '2025-05-02', 'Transferencia Bancaria', NULL, 2, 1),
    (100, '2025-05-03', 'Efectivo', 1, 2, 1),
    (100, '2025-05-01', 'Transferencia Bancaria', 2, 3, 1),
    (100, '2025-05-04', 'Debito Automatico', NULL, 3, 1),
	(50, '2025-05-05', 'Pago en Línea', NULL, 4, 1),
	(500, '2025-05-06', 'Transferencia Bancaria', 3, 5, 1),
	(200, '2025-05-07', 'Débito Automático', NULL, 4, 1),
	(230, '2025-05-03', 'Débito Automático', 1, 5, 1),
	(150, '2025-05-08', 'Pago en Línea', NULL, 5, 1),
	(120, '2025-05-09', 'Transferencia Bancaria', 2, 5, 1),
    (30, '2025-05-10', 'Transferencia Bancaria', NULL, 6, 1),
	(320, '2025-05-11', 'Débito Automático', 3, 6, 1);
 
 -- Inserto datos de los logs de los empleados al sistema
    INSERT INTO log_empleados (id_empleado, fecha_acceso) VALUES 
    (1, CURDATE()),
    (2, CURDATE()),
    (3, CURDATE()),
    (4, CURDATE()),
    (5, CURDATE()),
    (6, CURDATE()),
    (7, CURDATE()),
    (8, CURDATE()),
    (9, CURDATE()),
    (10, CURDATE()),
    (11, CURDATE()),
    (12, CURDATE());
    
    -- Inserto datos de las métricas de los empleados
    
INSERT INTO metricas_empleados (id_empleado, periodo, cantidad_gestiones, cantidad_promesas, promesas_cumplidas, monto_cobrado) VALUES
(1, '2025-04-01', 300, 120, 90, 150000),
(2, '2025-04-01', 320, 130, 95, 160000),
(3, '2025-04-01', 280, 100, 70, 140000),
(4, '2025-04-01', 290, 110, 80, 145000),
(5, '2025-04-01', 310, 125, 100, 170000),
(6, '2025-04-01', 330, 140, 110, 190000),
(7, '2025-04-01', 309, 115, 90, 155000),
(8, '2025-04-01', 231, 101, 41, 100200),
(9, '2025-04-01', 285, 108, 77, 140000),
(10, '2025-04-01', 290, 110, 80, 145000),
(11, '2025-04-01', 340, 135, 100, 173000),
(12, '2025-04-01', 30, 140, 110, 180000),
(13, '2025-04-01', 400, 220, 120, 400000),
(14, '2025-04-01', 322, 139, 96, 170000),
(15, '2025-04-01', 284, 106, 72, 190000);

-- Inserto datos de campañas de cobranzas
INSERT INTO campaña_cobranzas (nombre_campaña, fecha_inicio, fecha_fin, descripcion) VALUES
('Campaña ticket alto', '2025-03-01', '2025-03-31', 'Campaña intensiva de recuperación de deudas de ticket alto.'),
('Campaña Mora tardía', '2025-04-01', '2025-04-30', 'Campaña para mora mayor a 90 días.'),
('Plan Cliente Frecuente', '2025-05-01', '2025-05-15', 'Ofrece planes de pago especiales a clientes con múltiples créditos en mora.'),
('Campaña aumento de recupero', '2025-06-01', '2025-06-15', 'Aumento de recupero.');

-- Inserto datos del score de los clientes

INSERT INTO score_clientes (id_cliente, cantidad_creditos, deuda_historica_total, estado_creditos_actuales) VALUES
(1, 3, 45000, 'Activo'),
(2, 2, 30000, 'Finalizado'),
(3, 5, 120000, 'Vencido'),
(4, 1, 15000, 'Activo'),
(5, 4, 80000, 'Activo'),
(6, 2, 25000, 'Finalizado'),
(7, 3, 60000, 'Vencido'),
(8, 1, 20000, 'Activo'),
(9, 2, 40000, 'Finalizado'),
(10, 4, 90000, 'Vencido');


