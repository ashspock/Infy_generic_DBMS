SELECT orderid, (months_between(orderdate,pymtdate)) AS "No of Months" FROM orders; 
