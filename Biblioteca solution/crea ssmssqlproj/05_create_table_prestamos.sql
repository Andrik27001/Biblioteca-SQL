USE Biblioteca

CREATE TABLE Prestamos(
	Prestamo_id INT IDENTITY(1,1) PRIMARY KEY,
	Socio_id INT NOT NULL,
	Libro_id INT NOT NULL,
	Fecha_retiro DATE NOT NULL,
	Fecha_devolucion DATE,
	Estado VARCHAR(20) NOT NULL DEFAULT 'Retirado'
	CONSTRAINT Fk_prestamos_socios FOREIGN KEY (Socio_id) REFERENCES Socios(Socio_id),
	CONSTRAINT Fk_prestamos_libros FOREIGN KEY (Libro_id) REFERENCES Libros(Libro_id)
)