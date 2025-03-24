/*Utiliza la tabla Production.Product para crear una consulta que muestre los nombres de los productos y los 
ID’s de productos que hayan sido ordenados. Utiliza una subconsulta para filtrar los productos ordenados en 
la tabla Sales.SalesOrderDetail. Ordena el resultado por nombre de manera ascendente.*/

SELECT p.Name, p.ProductID
From Production.Product p
Where ProductID IN (
	Select DISTINCT ProductID
	From Sales.SalesOrderDetail
)
Order by Name ASC;

/*Utiliza las tablas HumanResources.Employee, HumanResources.EmployeeDepartmentHistory, HumanResources.Department 
y Person.Person para crear una consulta que muestre un listado de todos los empleados y el nombre de su departamento 
actual. Los campos a mostrar serán: BusinessEntityID, FirstName + ' ' + LastName como Nombre del Empleado, y Name como 
Nombre del Departamento.*/

Select hre.BusinessEntityID,
	(pp.FirstName + ' ' + pp.LastName) as 'Nombre del Empleado',
	d.Name as 'Nombre del Departamento'
From HumanResources.Employee hre
JOIN HumanResources.EmployeeDepartmentHistory edh
	on hre.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department d
	on edh.DepartmentID = d.DepartmentID
JOIN Person.Person pp
	on edh.BusinessEntityID = pp.BusinessEntityID
Order by BusinessEntityID

/*Utiliza las tablas HumanResources.Employee, HumanResources.EmployeeDepartmentHistory y HumanResources.Department para crear 
una consulta que muestre el mismo resultado que en el ejercicio 2, pero utilizando un CTE. Los campos a mostrar serán: 
BusinessEntityID, FirstName + ' ' + LastName como Nombre del Empleado, y Name como Nombre del Departamento.*/

WITH BussinesInfo_CTE as(
Select hre.BusinessEntityID,
	CONCAT(pp.FirstName, ' ', pp.LastName) as 'Nombre del Empleado',
	d.Name as 'Nombre del Departamento'
From HumanResources.Employee hre
JOIN HumanResources.EmployeeDepartmentHistory edh
	on hre.BusinessEntityID = edh.BusinessEntityID
JOIN HumanResources.Department d
	on edh.DepartmentID = d.DepartmentID
JOIN Person.Person pp
	on hre.BusinessEntityID = pp.BusinessEntityID
	)
Select *
FROM BussinesInfo_CTE
Order by BusinessEntityID

/*Crea una tabla temporal local y otra global para almacenar los productos ordenados. Utiliza la tabla Production.Product para 
insertar los datos en ambas tablas temporales. Los campos a incluir serán: ProductID y Name. Inserta los datos en la tabla temporal local.*/

CREATE TABLE #Products_L (
	ProductID INT PRIMARY KEY,
	Name VARCHAR(100)
);

INSERT INTO #Products_L (ProductID, Name)
SELECT
	pp.ProductID,
	pp.Name
FROM Production.Product pp
Where pp.ProductID IN (
	Select DISTINCT sod.ProductID
	From Sales.SalesOrderDetail sod
)

SELECT * FROM #Products_L
--drop table #Products_L

CREATE TABLE ##Products_G (
	ProductID INT PRIMARY KEY,
	Name VARCHAR(100)
);

INSERT INTO ##Products_G (ProductID, Name)
SELECT
	pp.ProductID,
	pp.Name
FROM Production.Product pp
Where pp.ProductID IN (
	Select DISTINCT sod.ProductID
	From Sales.SalesOrderDetail sod
)

SELECT * FROM ##Products_G
--drop table ##Products_G

/*Utiliza la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra solo para el año 2011.*/


Select soh.SalesOrderNumber, soh.PurchaseOrderNumber
From Sales.SalesOrderHeader soh
WHERE YEAR(soh.OrderDate) = 2011;

/*Utiliza la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra sin los 2 primeros caracteres 
y nombra los campos resultantes como NewSalesOrderNumber y NewPurchaseOrderNumber.*/

SELECT SUBSTRING(soh.SalesOrderNumber, 3, LEN(soh.SalesOrderNumber)) AS NewSalesOrderNumer, SUBSTRING(soh.PurchaseOrderNumber, 3, LEN(soh.PurchaseOrderNumber)) AS NewPurchaseOrderNumer
FROM Sales.SalesOrderHeader soh