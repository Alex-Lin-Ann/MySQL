# trigger 觸發器
#before insert / delete / update
# after insert / delete / update

#Event 事件 = # schedule 行程

# 分組排名 找出公司的的部門薪水排名
	語法
select 
	DEPTNO,
    ENAME,
    SAL,
	RANK() over(
        partition by DEPTNO
        order by SAL desc
	)
from EMP

# union vs. union all
# union = 去重複， 所以會一樣emp比數
# union all = 不去重複， 可以疊加
select * from EMP
union all
select * from EMP

-- common table expression
# 把查詢結果暫存起來
with test as (select * from EMP where DEPTNO = 30)
select * from test;
# recursive 遞迴查詢
with recursive test as (
    select 1 as n
    union all
    select n + 1 as n
    from test
    where n < 10
    # 遞迴查詢
)

select * from test

with recursive test as (
		select 1 as LEVEL, ENAME, EMPNO
		from EMP 
		where MGR is null
	union all
		select t.LEVEL + 1 as LEVEL, e.ENAME, e.EMPNO
        from 
			EMP e
            join test t
				on e.MGR = t.EMPNO
)
select * from test;