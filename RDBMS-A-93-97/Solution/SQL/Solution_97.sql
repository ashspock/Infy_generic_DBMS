SELECT empid, empname, designation
FROM empdetails
WHERE empid IN 
(
SELECT managerid FROM retailoutlet);