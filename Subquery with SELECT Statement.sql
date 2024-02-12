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



------ WHICH PRODUCTS HAVE NOT BEEN ORDERED YET?
SELECT * FROM Production.Product
WHERE ProductID NOT IN
(SELECT ProductID FROM Sales.SalesOrderDetail)


--
SELECT * FROM Production.Product as P
WHERE NOT EXISTS
	(SELECT ProductID FROM Sales.SalesOrderDetail as S
	WHERE P.ProductID = S.ProductID)
