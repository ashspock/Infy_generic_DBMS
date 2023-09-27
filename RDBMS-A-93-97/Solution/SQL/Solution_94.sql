SELECT itemcode, itemtype, descr, category
FROM item 
WHERE price IN
(
SELECT min(quotedprice) FROM quotation WHERE qstatus = 'Rejected' 
);