SELECT e.ename,e.job FROM emp e
WHERE empno IN 
(SELECT ev.empno FROM empvehicle ev);