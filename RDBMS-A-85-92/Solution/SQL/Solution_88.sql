SELECT i.itemcode, i.descr, NVL(q.quotationid, 'No quotation received') AS QUOTATIONID
FROM item i LEFT JOIN quotation q
ON i.ITEMCODE = q.itemcode  
