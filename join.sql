-- select DEPTNO, COUNT(*)
-- from emp
-- group by DEPTNO
-- having count(*) >= 5;

select * 
-- 檢查跑板是否正確
from EMP cross join DEPT;

select * 
-- 太過理想，業界不用
from EMP natural join DEPT;

select e.*, d.* # 顯示e.的所有欄位 , SQL-92
from 
	EMP e
    join DEPT d
		on e.DEPTNO = d.DEPTNO;
        
select * # SQL 89
from 
	EMP e, DEPT d
where
	e.DEPTNO = d.DEPTNO;
