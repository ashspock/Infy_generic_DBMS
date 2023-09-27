SELECT count(itemcode) AS noofitems FROM item; 
--SELECT * FROM orders;
--SELECT EXTRACT(MONTH FROM orderdate) AS MONTH,count(orderid) AS quantity FROM orders GROUP By EXTRACT(MONTH FROM orderdate) ORDER BY quantity DESC;
--SELECT to_char(orderdate,'Month') AS MONTH,count(orderid) AS quantity FROM orders GROUP By to_char(orderdate,'Month') ORDER BY quantity DESC;