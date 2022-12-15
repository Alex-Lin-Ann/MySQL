-- 列印出NEW YORK 上班的員工
# STEP1 : 找出在紐約上班的部門 , 只在意部門的編號

select DEPTNO from DEPT where LOC = "NEW YORK";

# STEP2: 找出NEW YORK 上班的員工

select * from EMP where DEPTNO = 10;
# -----------------------------------
select * 
from EMP
where DEPTNO = (select DEPTNO from DEPT where LOC = "NEW YORK");
