SELECT e1.ename FROM emp e1
WHERE e1.sal = 
(SELECT max(e2.sal) FROM emp e2);
