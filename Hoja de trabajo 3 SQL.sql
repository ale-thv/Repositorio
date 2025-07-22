SELECT * FROM pacientes;
SELECT nombre, apellido from pacientes;
SELECT * FROM doctores;
select * from pacientes
WHERE nombre="Ana";
SELECT * from pacientes
WHERE apellido LIKE "L%";
SELECT * FROM pacientes
WHERE correo LIKE "%@clinic.com";
select * from doctores
WHERE nombre like "Dr%";
SELECT * FROM pacientes
WHERE CHAR_LENGTH(apellido) = 5;
SELECT * FROM pacientes
ORDER BY apellido;
SELECT * FROM consultas
ORDER BY fecha;
SELECT * FROM doctores
ORDER BY especialidad;
SELECT MIN(fecha) AS fecha_mas_antigua FROM consultas;
SELECT MAX(fecha) AS fecha_mas_antigua FROM consultas;
SELECT nombre, apellido, fecha_nacimiento FROM pacientes
ORDER BY fecha_nacimiento DESC LIMIT 1;
SELECT
	p.nombre AS nombre_paciente,
    p.apellido AS apellido_paciente,
    r.medicamento
FROM recetas r
JOIN consultas c ON r.id_consulta = c.id_consulta
JOIN pacientes p ON c.id_paciente = p.id_paciente;
SELECT
    c.*
FROM consultas c
JOIN doctores d ON c.id_doctor = d.id_doctor
WHERE d.nombre = 'María' AND d.apellido = 'Díaz';


