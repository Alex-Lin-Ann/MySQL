create database python_mysql_class;

use python_mysql_class;

create table DRINK
(PRODUCT_ID		char(12)	not null,
PRODUCT_NAME 	varchar(40) not null,
EXPIREDATE 		date,	
PLACEID 		char(20) 	default "TW",
PRICE 			integer 	default 0 not null,
CATALOG 		varchar(40) not null,
primary key(product_id));

desc DRINK;

start transaction;
insert into DRINK values ("DR0001", "咖啡", "2024/9/22", "BR", 100, "飲品");
insert into DRINK values ("DR0002", "紅茶", "2034/4/6", "TW", 60, "飲品");
insert into DRINK values ("DR0003", "牛奶", "2022/12/24", "NZ", 80, "飲品");
insert into DRINK values ("DR0004", "鳳梨汁", null, "TW", 70 , "飲品");
commit;

select * from DRINK;