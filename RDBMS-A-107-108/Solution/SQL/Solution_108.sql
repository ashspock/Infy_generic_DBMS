SELECT custid, custname FROM customer 
WHERE custid IN 
(
SELECT DISTINCT custid FROM purchasebill
); 
