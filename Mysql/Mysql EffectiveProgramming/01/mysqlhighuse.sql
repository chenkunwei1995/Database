--      mysql 高级应用篇
--      第六章 事物处理及锁定
--6.1.1 mysql存储引擎
--  mysql功能  1，外层  完成客户端连接 和 事前调查sql语句的内容
--             2，内层  存储引擎   接收外层的数据操作指示，完成实际数据输入输出，文件操作
--  工作模式
--  客户端《=》MYSQL（连接，对sql语句进行事前检查)
--  MYSQL（连接，对sql语句进行事前检查)<=>存储引擎（完成实际的检索，文件的操作）
--  存储引擎（完成实际的检索，文件的操作）《=》  文件（文件1，文件2，文件3....）
--P296  存储引擎（MyISAM,InnoDB,ISAM,MERGE,Falcom,MEMORY,HEAP,ARCHIVE,CSV)

-- 将要展示表使用的存储引擎
show create table customer;
alter table customer engine=MyISAM;

-- 6.2事物处理
-- 6.2.1 使用后，保证所有的处理要么成功，要么失败
-- 6.2.2 BEGIN，COMMIT，ROLLBACK
-- 声明事物处理开始 提交整个事物 回滚到事物开始的状态
/*
  (1) 首先修改存储引擎
  (2) 确认表中的数据 customer
  (3) 事物开始
  (4) 删除表customer中的全部数据
  (5) 再次确认表customer中的数据
  (6) 回滚处理
  (7) 确认表customer中的数据是否恢复
*/

alter table customer ENGINE=InnoDB;
select * from customer;
begin;
delete from customer;
rollback;
select * from customer;
-- 关闭自动提交
set autommit=0;
select @@autocommit






