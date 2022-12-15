-- trancate = 1. 移除資料表 2.新增資料表 所有資料會消失
-- dump 匯出
truncate table

-- alter table EMP
-- column - add,drop,amend(alter,modify,change)
-- 加入 add [column] 
alter table EMP
add column GENDER char(1) after ENAME;
modify column EMAIL varchar(100) not null default '' after ENAME
-- modify 不能修改欄位名稱

alter table EMP
change column EMAIL `E-MAIL` varchar(200)
-- change 語法

alter table EMP
alter column EMAIL set default '@'

alter table EMP
alter column EMAIL drop default;

alter table EMP
alter column HIREDATE set default
(NOW())

show engines