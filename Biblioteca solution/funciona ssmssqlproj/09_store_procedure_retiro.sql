USE Biblioteca;

GO
CREATE PROCEDURE Retiro
    @Socio_id INT,
    @Libro_id INT
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM Socios WHERE Socio_id = @Socio_id)
    BEGIN
        PRINT 'El usuario con el id: ' + CAST(@Socio_id AS VARCHAR) + ' no es socio';
        RETURN;
    END

    DECLARE @Titulo VARCHAR(50);

    IF NOT EXISTS (SELECT 1 FROM Libros WHERE Libro_id = @Libro_id)
    BEGIN
        PRINT 'El libro con el id: ' + CAST(@Libro_id AS VARCHAR) + ' no existe';
        RETURN;
    END

    SELECT @Titulo = Titulo FROM Libros WHERE Libro_id = @Libro_id;

    IF EXISTS (SELECT 1 FROM Libros WHERE Libro_id = @Libro_id AND Disponibilidad = 'No disponible')
    BEGIN
        PRINT 'El libro "' + @Titulo + '" no está disponible';
        RETURN;
    END

    DECLARE @Fecha_retiro DATE;
    DECLARE @Fecha_devolucion DATE;

    SET @Fecha_retiro = GETDATE();
    SET @Fecha_devolucion = DATEADD(DAY, 30, @Fecha_retiro);

    INSERT INTO Prestamos (Socio_id, Libro_id, Fecha_retiro, Fecha_devolucion)
    VALUES (@Socio_id, @Libro_id, @Fecha_retiro, @Fecha_devolucion);

    UPDATE Libros
    SET Disponibilidad = 'No disponible'
    WHERE Libro_id = @Libro_id;
END;
GO