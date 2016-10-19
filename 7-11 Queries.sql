Select CustFName, CustLName,
    LEFT(CustFName, 1)+
	LEFT(CustLName, 1) AS Initials
From Orders;


Select Distinct FoodID,SUM(FoodCount)
from OrderLineItems
group by FoodID
order by FoodID;


Select TOP 5 Price, FoodID
From Product
Order By Price DESC;


Select FoodID, Price
From Product
Where Price<=6;


Select price*foodcount as ordertotal
from product join orderlineitems
on product.foodid=orderlineitems.foodid
join orders on orderlineitems.orderid=orders.orderid
where price*foodcount>10 AND orderdate>='10-01-2016';