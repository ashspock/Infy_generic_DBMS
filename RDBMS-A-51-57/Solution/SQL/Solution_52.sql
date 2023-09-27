SELECT empid,salary,
CASE
	WHEN salary<2500 THEN 'Class 3'
	WHEN salary>=2500 AND salary<=5000 THEN 'Class 2'
	WHEN salary>5000 THEN 'Class 1'
END AS SALGRADE
FROM empdetails;