-- 01.請啟用交易控制模式，執行以下動作..
-- 刪除除了老闆以外的所有員工之資料
-- 查詢確認是否已刪除
-- 還原
start transaction;
	savepoint p1;
	delete from EMP where ENAME != 'KING';
rollback to p1

-- 02.請開啟單一交易控制，執行以下動作..
-- 修改除了老闆以外的所有員工，獎金+1000、薪水+15%
-- 查詢確認是否已修改
-- 送交
start transaction;
update EMP set COMM = IFNULL(COMM,0) + 1000 where ENAME !='KING';
update EMP set SAL = SAL * 1.15 where ENAME != 'KING';
commit;

-- 03.今天公司空降了一位主管ERIC，員工編號: 6666，職稱: MANAGER，主管: 7839，
-- 薪資: 3500，部門編號: 50
-- 另外原本就在職的2位員工7499、7844調至部門編號50，且主管改為6666
-- 請開啟單一交易控制，將上述動作在一個交易內完成
start transaction;
	insert into EMP 
	values(6666, 'ERIC', 'MANAGER', 7839, NOW(), 3500, 0, 50);
	update EMP
	set DEPTNO = 50, MGR = 6666 
	where EMPNO in(7499, 7844);
commit;