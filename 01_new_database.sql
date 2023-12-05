-- Este ejemplo crea la base de datos Sales. Debido a que no se usa la palabra clave PRIMARY, el primer archivo (Sales_dat) se convierte en el archivo principal. Como no se especifica MB ni KB en el parámetro SIZE del archivo Sales_dat, se utiliza MB y el tamaño se asigna en megabytes. Cada vez que se crea, modifica o quita una base de datos de usuario, se debe hacer una copia de seguridad de la base de datos Sales_log se asigna en megabytes porque el sufijo MB se ha indicado explícitamente en el parámetro SIZE .

USE master;
GO

CREATE DATABASE Sales ON
(NAME = Sales_dat,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\saledat.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5)
LOG ON
(NAME = Sales_log,
    FILENAME = 'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\salelog.ldf',
    SIZE = 5 MB,
    MAXSIZE = 25 MB,
    FILEGROWTH = 5 MB);
GO