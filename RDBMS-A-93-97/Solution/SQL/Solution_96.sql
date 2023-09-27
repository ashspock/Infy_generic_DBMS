SELECT i.itemcode, i.descr,i.price
FROM item i, quotation q
WHERE i.itemcode = q.ITEMCODE AND q.qstatus IN ('Rejected','Closed') AND q.quotedprice IN
(
SELECT max(q1.quotedprice)FROM quotation q1 WHERE q1.qstatus IN ('Rejected','Closed') 
);


SELECT itemcode, descr, price
FROM item
WHERE price = ( 
SELECT max(price) AS maxx FROM item
WHERE price < 
(
SELECT max(price) AS maxx FROM item
)
);