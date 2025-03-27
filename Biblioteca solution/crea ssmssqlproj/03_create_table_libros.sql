USE Biblioteca

CREATE TABLE Libros (
    Libro_id INT IDENTITY(1,1) PRIMARY KEY,
    Titulo VARCHAR(50) NOT NULL,
    Autor_id SMALLINT NOT NULL,
    Fecha_edicion SMALLINT NOT NULL,
    CONSTRAINT const_fecha_edicion CHECK (Fecha_edicion >= 1900 AND Fecha_edicion <= 1940),
    Disponibilidad VARCHAR(20) DEFAULT 'Disponible',
    CONSTRAINT Fk_libros_autores FOREIGN KEY (Autor_id) REFERENCES Autores(Autor_id)
)