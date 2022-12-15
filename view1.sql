create index IDX_EMP_SAL
on EMP(SAL)

select * from EMP

drop index IDX_EMP_SAL on EMP
alter table EMP drop index IDX_EMP_SAL

