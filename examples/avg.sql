/*	------------------------------------------------
	Baza danych/Database: AdventureWorks
	Task/Zadanie		: Calculate the average value of orders.
						  / Oblicz średnią wartość zamówień. 
------------------------------------------------- */

SELECT
    AVG(O.SubTotal) AS [Średnia wartość zamówień]
FROM
    Sales.SalesOrderHeader O
	
/*	------------------------------------------------
	Baza danych/Database: Northwind
	Task/Zadanie		: Calculate the average value of customer orders with ID WALLI.
						  / Oblicz średnią wartość zamówień klienta o ID WALLI.  
------------------------------------------------- */	

SELECT
    AVG(SR.[Wartość zamówienia])
FROM(
SELECT
    O.OrderID
    ,SUM(D.Quantity * D.UnitPrice) AS [Wartość zamówienia]
FROM
    Orders O JOIN [Order Details] D
        ON O.OrderID = D.OrderID
WHERE
    O.CustomerID = 'WELLI'
GROUP BY
    O.OrderID        ) AS SR 