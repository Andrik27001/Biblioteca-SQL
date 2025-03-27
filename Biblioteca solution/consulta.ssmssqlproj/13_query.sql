USE Biblioteca

SELECT Titulo, Disponibilidad
FROM Libros
WHERE Disponibilidad = 'No disponible'

SELECT count(*) AS Libros_prestados
FROM Libros
WHERE Disponibilidad = 'No disponible'

