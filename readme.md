# 图书管理系统Oracle版（Book Management System, Created by SpringBoot framework）

## 环境介绍

| 名称      | 描述                                     |
| --------- | ---------------------------------------- |
| Java版本  | JDK 23                                 |
| IDE工具   | IntelliJ IDEA 2021.2.1(Ultimate Edition) |
| 构建工具  | Maven 3.3.9                              |
| Web服务器 | SpringBoot内嵌的Tomcat                   |
| 数据库    | Oracle11g                                |

## 改动

1.   因为Oracle中不能用user作为表名，所以我在所有表名前面加上了前缀t_

![orc1](https://github.com/huanfenz/BookManagerByOracle/assets/49386166/472cbafa-5cc9-4c4c-a4f5-42178f2ad2c2)


2.   尤其要注意，无论表名还是字段名，都不区分大小写。如果是导入的，工具可能会强行区分，然后给每个字段名都加上了双引号，非常不方便。所以最好就全部大写，然后用下划线分割。
3.   部分数据类型的长度标准不同（具体自行查阅），所以字符串类型的长度我都增加为2倍。
4.   Oracle没有Limit关键字，所以做分页就得另辟蹊径。我这里的做法是给每个结果集加上了一个rownum字段，该字段会自动加上序号，然后再用where筛选一下，如下。

```sql
select * from(
    select rownum rn, t_book_type.*
    from t_book_type
)
where rn - 1 between #{begin} and (#{begin} + #{size} - 1)
```

4.   Oracle没有主键自增的功能，需要用序列+触发器自己做一下，全部代码如下。

```sql
-- 图书信息bookid处理自增问题
create sequence seq_t_book_info
minvalue 1
maxvalue 99999999
start with 100
increment by 1
cache 50;

create or replace trigger "t_book_info_trig"
    before insert on t_book_info
    referencing old as old new as new for each row
declare
begin
    select seq_t_book_info.nextval into :new.bookid from dual;
end dept_trig;

-- 图书类型booktypeid处理自增问题
create sequence seq_t_book_type
minvalue 1
maxvalue 99999999
start with 100
increment by 1
cache 50;

create or replace trigger "t_book_type_trig"
    before insert on t_book_type
    referencing old as old new as new for each row
declare
begin
    select seq_t_book_type.nextval into :new.booktypeid from dual;
end dept_trig;

-- 借书记录borrowid处理自增问题
create sequence seq_t_borrow
minvalue 1
maxvalue 99999999
start with 100
increment by 1
cache 50;

create or replace trigger "t_borrow_trig"
    before insert on t_borrow
    referencing old as old new as new for each row
declare
begin
    select seq_t_borrow.nextval into :new.borrowid from dual;
end dept_trig;

-- 用户表userid处理自增问题
create sequence seq_t_user
minvalue 1
maxvalue 99999999
start with 100
increment by 1
cache 50;

create or replace trigger "t_user_trig"
    before insert on t_user
    referencing old as old new as new for each row
declare
begin
    select seq_t_user.nextval into :new.userid from dual;
end dept_trig;
```


管理员账号`admin`，密码`admin`

读者账号`wangpeng`，密码`123456`





