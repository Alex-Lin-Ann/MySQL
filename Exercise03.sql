-- 01.請列出公司一年需發出薪資總和 (不含獎金)
select sum(SAL) * 12
from EMP;

-- 02.請列出公司平均月薪
select avg(SAL) 
from EMP;

-- 03.請列出各部門編號、部門每月發出薪資總和，並依部門編號遞增排序
select DEPTNO, sum(SAL)
 
from EMP
group by DEPTNO
order by DEPTNO;

-- 04.請列出職稱、該職稱平均薪資、該職稱人數

select JOB, avg(SAL), count(JOB)
from EMP
group by JOB;

-- 05.請列出部門編號、部門最低薪資、部門最高薪資
select DEPTNO, min(SAL), max(SAL) 
from EMP
group by DEPTNO;

-- 06.請列出到職年、到職年當年人數
select 
	year(HIREDATE), count(*)
from EMP
group by year(HIREDATE)
