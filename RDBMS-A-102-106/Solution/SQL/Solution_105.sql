SELECT empid, empname, designation, salary FROM empdetails e2
WHERE e2.salary =
(
SELECT max(e1.salary) FROM empdetails e1
WHERE e1.designation = e2.designation
GROUP BY e1.designation
); 
