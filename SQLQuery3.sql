Select * 
From KCC.dbo.Customers 
where State = 'WA'
--Isso retorna todos os clientes no estado de Whashington


Select * 
From KCC.dbo.Customers 
where State <> 'WA'
--( != é equivalente a <> ) Isso retorna todos os clientes que não estão no estado de Whashington

Select * 
From KCC.dbo.Customers 
where State IN('WA', 'NY', 'UT')
--Todos os clientes em WA, NY ou UT

Select * 
From KCC.dbo.Customers 
where State NOT IN('WA', 'NY', 'UT')
--Todos os clientes que não estão em WA, NY ou UT

Select *
From KCC.dbo.Customers
Where CustomerName = 'Tres Delicious' AND (Country = 'United States' OR Country = 'France')
--Todos os clientes Tres delicious que estejam nos EUA ou FRA

Select *
From KCC.dbo.Customers
Where CustomerName NOT LIKE 'A%' AND (Country = 'United States' OR Country = 'France')
-- Todos os clientes que nãoo comecem com a letra "A" e não estejam nos EUA ou FRA

-- filtrando valores numéricos
