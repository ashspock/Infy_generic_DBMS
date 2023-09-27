SELECT pb1.billid, pb1.itemcode FROM purchasebill pb1
WHERE pb1.BILLAMOUNT <=
(
SELECT sum(billamount)/count(roid) FROM purchasebill pb2
WHERE pb2.roid = pb1.roid
GROUP BY roid 
);  
