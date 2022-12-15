# limit 子句
select ENAME, SAL
from EMP
order by SAL desc
limit
	1, 3;

# 產生流水號
set @seq := 0; # 宣告變數
select
	(@seq := @seq + 1) as 名次,
    ENAME, SAL
from EMP
order by SAL desc
limit 1, 3;

# 略過一筆 ,再取3筆
select *
from EMP
order by SAL desc
limit 1, 3
	

    
