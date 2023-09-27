SELECT r.LOCATION,c.CUSTTYPE,sum(QUANTITY) totalquantity
FROM purchasebill p
LEFT JOIN item i
ON 
i.ITEMCODE=p.ITEMCODE
LEFT JOIN customer c
ON 
p.CUSTID=c.CUSTID
LEFT JOIN retailoutlet r
ON 
p.ROID=r.ROID
WHERE c.GENDER='M'
AND 
(i.ITEMTYPE='Apparels' OR i.ITEMTYPE='Computer')
GROUP BY r.LOCATION,c.CUSTTYPE;