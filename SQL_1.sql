-- select deptno, count(*), max(SAL)
-- from EMP
-- group by DEPTNO
-- with rollup 

-- 一個中文字!= 3 byte (依文字編碼)
select length('abc中');
select char_length('abc中');

select ENAME, left(ENAME,1)
from EMP;

select curdate(), current_time(), current_timestamp(),now();

select hiredate, day(hiredate)
from emp;

select DEPTNO, COUNT(*), MAX(SAL), MIN(SAL), SUM(SAL), AVG(SAL)

from EMP
group by DEPTNO;

select DEPTNO, COUNT(*), COUNT(MGR)

from EMP
group by DEPTNO;

select DEPTNO, COUNT(distinct JOB)
from EMP
group by DEPTNO

