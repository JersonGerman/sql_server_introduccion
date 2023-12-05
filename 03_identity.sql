-- Crear la tabla Inventario con IDInventario autoincremental
CREATE TABLE Inventario (
    IDInventario INT IDENTITY(1,1) PRIMARY KEY,
    NombreProducto NVARCHAR(100),
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    FechaIngreso DATE
);