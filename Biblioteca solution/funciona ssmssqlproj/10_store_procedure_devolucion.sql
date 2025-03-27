USE Biblioteca;

GO
CREATE PROCEDURE Devolucion
    @Socio_id INT,
    @Libro_id INT
AS
BEGIN
    IF EXISTS (SELECT 1 FROM Libros WHERE Libro_id = @Libro_id AND Disponibilidad = 'No disponible')
    BEGIN
        UPDATE Libros
        SET Disponibilidad = 'Disponible'
        WHERE Libro_id = @Libro_id;

		UPDATE Prestamos
		SET Estado = 'Devuelto'
		WHERE Libro_id = @Libro_id
    END
    ELSE
    BEGIN
        PRINT 'El libro con el id: ' + CAST(@Libro_id AS VARCHAR) + ' no está prestado o ya ha sido devuelto';
    END
END;
GO