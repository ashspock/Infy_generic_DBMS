SELECT DISTINCT sname, i.itemcode, descr
FROM item i, quotation q
WHERE i.itemcode = q.ITEMCODE 
AND q.quotedprice <
(SELECT max(q1.quotedprice) FROM quotation q1 
WHERE q.itemcode = q1.itemcode AND q.sname <> q1.sname);
