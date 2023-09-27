SELECT q1.itemcode, i.descr, q1.qdate FROM quotation q1,item i
WHERE i.itemcode = q1.itemcode AND q1.quotedprice <
(
SELECT max(q2.quotedprice) FROM quotation q2
WHERE q2.qdate = q1.qdate AND q1.quotationid != q2.quotationid
GROUP BY q2.qdate
);

SELECT i.itemcode, i.descr, q3.qdate FROM quotation q3, item i 
WHERE i.itemcode =q3.itemcode AND q3.quotedprice IN   
(SELECT quotedprice FROM quotation q2 
WHERE q3.qdate = q2.qdate AND q2.quotedprice < 
(SELECT max(quotedprice) FROM quotation q1 
WHERE q1.qdate = q2.qdate GROUP BY qdate) );
