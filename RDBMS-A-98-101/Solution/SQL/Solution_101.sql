SELECT e1.empno, e1.ename, e1.deptno FROM emp e1,emp e2
WHERE e1.deptno  = e2.deptno AND e2.ename = 'SMITH' AND e1.ename != e2.ename
