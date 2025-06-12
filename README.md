# Entrega_final_SQL_DuarteAlejo
Proyecto final - Alejo Duarte

La siguiente Base de Datos busca como objetivo eficientizar el control de cobros y efectividad de sus colaboradores de cobranzas
de una financiera que brinda créditos a sus clientes,
Para esto se plantearon varias tablas relacionadas entre sí. Estas son:
- Auditoría de cobros por día.
- Auditoría de Créditos Otorgados
- Tabla Campaña Cobranzas
- Tabla Clientes
- Tabla Cobros
- Tabla Créditos
- Tabla Cuota_credito
- Tabla Empleados
- Tabla estado_credito
- Tabla Gestiones_empleados
- Tabla log_empleados
- Tabla Promesas_pago
- Tabla Score_clientes
 - Tabla tipo_gestion

SITUACION PROBLEMATICA
La entidad financiera Ya Crédito está teniendo un problema de registros con sus créditos cobrados y a cobrar.
Actualmente se utiliza un sistema de registro que no es eficiente. lo cual le está generado una posible pérdida. 
Además, hay problemas a la hora de calcular qué incidencia tienen los representantes 
de cobranzas en el cobro de estas deudas.
La implementación de una base de datos relacional se presenta como una solución crucial para centralizar y organizar 
toda la información relevante sobre clientes, créditos, cobros y la actividad de los empleados. 
Esto permitirá mejorar la precisión de los registros, facilitar el seguimiento del ciclo de vida del crédito, 
automatizar tareas de informes y proporcionar a los cobradores las herramientas necesarias para gestionar eficientemente 
su cartera y reducir la mora, minimizando así las posibles pérdidas financieras para Ya Crédito.

MODELO DE NEGOCIO
Ya Crédito a sus clientes ofrece acceso rápido a créditos a sus clientes.
Esta entidad busca tener una relación automatizada con sus clientes, lo cual le permita reducir costos en esta operación.
Además de que esto es lo que buscan los clientes de Ya Crédito, un acceso rápido a financiación.
El valor que ofrecerá la base de datos a "Ya Crédito" será: 
- Eficiencia en la gestión de cobros, 
- reducción de pérdidas por mora, 
- mejor seguimiento del rendimiento de los empleados, 
- información para la toma de decisiones.

- En la tabla auditoría de cobros por día tendremos los cobros que se hicieron cada día.
- En la tabla auditoría de creditos otorgados tendremos los datos de los créditos para analizar durante qué período fueron dados.
- En la tabla campaña_cobranzas tendremos los datos de campañas de cobranza especiales que se hayan realizado.
- En la Tabla Clientes tendremos los datos de los clientes, tales como: nombre, apellido, DNI, edad, mail, telefono.
- En la Tabla Créditos tendremos los datos de los créditos brindados a cada uno de los clientes, con sus respectivas condiciones, vinculadas
entre sí con el id de los clientes como clave foránea.
- En la Tabla Cuota_credito estará el detalle de cada una de las cuotas de los distintos créditos. Tendrá el id del crédito como clave foránea.
- En la Tabla Empleados estarán los datos de los empleados encargados de la gestión de la cobranza de la cartera morosa de
Ya Créditos.
- En la tabla estado_credito tendremos los distintos posibles estados que puede tener el crédito. Tendrá el id del crédito, de la cuota y del cliente
como claves foráneas.
- En la Tabla Cobros se encontrarán los cobros de cada unos de los créditos brindados a los clientes, los cuales pudieron haberse dado de manera orgánica (que el cliente pague
proactivamente) o que haya sido gracias a la gestión de cobranzas de un empleado.  En caso de haber sido gracias a un empleado, esto lo veremos referenciado con una clave 
foránea, la cual será el id del empleado. También tendrá como claves foráneas el id del crédito y de la cuota.
- En la Tabla Gestiones_empleados tendremos las gestiones de cobranzas de los empleados para atraer los pagos de los clietnes. En caso de ser una gestión exitosa, esta tendrá como resultado una
promesa de pago cumplida.
- En tabla log_empleados estará los ingresos de cada uno de los empleados al sistema de gestión de cobranzas. Tendrá como clave foránea el id
del empleado.
- En la tabla metricas_empleados se encontrarán los datos sobre la performance de la gestión de los empleados en un determinado periodo,
tales como: cantidad de gestiones, promesas de pago, promesas de pago cumplidas y el monto de deuda recuperado. Tiene como clave primaria y foránea
el id del empleado.
- En la Tabla Promesas_pago estará el estado de cada una de las promesas de pago hechas por los empleados y si esta representó un cobro efectivo.
Tiene como claves foráneas el id del cliente, del empleado y de la gestión.
- En la tabla score_clientes estarán la cantidad de créditos que hayan tenido en total los clietnes, el total de la deuda que tienn y el estado
de los créditos actuales. Tiene como clave primaria y foránea el id del cliente. 
- En la tabla tipo de gestión estarán los tipos de gestiones que pueden llevar adelante los empleados.



