SELECT RO.ROID, count(RS.ROID) AS "Number of items" FROM retailstock RS INNER JOIN retailoutlet RO ON RO.ROID=RS.ROID GROUP BY RS.ROID; 