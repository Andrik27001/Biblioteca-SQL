USE Biblioteca;

SELECT Nombre, Correo_electronico, Titulo, Fecha_devolucion
FROM Prestamos
INNER JOIN Socios
ON Prestamos.Socio_id = Socios.Socio_id
INNER JOIN Libros
ON Prestamos.Libro_id = Libros.Libro_id
WHERE Estado = 'Retirado' AND DATEDIFF(day, GETDATE(), Fecha_devolucion) <= 5;