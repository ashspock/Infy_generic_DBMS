SELECT empid,empname,salary, 
CASE
	WHEN designation ='Administrator' THEN (salary*110)/100
	WHEN designation ='Manager' THEN (salary*105)/100
	WHEN designation ='Billing Staff' THEN (salary*120)/100
	WHEN designation ='Security' THEN (salary*125)/100
	ELSE (salary*102)/100
END AS IncreasedSalary
FROM empdetails;
	