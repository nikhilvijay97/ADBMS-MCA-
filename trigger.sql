create table employ4(eno number(4),ename varchar(14),dgn varchar(10),sal number(6),deptno number(2));
insert into employ4 values(1010,'sree',manager',50000,12);
insert into employ4 values(1011,'reema','engineer',25000,13); 
insert into employ4 values(1012,'anjana','tester',25000,14);


CREATE OR REPLACE TRIGGER t12
BEFORE INSERT OR UPDATE ON employ4
FOR EACH ROW
DECLARE
ctr NUMBER;
BEGIN
SELECT COUNT(*) INTO ctr
FROM employ4
WHERE eno = :NEW.eno;

IF ctr > 0 THEN
  RAISE_APPLICATION_ERROR(-20003,'Duplication not possible');
 END IF;
END;


