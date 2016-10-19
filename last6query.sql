Select *
From Product
Where Price Between 4 AND 6;

Select *
From Orders
Where CustLName Like 'Li';

Select *
From Orders
Where CustLName IS NULL;


Select *
From Orders
Order by OrderDate DESC;

Select *
From Orders
Order by CustFName + CustLName; 

Select *
From Product
Order by Price ASC
	OFFSET 0 Rows
	FETCH First 5 Rows Only;
