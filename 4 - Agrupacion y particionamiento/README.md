***Agrupación y particionamiento de datos***

Utilizando la tabla Sales.SalesOrderDetail para crear una consulta que obtenga el ProductID, el número total de ventas (OrderQty) y el valor total de ventas (LineTotal) por cada producto usando la cláusula GROUP BY.
<br>![image](https://github.com/user-attachments/assets/2168f26c-be36-44a2-ba31-398a803cccfc)


Utilizamos la tabla Sales.SalesOrderDetail para crear una consulta que agrupe los datos por ProductID y obtenga el número total de ventas (OrderQty) por producto. Filtramos los grupos para mostrar solo aquellos productos que han tenido más de 50 ventas usando la cláusula HAVING.
<br>![image](https://github.com/user-attachments/assets/2d8615a2-4cdf-43e4-85dc-33f8744ce40f)


Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, ProductID, LineTotal y el valor total de ventas (LineTotal) para cada SalesOrderID usando la cláusula OVER con PARTITION BY.
<br>![image](https://github.com/user-attachments/assets/c2a21636-6c96-4696-a164-0b8010627051)


Utilizando la tabla Sales.SalesOrderDetail creamos una consulta que muestre el SalesOrderID, SalesOrderDetailID, ProductID y LineTotal. Usamos la función ROW_NUMBER() para numerar cada línea de pedido dentro de cada SalesOrderID.
<br>![image](https://github.com/user-attachments/assets/5623fb89-d6b3-4850-befa-ad793728eba3)


Con la tabla Sales.SalesOrderDetail creamos una consulta que muestre el SalesOrderID, ProductID y LineTotal. Asignamos un rango a cada producto dentro de cada SalesOrderID basado en el LineTotal usando la función RANK().
<br>![image](https://github.com/user-attachments/assets/42aa8ac9-9c14-4318-8b4a-5c9db73efdb2)


Utilizamos la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, ProductID y LineTotal. Asignamos un rango denso a cada producto dentro de cada SalesOrderID basado en el LineTotal usando la función DENSE_RANK().
<br>![image](https://github.com/user-attachments/assets/65762bf9-b6b6-43b0-8ed6-73e70ad2a092)


Con la tabla Sales.SalesOrderDetail creamos una consulta que agrupe los datos por ProductID y obtenga el valor total de ventas (LineTotal). Filtramos para mostrar solo aquellos productos con un valor total de ventas superior a $5000 usando la cláusula HAVING. 
<br>Ordenando los resultados por el valor total de ventas en orden descendente.
<br>![image](https://github.com/user-attachments/assets/2b61a855-5357-4dae-b712-62df19691729)
