#如何创建库
#如何创建表
#行注释
/*
块注释
table可以提示单词

*/
CREATE TABLE STUDENT2(

	username VARCHAR(32),
	age INT,
	height INT
);
#desc 描述description
DESC student;
#修改表
#1.1加入 体重字段(weight) 类型 int
ALTER TABLE student ADD weight INT;student
#1.2修改 体重字段(weight ->cardid) 类型修改成 varchar
ALTER TABLE student MODIFY weight VARCHAR(32);
#1.3修改 体重字段(weight ->cardid) 类型修改成 varchar
ALTER TABLE student CHANGE weight cardid INT;
#1.4cardid字段不要了
ALTER TABLE student DROP cardid;
#1.5 rename table 原始表名 to 新表名
RENAME TABLE student2 TO stu;
#
CREATE TABLE stu2 LIKE stu;
#查看表名
DESC stu2;
