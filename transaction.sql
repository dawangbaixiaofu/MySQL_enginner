-- mysql transaction beign; commit; rollback; rollback to savepoint;
-- 事务使用 代码实例
use test;
select count(*) from db1;
select * from db1;
begin;
insert into db1(id,num) values('2',2);
select * from db1;
savepoint point1;
insert into db1(id,num)values('3',3);
select * from db1;
rollback to point1;
select * from db1;

show variables like 'AUTOCOMMIT';
