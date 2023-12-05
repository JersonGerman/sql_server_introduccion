-- Crear la base de datos si no existe
USE master;
GO

IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'Sales')
BEGIN
    CREATE DATABASE Sales;
END
GO

-- Utilizar la base de datos
USE Sales;
GO

-- Crear la tabla Inventario
CREATE TABLE Inventario (
    IDInventario INT PRIMARY KEY,
    NombreProducto NVARCHAR(100),
    Descripcion NVARCHAR(200),
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    FechaIngreso DATE
);

