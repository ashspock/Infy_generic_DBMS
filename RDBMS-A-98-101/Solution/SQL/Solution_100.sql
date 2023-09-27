SELECT emp.empno, emp.ename FROM emp 
WHERE emp.empno IN  
(
SELECT e1.EMPNO FROM empvehicle e1,empvehicle e2
WHERE e1.vehicleid = e2.vehicleid AND e1.EMPNO != e2.EMPNO
GROUP BY e1.empno
);
