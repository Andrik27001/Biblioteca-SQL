USE Biblioteca

EXEC Retiro @Socio_id = 1, @Libro_id = 1
EXEC Retiro @Socio_id = 2, @Libro_id = 2
EXEC Retiro @Socio_id = 2, @Libro_id = 3
EXEC Retiro @Socio_id = 3, @Libro_id = 4
EXEC Retiro @Socio_id = 4, @Libro_id = 5
EXEC Retiro @Socio_id = 5, @Libro_id = 6
EXEC Retiro @Socio_id = 4, @Libro_id = 7
EXEC Retiro @Socio_id = 5, @Libro_id = 8
EXEC Retiro @Socio_id = 8, @Libro_id = 10
EXEC Retiro @Socio_id = 9, @Libro_id = 11

-- Necesario para hacer que a algunos prestamos les quede menos de 5 días para caducar
UPDATE Prestamos
SET Fecha_retiro = '2025-02-28', Fecha_devolucion = '2025-03-30'
WHERE Socio_id = 3 AND Libro_id = 4

UPDATE Prestamos
SET Fecha_retiro = '2025-03-01', Fecha_devolucion = '2025-03-31'
WHERE Socio_id = 4 AND Libro_id = 7

UPDATE Prestamos
SET Fecha_retiro = '2025-03-02', Fecha_devolucion = '2025-04-01'
WHERE Socio_id = 5 AND Libro_id = 8