# 相等連接 (Equal Join)
select 
	e.ENAME,
	d.DNAME 
from 
	EMP e
    join DEPT d
		on e.DEPTNO = d.DEPTNO;
        
# 不相等連接(Non-Equal Join)
select 
	e.ENAME,
    e.SAL,
    s1.LEVEL
    
from EMP e
	join SAL_LEVEL s1
		on e.SAL between s1.SAL_MIN
        and s1,SAL_MAX
# 左側連接 (LEFT JOIN)
select
	e.ENAME,
    d.DNAME
from
	DEPT d
    left join EMP e
		on d.DEPTNO = e.DEPTNO
        
# 右側連接 (RIGHT JOIN)
select
	e.ENAME,
    d.DNAME
from
	EMP e
    right join DEPT d
		on e.DEPTNO = d.DEPTNO
        
# 自我連接 (SELF JOIN)
select 
	e1.ENAME,
    e2.ENAME as MGR_NAME
from 
	EMP e1 
    left join EMP e2
		on e1.MGR = e2.EMPNO