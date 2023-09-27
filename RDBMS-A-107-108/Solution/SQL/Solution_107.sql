SELECT BillId, PB.ItemCode, PB.CustId, BillAmount, BillDate, Quantity 
FROM PurchaseBill PB
WHERE pb.custid = (SELECT custid FROM customer c WHERE custtype = 'Privileged' AND c.CUSTID = pb.custid)
AND pb.itemcode = (SELECT itemcode FROM item i WHERE itemtype = 'FMCG' AND i.itemcode = pb.itemcode);
