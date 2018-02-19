Select Orders.id, Orders.Store FROM Orders, Customers, Shoppers 
Where Orders.customer_id=Customers.Id AND  Orders.shopper_id = Shoppers.id
AND Shoppers.First_name Like '%Sumer%' AND Customers.First_name Like '%Volodymyr%';
