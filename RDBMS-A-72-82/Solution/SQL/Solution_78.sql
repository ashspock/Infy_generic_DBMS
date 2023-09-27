SELECT nvl(a.EMPNAME,'No Manager') empname, d.CATEGORY, sum(c.QTYAVAILABLE) totalquantity
FROM  retailoutlet b
LEFT JOIN  retailstock c
ON b.ROID=c.ROID 
LEFT JOIN empdetails a
ON a.EMPID=b.MANAGERID
LEFT JOIN item d
ON c.ITEMCODE=d.ITEMCODE
GROUP BY
a.EMPNAME,d.CATEGORY;