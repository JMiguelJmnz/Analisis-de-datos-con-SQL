Utilizando la base de datos AdventureWorks2022 realizamos las siguientes operaciones

1) Utilizamos las tablas HumanResources.Employee y Person.Person para crear una consulta que obtenga los nombres de los empleados (FirstName y LastName) y el título de su puesto (JobTitle) usando un INNER JOIN.
<br>![image](https://github.com/user-attachments/assets/f9e692de-0a06-49ca-9c33-8d1f977f8633)


2) Con las tablas Sales.Customer y Person.Person creamos una consulta que obtenga los nombres de los clientes (FirstName y LastName). Asegúrate de incluir todos los clientes usando un LEFT JOIN.
<br>![image](https://github.com/user-attachments/assets/87563031-5c39-456b-a0df-c970caad9b62)


3) Utilizando las tablas Sales.SalesOrderHeader y Sales.Customer creamos una consulta que muestre el ID de la orden (SalesOrderID) y el ID del cliente (CustomerID) usando un RIGHT JOIN.
<br>![image](https://github.com/user-attachments/assets/37b5e5ea-7372-4a66-848f-890c4dbbcde2)


4) Con las tablas Production.Product y Production.ProductReview para crear una consulta que muestre el nombre del producto (Name) y el comentario de la reseña (Comments) usando un FULL OUTER JOIN.
<br>![image](https://github.com/user-attachments/assets/00d91d1f-adb1-4397-b84e-62ac4f263e4a)


5) Con las tablas Production.Product y Production.ProductCategory creamos una consulta que devuelva una Combinación de todos los productos con todas las categorías usando un CROSS JOIN.
<br>![image](https://github.com/user-attachments/assets/20a68d97-a6ea-4fa1-b8c5-1b7f00e3fc1d)


6) Consultas: una que utilice UNION y otra que utilice UNION ALL para combinar los nombres de productos de las tablas Production.Product y Production.ProductModel.
<br>![image](https://github.com/user-attachments/assets/cd20aad6-a30d-4fad-a20d-4972739bb76c)


7) Con la tabla HumanResources.Employee creamos una consulta que muestre el BusinessEntityID, el JobTitle, y una columna adicional que indique si el título del puesto contiene la palabra 'Manager' usando la expresión CASE. Si el título del puesto es nulo, usa COALESCE para mostrar 'No Title'.
<br>![image](https://github.com/user-attachments/assets/cb85db72-fb9e-4b3c-a145-b00c7fd2fbf2)


8) Utilizando la tabla Sales.SalesPerson creamos una consulta que muestre el BusinessEntityID, la SalesQuota, y una columna que indique 'No Quota' si SalesQuota es nulo usando la función ISNULL.
<br>![image](https://github.com/user-attachments/assets/68a285ec-3f96-4634-a057-e276fa62078b)
