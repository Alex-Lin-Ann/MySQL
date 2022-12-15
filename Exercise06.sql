-- 01.請列出薪資比所有SALESMAN還低的員工
select EMPNO, ENAME
from EMP
where SAL < (
			select min(SAL) 
			from EMP
			where JOB = "SALESMAN")

-- 02.請列出到職年(到職日之年)最早的兩年，那兩年到職的員工，並依到職日排序
select EMPNO, ENAME, year(HIREDATE)
from EMP
where year(HIREDATE) in (
						select year(HIREDATE) from 
							(select 
							year(HIREDATE) as yr
							from EMP 
							group by HIREDATE
							limit 2) 
						as yr)

-- 03.請列出主管的主管是KING 的員工

select ENAME, MGR
	from EMP
		where MGR in(
					select EMPNO
                    from EMP  
                    where MGR = (
								select EMPNO 
                                from EMP 
                                where ENAME = 'KING'))

-- 04.請列出部門內員工薪資有3種薪資等級之部門名稱、部門所在地
select distinct d.DNAME, d.LOC
from EMP e
    join DEPT d on e.DEPTNO = d.DEPTNO
	where (e.DEPTNO, 3) in 
	(select e.DEPTNO, count(distinct s.LEVEL)
		from EMP e
			join SAL_LEVEL s on e.SAL between s.SAL_MIN and s.SAL_MAX
				group by e.DEPTNO)


-- 05.請列出跟員工姓名最後一字元是S的員工同部門，該部門薪資最低的員工之部門名稱、姓名、 薪資
select d.DNAME, e.ENAME, e.SAL
from EMP e 
	join DEPT d
		on e.DEPTNO = d.DEPTNO
			where (e.DEPTNO, E.SAL) in (
				select e.DEPTNO, min(SAL)
				from EMP e join DEPT d
				on e.DEPTNO = d.DEPTNO
				where e.DEPTNO in(
					select distinct DEPTNO 
					from EMP 
					where ENAME like '%S')
				group by e.DEPTNO)