Vistas:
- Vista de deudas vencidas. Lo cual podría servirle a la organización para tener un listado de la deuda que puede estar asignada
a la cartera de cobranzas.
Está compuesta por las tablas créditos para obtener los datos de los créditos como el id, el monto y el plazo, 
clientes para obtener los nombres de los clientes y estado_credito para obtener qué créditos tienen la cuota vencida. 

- Vista Ranking empleados. Esta tabla sirve para medir la performance de los empleados, ponderando las métricas con una importancia determinada.
Esta vista involucra las tablas de empleados para tener el nombre de los empleados; la tabla métricas_empleados para calcular los puntajes y
obtener el periodo.

- Vista Top empleado. Es una tabla similar a la anterior pero solo tiene en cuenta al mejor empleado. Esto puede servir si se quiere hacer un reconocimiento
en especial para el mejor representante de cobranzas.

- Vista resultado_campaña. Esta vista permite ver los resultados de una campaña de cobranzas en un determinado periodo. 
Están involucradas las tablas resultado_campaña y cobros.

-- Vista clientes sin gestionar. Esta vista sirve para identificar a qué clientes no se gestionaron para darles prioridad.
Están involucradas las tablas clientes y gestiones. 

Funciones:
- Total de crédito pagado. Función para calcular el total pagado de un crédito. 
- Calcular performance. Función para calcular la performance de cada representante.

Stored Procedures:
- Actualización del saldo pendiente. Este procedimiento automatiza la actualización del saldo pendiente de los créditos que hayan tenido 
cobros. A su vez, si este saldo pendiente llega a 0, se cambiará el estado del crédito de "activo" a "finalizado".
- Renovación de crédito. Este procedimiento puede ayudar a validar a los empleados si pueden renovarle o no el crédito a un determinado
cliente o usuario de la financiera.
- Insertar Crédito con cuotas. Este procedimiento permite insertar datos en la tabla créditos y de manera automatizada calcula e inserta los datos para 
el detalle de las cuotas en la tabla cuota_credito

Trigger:
- Promesas de pago: Este trigger sirve para que los empleados no generen promesas de pago muy alejadas en el tiempo, con la intención de 
que las promesas de pago que generen tengan una mayor efectividad y provoquen un mayor sentido de urgencia a la hora de reclamar la deuda.
- After insert cobros. Trigger de auditoria que inserta datos en la tabla de auditoría de cobros por día.
- After insert	créditos. Trigger de auditoria que inserta datos en la tabla de auditoría de créditos para analizar la generación de crédito
en un período determinado.
- Set fecha pago. Trigger que da como le da la fecha del día al cobro que no tenga fecha ingresada de manera manual.

Herramientas utilizadas:
- MySQL Workbech
- Excel
- Github

## Autor: Alejo Duarte
## Profesor: Alejandro Di Stéfano
## Coderhouse - Curso SQL - Comisión 75965
