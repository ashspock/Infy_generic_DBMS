SELECT DISTINCT itemcode, itemtype, descr,
category 
FROM item i 
WHERE EXISTS(SELECT 1 FROM
purchasebill p WHERE i.ITEMCODE=
p.itemcode);

SELECT DISTINCT i.itemcode, i.itemtype, i.descr, i.category
FROM item i , purchasebill pb
WHERE i.itemcode = pb.itemcode