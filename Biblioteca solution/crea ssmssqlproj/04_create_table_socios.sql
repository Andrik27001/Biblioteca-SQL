USE Biblioteca

CREATE TABLE Socios (
    Socio_id INT IDENTITY(1,1) PRIMARY KEY,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100) NOT NULL,
    Telefono VARCHAR(15) NOT NULL UNIQUE,
    Correo_electronico VARCHAR(50) NOT NULL UNIQUE,
    Fecha_registro DATE NOT NULL,
    CONSTRAINT const_correo_elec CHECK (Correo_electronico LIKE '%@%.%')
)