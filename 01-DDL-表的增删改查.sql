#往表增加一条记录
/*
语法1 insert into 表名(字段1,字段2,字段3) value(value1.value2,value3)
类型对应
位置对应
数量对应
语法2 insert into 表名 value(value1,value2,value3)
*/
INSERT INTO stu(username,age,height) VALUES ("小宝同学",20,155);
INSERT INTO stu(username,age,height) VALUES ("小王同学",200,155);
#
INSERT INTO stu VALUES("张三",23,189);
#批量插入数据
INSERT INTO stu VALUES("小白",23,167),("小明",25,187);
#删除 语法1:delete from 表名
#语法1,最好不用 慎用
#语法2:delete from 表名 where 条件(字段=value或者> < )
DELETE FROM stu WHERE username="小王同学";
#where 计算机语言翻译

#改 语法1:update 表名 set 字段=值,字段=值 
#改 语法1:update 表名 set 字段=值,字段=值 where 条件
UPDATE stu SET age=40,height=170 WHERE username="小明";
#分号在单行可以不加,也能执行,但是如果是多行,不加执行就会报错.
#数据库可以写null,
#truncate和delete区别
#只删除数据,不会重置主键自增
CREATE TABLE student3(id INT PRIMARY KEY AUTO_INCREMENT,username VARCHAR (20));
#truncate可以删除表,并且重新构建一模一样的表出来,子增从1开始
INSERT INTO student3(username) VALUES ("张三");

#蠕虫复制
CREATE TABLE new_stu LIKE stu;
#把查询出来的数据复制到new_stu表中.
INSERT INTO new_stu SELECT * FROM stu;
#查询
SELECT * FROM stu;
SELECT username ,age FROM stu;
#数据库中不区分大小写.....
#别名查询,as是关键字,可以省略
SELECT username AS 姓名,age AS 年龄 FROM stu;
#去重查询  
#select distinct 字段 from 表名
SELECT DISTINCT username FROM stu;
#两个不变,去重查询是后面所有一致的才去重.
#去重是以行为单位 去重 两条一模一样的的前提才会删除同样的数据,保留一条
SELECT DISTINCT username,age FROM stu;
SELECT username,age FROM stu;

#列计算
SELECT age+100,age, username FROM stu;
SELECT age+100,age, username ,(username+age)FROM stu;
#null值不参与计算,只要出现null参与的计算都是null

#ifnull(字段,为null的情况) 函数,在数据库中提供了大量的函数 , 方法名称
#参数1,传入的参数
#参数2,成功的返回
INSERT INTO stu(username,age) VALUES("小白",NULL);
SELECT username ,IFNULL(age,0) FROM stu;


#select 如何修改字段 from 表名 where 条件
#1.条件查询
SELECT * FROM stu WHERE age=20;
#null作为条件查询的判断不能使用= ,只能使用is 
SELECT * FROM stu WHERE age IS NULL;

#2.比较运算符 > < = >= <= != 


#3.逻辑运算符 and or not 非!

#in 匹配一组数据
SELECT * FROM stu WHERE age IN (22,23,34,35);

#4.范围
#between 语法,从头含到尾 语法规则 betweeen 最小值 and 最大值.
SELECT * FROM stu WHERE age BETWEEN 25 AND 45;

#模糊查询
#like
#%匹配很多词,可以没有
#_匹配一个词

SELECT *FROM stu WHERE username LIKE '%白%';
#名字有小且有两个字
SELECT *FROM stu WHERE username LIKE '小_'




















