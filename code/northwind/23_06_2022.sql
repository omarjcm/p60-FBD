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

-- Listar los productos con valores entre $10 y $20, pero que no se encuentran en Stock. 
-- Ordenados de mayor a menor (el valor).
SELECT *
FROM Products
WHERE (UnitPrice >= 10 AND UnitPrice <= 20) AND UnitsInStock = 0
ORDER BY UnitPrice DESC
GO

-- Listar los productos con valores entre $10 y $20, 
-- pero que se encuentran en Stock a lo mucho 10 productos. 
-- Ordenados de mayor a menor (el valor).
SELECT *
FROM Products
WHERE (UnitPrice >= 10 AND UnitPrice <= 20) AND UnitsInStock <= 10
ORDER BY UnitPrice DESC
GO

-- Listar los productos con valores entre $10 y $20, 
-- pero que se encuentran en Stock como mínimo 10 productos. 
-- Ordenados de menor a mayor (el valor del Stock).
SELECT *
FROM Products
WHERE (UnitPrice >= 10 AND UnitPrice <= 20) AND UnitsInStock >= 10
ORDER BY UnitsInStock ASC
GO

-- Listar los productos con valores entre $10 y $20, 
-- pero que se encuentran en Stock como mínimo 10 productos. 
-- Ordenados de menor a mayor (el valor del Stock y el valor del UnitPrice).
SELECT *
FROM Products
WHERE (UnitPrice >= 10 AND UnitPrice <= 20) AND UnitsInStock >= 10
ORDER BY UnitsInStock ASC, UnitPrice ASC
GO

-- Listar los productos con valores entre $10 y $20, 
-- pero que se encuentran en Stock como mínimo 10 productos. 
-- Ordenados de menor a mayor el valor del Stock y el valor del UnitPrice (de mayor a menor).
SELECT *
FROM Products
WHERE (UnitPrice >= 10 AND UnitPrice <= 20) AND UnitsInStock >= 10
ORDER BY UnitsInStock ASC, UnitPrice DESC
GO

-- Listar los productos,
-- ordenados de mayor a menor (UnitsInStock) y de menor a mayor (UnitPrice)
SELECT *
FROM Products
ORDER BY UnitsInStock DESC, UnitPrice ASC
GO

-- Listar los productos que sus nombres empiecen con M.
SELECT *
FROM Products
WHERE ProductName LIKE 'M%'
GO

-- Listar los productos que sus nombres empiecen con Ma.
SELECT *
FROM Products
WHERE ProductName LIKE 'Ma%'
GO

-- Listar los productos que sus nombres finalicen con a.
SELECT *
FROM Products
WHERE ProductName LIKE '%a'
GO

-- Listar los productos que sus nombres contenga la palabra 'Queso'.
SELECT *
FROM Products
WHERE ProductName LIKE '%queso%'
GO

-- Cuanto tengo en valor total por existencias.
SELECT SUM(UnitPrice*UnitsInStock)
FROM Products
GO

-- Cuanto tengo en promedio de unidades en Stock
SELECT AVG(UnitsInStock)
FROM Products
GO

SELECT MAX(UnitsInStock) as maximo
FROM Products
GO

SELECT MIN(UnitsInStock) as minimo
FROM Products
GO

-- Listar los clientes que no tengan asignada una region
SELECT *
FROM Customers
WHERE Region IS NOT NULL
GO

-- Cuantos clientes no tienen asignada una region
SELECT COUNT(*)
FROM Customers
WHERE Region IS NOT NULL
GO

-- Listar los detalles de los pedidos y sus valores x cantidad con y sin descuentos.
SELECT *, UnitPrice*Quantity as valor_x_producto_sd, 
		UnitPrice*Quantity*Discount as valor_descuento,
		UnitPrice*Quantity*(1 - Discount) as valor_x_producto_cd
FROM [Order Details]


-- Agrupar los valores de los pedidos por productos y cuanto se ha vendido por producto (con descuento).
SELECT ProductID, ROUND( SUM(UnitPrice*Quantity*(1 - Discount)), 2) as valor_total
FROM [Order Details]
GROUP BY ProductID
ORDER BY ProductID







