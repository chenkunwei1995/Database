-- 5.2 复制表和删除表
--     1 ,表的列构造加数据的复制
--      example:
--          create table newTableName select * from oldTableName
create TABLE customerH SELECT * from customer;
--      2,复制表的列构造
--      create table newTableName like oldTableName
create table customerG like customer;
--      3,数据的复制
insert into customerG select * from customer;

insert into tb1G(no) select bang from tb1;
insert into tb1G(no) select bang from tb1;
insert into tb1G(no) select bang from tb1;

-- 5.22 表的删除
drop table customerG;
drop table if EXISTS customerG;





