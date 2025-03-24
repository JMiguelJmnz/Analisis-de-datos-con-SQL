/*
Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que obtenga el ProductID, el número total de ventas (OrderQty) y el valor total de ventas (LineTotal) 
por cada producto usando la cláusula GROUP BY.
*/

Select ProductID, SUM(OrderQty) AS TotalDeVentas, SUM(LineTotal) AS ValorDeVentas
From Sales.SalesOrderDetail
Group by ProductID


/*
Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que agrupe los datos por ProductID y obtenga el número total de ventas (OrderQty) por producto. 
Filtra los grupos para mostrar solo aquellos productos que han tenido más de 50 ventas usando la cláusula HAVING.
*/

Select od.ProductID, SUM(OrderQty) AS TotalDeVentas
From Sales.SalesOrderDetail od
Group by ProductID
Having SUM(OrderQty) > 50

/*
Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, ProductID, LineTotal y el valor total de ventas (LineTotal) para cada 
SalesOrderID usando la cláusula OVER con PARTITION BY.
*/

Select od.SalesOrderID, od.ProductID, od.LineTotal, SUM(od.LineTotal) Over (Partition by od.SalesOrderID) as ValorTotalVentas
From Sales.SalesOrderDetail od

/*
Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, SalesOrderDetailID, ProductID y LineTotal. Usa la función ROW_NUMBER() 
para numerar cada línea de pedido dentro de cada SalesOrderID.
*/

Select od.SalesOrderID, od.SalesOrderDetailID, od.ProductID, od.LineTotal,
	ROW_NUMBER() OVER(ORDER BY od.SalesOrderID) as NumRowNumber
From Sales.SalesOrderDetail od

/*
Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, ProductID y LineTotal. Asigna un rango a cada producto dentro de cada 
SalesOrderID basado en el LineTotal usando la función RANK().
*/

Select od.SalesOrderID, od.ProductID, od.LineTotal,
	RANK() OVER(PARTITION by od.SalesOrderID ORDER BY od.LineTotal DESC) as NumRank
From Sales.SalesOrderDetail od

/*
Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, ProductID y LineTotal. Asigna un rango denso a cada producto dentro de 
cada SalesOrderID basado en el LineTotal usando la función DENSE_RANK().
*/

Select od.SalesOrderID, od.ProductID, od.LineTotal,
	DENSE_RANK() OVER(PARTITION by od.SalesOrderID ORDER BY od.LineTotal DESC) as NumRank
From Sales.SalesOrderDetail od

/*
Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que agrupe los datos por ProductID y obtenga el valor total de ventas (LineTotal). Filtra para mostrar 
solo aquellos productos con un valor total de ventas superior a $5000 usando la cláusula HAVING. Ordena los resultados por el valor total de ventas en orden descendente.
*/

Select ProductID, SUM(LineTotal) as ValorTotalVentas
from sales.SalesOrderDetail
Group By ProductID
Having SUM(LineTotal) > 5000
Order by 2 DESC