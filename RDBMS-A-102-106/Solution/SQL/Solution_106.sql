SELECT c.custid, c.custname FROM customer c
WHERE NOT EXISTS (SELECT 1 FROM purchasebill WHERE c.CUSTID = custid) 
