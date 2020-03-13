DELETE FROM test WHERE eno=((SELECT a.eno
	FROM employee a, department b 
	WHERE a.dno=b.dno))

TRUNCATE TABLE test;

INSERT INTO test 
	(SELECT a.eno, a.ename, b.dname, a.salary, a.job, a.hiredate
	FROM employee a, department b 
	WHERE a.dno=b.dno);

SELECT a.eno, a.ename, b.dname, a.salary, a.job, a.hiredate
	FROM employee a, department b 
	WHERE a.dno=b.dno



CREATE TABLE TEST AS
	SELECT a.eno, a.ename, b.dname, a.salary, a.job, a.hiredate
	FROM employee a, department b
	WHERE 0=1;
	

CREATE TABLE TEST(
	eno number(4),
	ename VARCHAR2(10),
	dname VARCHAR2(14),
	salary NUMBER(7,2),
	job VARCHAR2(9),
	hiredate date
);

DROP TABLE 학생

ALERT TABLE patient ADD job VARCHAR2(50)

CREATE TABLE patient(
	id VARCHAR2(5) PRIMARY KEY,
	name VARCHAR2(10),
	sex VARCHAR2(1),
	phone VARCHAR2(20));

CREATE table dept20 AS 
	SELECT eno, ename, salary*12 a
	FROM employee
	WHERE dno=20;

SELECT * FROM dept_second

CREATE TABLE dept_second AS SELECT * FROM department;


CREATE TABLE dept(
	dno number(2),
	dname varchar2(14),
	loc varchar2(13));

SELECT * FROM dept;



DESC dept; <-- 여기서는 안됨
 