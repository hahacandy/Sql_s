SELETE FROM department WHERE eno=1

UPDATE employee SET ename='b', job='b', manager=7900, hiredate=TO_DATE('2020-10-20','YYYY-MM-DD'), salary=100, commission=50 WHERE eno=1

SELECT * FROM employee WHERE eno=(SELECT manager FROM employee WHERE ename = 'a')

--smith라는 이름의 사원의 매니저번호를 검색하고, 그 번호를 가진 사람을 찾음 = 해당 사원의 매니저 이름
SELECT ename FROM employee WHERE eno=(SELECT manager FROM employee WHERE ename = 'SMITH')

--해당 이름의 사원을 검색하고, 검색된 사원의 부서번호를 참조하여 DEPARTMENT의 부서명을 가져온다
SELECT e.*, d.dname  FROM employee e, department d WHERE e.ename ='SMITH' AND e.dno=d.dno

INSERT INTO employee(ename,job,manager,hiredate,salary,commission, dno) VALUES('a','b',123,'2020-02-02',12,12,15)

SELECT e.*, d.dname FROM employee e, department d WHERE e.dno = d.dno



--조인
SELECT ENO, ENAME, E.DNO, DNAME FROM EMPLOYEE E, DEPARTMENT D 
	WHERE E.DNO = D.DNO AND E.ENO=7839;


--외래키
CREATE TABLE TEST1(
	HAK CHAR(1) NOT NULL,
	NAME VARCHAR2(20),
	SCORE NUMBER,
	TNO CHAR(1) REFERENCES TEST2,
	PRIMARY KEY(HAK)
);
CREATE TABLE TEST2(
	TNO CHAR(1) NOT NULL,
	TNAME VARCHAR2(20),
	PRIMARY KEY(TNO)
);



-- 자동증가 시퀀스, 1000부터 1만큼씩
CREATE SEQUENCE CUSTOM_SEQ_NUM <- 이거 한줄만 써도 1부터 증가함
	START WITH 1000
	INCREMENT BY 1;
-- 	MAXVALUE 999999
-- 	MINVALUE 1000
--실제로 쿼리 넣을땐 CUSTOM_SEQ_NUM.NEXTVAL해야 자동증가
INSERT INTO CUSTOM(NUM, NAME, TEL, ADDR, SEX) 
VALUES(CUSTOM_SEQ_NUM.NEXTVAL, 'DDDD', '111', 'AAA', 'M');