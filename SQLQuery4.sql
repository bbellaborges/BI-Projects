SELECT TOP (1000) [OrderID]
      ,[OrderDate]
      ,[CustomerID]
      ,[OrderTotal]
  FROM [KCC].[dbo].[Orders]
  WHERE OrderTotal between 1000 and 2000
  -- filtrando valores num�ricos

  -- extraindo dados de tabelas diferentes:

Select OrderID, OrderDate, OrderTotal, CustomerName, Phone
	From dbo.Orders
	Join dbo.Customers on dbo.Orders.CustomerID = dbo.Customers.CustomerID
-- Recebo todos os diferentes pedidos junto ao n�mero do cliente e n�mero de telefone
--'Join' ou 'Inner Join' executa uma jun��o interna = todos os clientes que possuem um pedido E todos os
--pedidos que possuem um cliente. Se tem um cliente que nao tem nenhum pedido, nao aparecer� nessa busca
--mas h� outros tipos de 'joins' que funcionam de formas diferentes. A seguir vou ordernar pelo total do pedido:
	Order by OrderTotal desc

-- fun��es diferentes:
select * from dbo.Orders
where OrderDate <= Dateadd(month, -1, getdate())
--select * from dbo.Orders: Seleciona todas as colunas (*) da tabela Orders que est� no esquema dbo.
--getdate(): Fun��o que retorna a data e hora atuais. Dateadd(month, -1, getdate()): Fun��o que adiciona ou subtrai um intervalo de tempo a uma data. 
--Neste caso, est� subtraindo 1 m�s da data atual. i.e, a consulta retorna todos os pedidos que foram feitos h� mais de um m�s a partir da data em que a consulta � executada.

--fun��es agregagas
select count(*) from dbo.Orders
where OrderDate <= Dateadd(month, -1, getdate())

select sum(OrderTotal) from dbo.Orders
where OrderDate >= Dateadd(month, -1, getdate())

select count(OrderTotal) from dbo.Orders
where OrderDate <= Dateadd(month, -1, getdate())
group by CustomerID