Utilizamos la tabla Production.Product para crear una consulta que muestre los nombres de los productos y los ID’s de productos que hayan sido ordenados. Con una subconsulta para filtrar los productos ordenados en la tabla Sales.SalesOrderDetail. Ordenamos el resultado por nombre de manera ascendente.
<br>![image](https://github.com/user-attachments/assets/9169521d-d152-41ed-a1f6-cfe527745617)

Utilizando las tablas HumanResources.Employee, HumanResources.EmployeeDepartmentHistory, HumanResources.Department y Person.Person para crear una consulta que muestre un listado de todos los empleados y el nombre de su departamento actual. Los campos a mostrar serán: BusinessEntityID, FirstName + ' ' + LastName como Nombre del Empleado, y Name como Nombre del Departamento.
<br>![image](https://github.com/user-attachments/assets/a03770ee-dccd-4103-8daa-0d88d6a5c103)


Utilizamos las tablas HumanResources.Employee, HumanResources.EmployeeDepartmentHistory y HumanResources.Department para crear una consulta que muestre el mismo resultado que en el ejercicio 2, pero utilizando un CTE. Los campos a mostrar serán: BusinessEntityID, FirstName + ' ' + LastName como Nombre del Empleado, y Name como Nombre del Departamento.
<br>![image](https://github.com/user-attachments/assets/abb8a0e2-ccb1-4089-b9d8-58986dcf1f9f)

Creamos una tabla temporal local y otra global para almacenar los productos ordenados. Utilizamos la tabla Production.Product para insertar los datos en ambas tablas temporales. Los campos a incluir serán: ProductID y Name. Inserta los datos en la tabla temporal local.
<br>![image](https://github.com/user-attachments/assets/0b61b1f6-8ed5-43c7-aa73-0cf54947bf83)
![image](https://github.com/user-attachments/assets/af01849c-c125-4fa1-b9fe-7eb5375c192e)


Utilizamos la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra solo para el año 2011.
<br>![image](https://github.com/user-attachments/assets/0caba54c-0ada-4221-ae77-e29479a258fc)

Utilizamos la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra sin los 2 primeros caracteres y nombra los campos resultantes como NewSalesOrderNumber y NewPurchaseOrderNumber.
<br>![image](https://github.com/user-attachments/assets/3cb894ff-1545-416a-8887-809b4df5d862)
