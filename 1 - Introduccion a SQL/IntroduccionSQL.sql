SELECT *
FROM Production.Product

SELECT *
FROM Production.Product
WHERE Color = 'Silver'

SELECT *
FROM Production.Product
WHERE Color = 'Silver'
ORDER BY StandardCost

SELECT *
FROM Production.Product
WHERE SafetyStockLevel BETWEEN 800 AND 1000
ORDER BY ReorderPoint