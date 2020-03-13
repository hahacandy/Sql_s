SELECT ename AS "이름", 
SUBSTR(TO_CHAR(hiredate, 'YYYY'), 3, 2) AS 입사년,
SUBSTR(TO_CHAR(TO_DATE('1991/12/15', 'YYYY/MM/DD'), 'YYYY'), 3, 2) AS 현재년도,
SUBSTR(TO_CHAR(TO_DATE('1991/12/15', 'YYYY/MM/DD'), 'YYYY'), 3, 2)-SUBSTR(TO_CHAR(hiredate, 'YYYY'), 3, 2) AS 근속년수,
salary AS 그냥월급,
	CASE
		WHEN SUBSTR(TO_CHAR(TO_DATE('1991/12/15', 'YYYY/MM/DD'), 'YYYY'), 3, 2)-SUBSTR(TO_CHAR(hiredate, 'YYYY'), 3, 2)>=10 THEN salary+1000
		WHEN SUBSTR(TO_CHAR(TO_DATE('1991/12/15', 'YYYY/MM/DD'), 'YYYY'), 3, 2)-SUBSTR(TO_CHAR(hiredate, 'YYYY'), 3, 2)>=5 THEN salary+500
	ELSE salary+100
	END AS 인상된월급
FROM employee ORDER BY 인상된월급 DESC;


SELECT ename AS 이름, 
TO_DATE('1991/12/15', 'YYYY/MM/DD')
FROM employee;

SELECT ename AS 이름, 
hiredate as 별칭,
TO_CHAR(hiredate, 'YYYY') 예시,
SUBSTR(TO_CHAR(hiredate, 'YYYY'), 3, 2) 입사년,
SUBSTR(TO_CHAR(hiredate, 'MM'), 1, 2) 입사월,
SUBSTR(TO_CHAR(hiredate, 'dd'), 1, 2) 입사일
FROM employee;





SELECT SUBSTR(hiredate, 1,2) 년도,
				SUBSTR(


SELECT ename, salary, 
	CASE
		WHEN salary>=5000 THEN '사장'
		WHEN salary>=3000 THEN '이사'
		WHEN salary>=2000 THEN '매니저'
	ELSE '사원'
	END AS CASE
FROM employee ORDER BY salary DESC;
	

SELECT ENAME, DNO,
	CASE 
		WHEN dno=10 THEN '회계'
		WHEN dno=20 THEN '총무'
		WHEN dno=30 THEN '판매'
		WHEN dno=40 THEN '관리'
	ELSE '일반'
	END AS DNAME
from employee;


SELECT ename, dno,
	DECODE(dno, 10, '회계',
		20, '총무',
		30, '판매',
		40, '관리',
		50, '일반') AS DECODE
FROM EMPLOYEE;

SELECT NVL2(manager, '매니저', '사원') FROM employee;

SELECT ename, salary, commission,
	NVL2(commission, salary*12+commission, salary*12)
FROM employee ORDER BY job;


SELECT NVL(INDATE, '1001/01/01') FROM RESERVATION

SELECT ename, salary, commission,
	NVL(commission, 0),
	salary*12+NVL(commission,0)
FROM employee ORDER BY job; 