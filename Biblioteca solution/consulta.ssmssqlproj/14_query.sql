USE Biblioteca

SELECT Titulo, Disponibilidad 
FROM Libros
WHERE Disponibilidad = 'Disponible'

SELECT COUNT(*) AS Libros_disponibles
FROM Libros
WHERE Disponibilidad = 'Disponible'