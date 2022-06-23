-- Listar todas las columnas
SELECT *
FROM Customers
GO

-- Listar el ID, nombre de la compañía, nombre del contacto, ciudad
SELECT CustomerID, CompanyName, ContactName, City
FROM Customers
GO

-- Listar los clientes que son del país UK
SELECT *
FROM Customers
WHERE Country = 'UK'
GO

-- Listar los productos con valores menores o iguales a $10.
SELECT *
FROM Products
WHERE UnitPrice <=10
GO

-- Listar los productos con valores entre $10 y $20.
SELECT *
FROM Products
WHERE UnitPrice >= 10 AND UnitPrice <= 20
GO

-- Listar los productos con valores entre $10 y $20, ordenados de mayor a menor (el valor).
SELECT *
FROM Products
WHERE UnitPrice >= 10 AND UnitPrice <= 20
ORDER BY UnitPrice DESC
GO


