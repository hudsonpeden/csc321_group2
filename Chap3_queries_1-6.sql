SELECT foodid, price
FROM product
WHERE price <= 6
ORDER BY price;

SELECT orderid, foodsequence
FROM orderlineitems
ORDER BY orderid;

SELECT *
FROM orders;

SELECT foodid, foodcount AS count
FROM orderlineitems
ORDER BY foodid;

SELECT orderid, orderdate, custfname + ' ' + custlname
FROM orders
ORDER BY orderid;

SELECT orderid, foodcount*price AS ordertotal
FROM product join orderlineitems
	ON product.foodid=orderlineitems.foodid
ORDER BY orderid;
