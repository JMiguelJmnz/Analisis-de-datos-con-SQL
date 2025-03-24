/* 
1) Utiliza las tablas HumanResources.Employee y Person.Person para crear una consulta que obtenga los nombres de los 
empleados (FirstName y LastName) y el título de su puesto (JobTitle) usando un INNER JOIN.
*/

SELECT p.FirstName, p.LastName, e.JobTitle
FROM HumanResources.Employee e
	INNER JOIN Person.Person p
		ON p.BusinessEntityID = e.BusinessEntityID;

/* 
2) Utiliza las tablas Sales.Customer y Person.Person para crear una consulta que obtenga los nombres de los 
clientes (FirstName y LastName). Asegúrate de incluir todos los clientes, incluso aquellos que no tienen un 
registro en la tabla Person.Person usando un LEFT JOIN.
*/

SELECT c.CustomerID, p.FirstName, p.LastName
FROM Sales.Customer c
	LEFT JOIN Person.Person p
		ON c.CustomerID = p.BusinessEntityID

/* 
3) Utiliza las tablas Sales.SalesOrderHeader y Sales.Customer para crear una consulta que muestre el ID de 
la orden (SalesOrderID) y el ID del cliente (CustomerID). Asegúrate de incluir todas las órdenes, incluso 
si no hay un cliente asociado usando un RIGHT JOIN.
*/

SELECT s.SalesOrderID, c.CustomerID
FROM Sales.SalesOrderHeader s
	RIGHT JOIN sales.Customer c
		ON c.CustomerID = s.CustomerID;

/* 
4) Utiliza las tablas Production.Product y Production.ProductReview para crear una consulta que muestre el 
nombre del producto (Name) y el comentario de la reseña (Comments). Incluye todos los productos y todas las 
reseñas, incluso si no coinciden usando un FULL OUTER JOIN.
*/

SELECT p.Name, r.Comments
FROM Production.Product p
	FULL OUTER JOIN Production.ProductReview r
		ON p.ProductID = r.ProductID

/* 
5) Utiliza las tablas Production.Product y Production.ProductCategory para crear una consulta que devuelva una 
combinación de todos los productos con todas las categorías usando un CROSS JOIN.
*/

SELECT p.Name, c.Name
FROM Production.Product p
	CROSS JOIN Production.ProductCategory c

/* 
6) Crea dos consultas: una que utilice UNION y otra que utilice UNION ALL para combinar los nombres de productos 
de las tablas Production.Product y Production.ProductModel.
*/

SELECT p.Name
FROM Production.Product p 
UNION
SELECT m.Name
FROM Production.ProductModel m

SELECT p.Name
FROM Production.Product p 
UNION ALL
SELECT m.Name
FROM Production.ProductModel m

/* 
7) Utiliza la tabla HumanResources.Employee para crear una consulta que muestre el BusinessEntityID, el JobTitle, 
y una columna adicional que indique si el título del puesto contiene la palabra 'Manager' usando la expresión CASE. 
Si el título del puesto es nulo, usa COALESCE para mostrar 'No Title'.
*/

SELECT e.BusinessEntityID, e.JobTitle,
	COALESCE(
	CASE 
		WHEN JobTitle LIKE '%Manager%' THEN 'Manager'
	END,
	'No Title')
	 AS Title
FROM HumanResources.Employee e

/* 
8) Utiliza la tabla Sales.SalesPerson para crear una consulta que muestre el BusinessEntityID, la SalesQuota, y una 
columna que indique 'No Quota' si SalesQuota es nulo usando la función ISNULL.
*/

SELECT s.BusinessEntityID, s.SalesQuota,
	ISNULL(CAST(s.SalesQuota AS VARCHAR), 'No Quota') AS Quota
FROM Sales.SalesPerson s;
