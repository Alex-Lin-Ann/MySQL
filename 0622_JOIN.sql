# Natural join 相同的條件幫你串起來
# inner 不會直接打
select * 
from 
	EMP e
    inner join DEPT d
		on e.DEPTNO = d.DEPTNO

# 相等連接 (Equal Join)
select 
	e.ENAME,
	d.DNAME 
from 
	EMP e
    join DEPT d
		on e.DEPTNO = d.DEPTNO;
        
# 不相等連接(Non-Equal Join)SAL_LEVEL
select * from SAL_LEVEL;

select * 
from 
	EMP e
	join SAL_LEVEL s1
		on e.SAL between s1.SAL_MIN and s1.SAL_MAX;
select * 
from 
	EMP e
    join SAL_LEVEL s1
		on e.SAL between s1.SAL_MIN and s1.SAL_MAX



# 左側連接 (LEFT JOIN) (OUTER JOIN)
# A LEFT B AND B RIGHT JOIN A 概念都一樣 RIGHT 比較不常使用
select
	e.ENAME,
    d.DNAME
from
	DEPT d
    left join EMP e
		on d.DEPTNO = e.DEPTNO;

select *
from 
	DEPT d
    left join EMP e
		on d.DEPTNO = e.DEPTNO
        
# 右側連接 (RIGHT JOIN) (OUTER JOIN)
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
		on e1.MGR = e2.EMPNO;

select e1.ENAME, e2.ENAME
from 
	EMP e1
    left join EMP e2 
		on e1.MGR = e2.EMPNO
        
