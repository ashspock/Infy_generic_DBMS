SELECT ro.itemcode,i.descr, roid, ro.qtyavailable
FROM retailstock ro, item i
WHERE ro.itemcode = i.itemcode
