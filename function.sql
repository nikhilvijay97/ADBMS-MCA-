create table employ3(eno number(4),ename varchar(14),dgn varchar(10),sal number(6),deptno number(2));
insert into employ3 values(1010,'sree',manager',50000,12);
insert into employ3 values(1011,'reema','engineer',25000,13); 
insert into employ3 values(1012,'anjana','tester',25000,14);


CREATE OR REPLACE FUNCTION fn2(n NUMBER)
RETURN NUMBER
IS
s employ3.sal%TYPE;
BEGIN
 SELECT sal INTO s
 FROM employ3
WHERE eno = n;

RETURN s * 0.10;
END;