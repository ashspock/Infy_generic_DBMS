SELECT c.custid, c.custname, c.custtype FROM customer c
WHERE c.custtype = 
(SELECT custtype FROM customer WHERE custid = 2004)
AND c.custid != 2004 
