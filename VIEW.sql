create view V_EMP30
as
select * from EMP where DEPTNO = 30;

select * from V_EMP30

drop view if exists V_EMP30;

# 可安全異動的資料欄位
# 1.