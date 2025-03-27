CREATE DATABASE Biblioteca
ON 
( NAME = Biblioteca_Data,
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca.mdf',
  SIZE = 3MB,
  MAXSIZE = UNLIMITED,
  FILEGROWTH = 1MB )
LOG ON
( NAME = Biblioteca_Log,
  FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Biblioteca.ldf',
  SIZE = 1MB,
  MAXSIZE = UNLIMITED,
  FILEGROWTH = 1MB )

-- Copia de seguridad
BACKUP DATABASE Biblioteca
TO DISK = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\Backup\Biblioteca.bak'
WITH FORMAT,
MEDIANAME = 'BibliotecaBackup',
NAME = 'Copia de seguridad de Biblioteca'