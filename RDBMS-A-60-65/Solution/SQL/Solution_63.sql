 SELECT sname, avg(quotedprice) AS "Average quoted price" FROM quotation WHERE qstatus='Closed'  GROUP BY sname,quotedprice HAVING ((avg(quotedprice)<4500) AND (quotedprice>1000)) ;
