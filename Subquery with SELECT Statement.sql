Use AdventureWorks2017
Go

-- HOW MANY CABLE LOCKS HAS BEEN SOLD
SELECT * FROM Sales.SalesOrderDetail
WHERE ProductID = (
SELECT ProductID FROM Production.Product
WHERE Name = 'Cable Lock' )


-- Number of Cable locks that has been sold
SELECT COUNT(*) FROM Sales.SalesOrderDetail 
WHERE ProductID = (
SELECT ProductID FROM Production.Product
WHERE Name = 'Cable Lock' )