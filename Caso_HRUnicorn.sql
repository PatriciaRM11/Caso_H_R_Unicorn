#Caso de uso: HRUnicorn
#Devuelve los datos solicitados en las siguientes preguntas.
use hr_unicorn;

#Escriba una consulta en SQL para mostrar el nombre, el apellido, el número de departamento y el nombre del departamento de cada empleado.
SELECT e.nombre_empleado, e.apellido_empleado, e.id_departamento, d.nombre_departamento FROM empleados e LEFT JOIN departamentos d ON e.id_departamento=d.id_departamento;

#Escriba una consulta en SQL para mostrar el nombre y apellido, departamento, ciudad y provincia de cada empleado
SELECT e.nombre_empleado, e.apellido_empleado, d.nombre_departamento, u.ciudad, u.estado_provincia FROM empleados e LEFT JOIN departamentos d ON e.id_departamento=d.id_departamento LEFT JOIN ubicaciones u ON d.id_ubicacion=u.id_ubicacion;

#Escriba una consulta en SQL para mostrar el nombre, el apellido, el salario y la categoría laboral de todos los empleados.
SELECT e.nombre_empleado, e.apellido_empleado, e.salario, t.titulo_trabajo FROM empleados e LEFT JOIN trabajos t ON e.id_trabajo=t.id_trabajo;

#Escriba una consulta en SQL para mostrar el nombre, el apellido, el número de departamento y el nombre del departamento para todos los empleados de los departamentos 80 o 40.
SELECT e.nombre_empleado, e.apellido_empleado, e.id_departamento, d.nombre_departamento FROM empleados e LEFT JOIN departamentos d ON e.id_departamento=d.id_departamento WHERE e.id_departamento IN (80,40);

#Escriba una consulta en SQL para mostrar aquellos empleados que contengan una letra z en su nombre y también muestre su apellido, departamento, ciudad y provincia del estado
SELECT e.nombre_empleado, e.apellido_empleado, d.nombre_departamento, u.ciudad, u.estado_provincia FROM empleados e LEFT JOIN departamentos d ON e.id_departamento=d.id_departamento LEFT JOIN ubicaciones u ON d.id_ubicacion=u.id_ubicacion WHERE e.nombre_empleado LIKE '%z%';

#Escriba una consulta en SQL para mostrar todos los departamentos, incluidos aquellos donde no tiene ningún empleado.
SELECT * FROM departamentos d LEFT JOIN empleados e ON d.id_departamento = e.id_departamento;

#Escriba una consulta en SQL para mostrar el nombre y apellido y el salario de aquellos empleados que ganan más de 4800
SELECT nombre_empleado, apellido_empleado, salario FROM empleados WHERE salario>4800 ORDER BY salario DESC;

#Escriba una consulta en SQL para mostrar el nombre, apellido y el salario de aquellos empleados que viven en Seattle o Venice
SELECT e.nombre_empleado, e.apellido_empleado, e.salario FROM empleados e LEFT JOIN departamentos d ON e.id_departamento=d.id_departamento LEFT JOIN ubicaciones u ON d.id_ubicacion=u.id_ubicacion WHERE u.ciudad IN ('Venice','Seattle');

#Escriba una consulta en SQL para mostrar el nombre de todos los empleados que se han incorporado luego de la fecha 2002-08-17 y que viven en la ciudad de Seattle
SELECT e.nombre_empleado FROM empleados e LEFT JOIN departamentos d ON e.id_departamento = d.id_departamento
LEFT JOIN ubicaciones u ON d.id_ubicacion = u.id_ubicacion
WHERE fecha_contratacion > '2002-08-17' AND ciudad = 'Seatlle';

#Escribe una consulta en SQL para mostrar el nombre, apellido y salario de aquellos empleados que su categoria de salario sea mayor o igual a 30000
SELECT e.nombre_empleado, e.apellido_empleado, e.salario FROM empleados e LEFT JOIN trabajos t ON e.id_trabajo=t.id_trabajo WHERE t.salario_max>=30000;
