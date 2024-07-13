SELECT        Customers.CustomerName, Orders.OrderID, SUM(Orders.OrderTotal) AS Expr1
FROM            Customers INNER JOIN
                         Orders ON Customers.CustomerID = Orders.CustomerID
WHERE        (Orders.OrderDate >= CONVERT(DATETIME, '2022-02-18 00:00:00', 102))
GROUP BY Customers.CustomerName, Orders.OrderID