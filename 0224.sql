SELECT dno, COUNT(*) AS "사람수", ROUND(AVG(salary), 2) AS "급여 평균"
FROM employee
GROUP BY dno;

SELECT job, MIN(salary) as "최저급여"
FROM employee
GROUP BY job
HAVING MIN(salary)>2000
ORDER BY "최저급여" desc;

SELECT MAX(salary)-MIN(salary) AS "DIFFERENCE"
FROM employee

SELECT COUNT(manager)
FROM employee

SELECT job, COUNT(*)
FROM employee
GROUP BY job;

SELECT job, TO_CHAR(hiredate, 'YYYY'), COUNT(*)
FROM employee
GROUP BY job, TO_CHAR(hiredate, 'YYYY')

SELECT job, MAX(salary), MIN(salary), SUM(salary), AVG(salary)
FROM employee
GROUP BY job;

SELECT TO_CHAR(hiredate, 'YYYY') AS "년도", COUNT(*)
	FROM employee 
	GROUP BY TO_CHAR(hiredate, 'YYYY')
	ORDER BY "년도";

SELECT dno, job, COUNT(*), MAX(salary), MIN(salary), AVG(salary)
	FROM employee
	GROUP BY dno, job
	ORDER BY dno;


SELECT dno AS "부서 번호", job "직업", AVG(salary) AS "평균월급"
FROM employee
GROUP BY dno, job
HAVING MAX(salary)<5000;

SELECT dno AS "부서 번호", job "직업", AVG(salary) AS "평균월급"
FROM employee
GROUP BY dno, job
ORDER BY dno;

SELECT dno AS "부서 번호", job "직업", COUNT(*) AS "인원수"
FROM employee
GROUP BY dno, job
ORDER BY dno;

SELECT dno AS "부서 번호", MAX(salary) AS "최고급여" ,MIN(salary) AS "최저 급여"
FROM employee
GROUP BY dno;


SELECT eno AS "사원 번호", COUNT(salary)
FROM employee
GROUP BY eno;

SELECT dno AS "부서 번호", AVG(salary) AS "급여 평균"
FROM employee
GROUP BY dno;

SELECT dno AS "부서 번호", COUNT(dno) AS "갯수"
FROM employee
GROUP BY dno;

SELECT count(DISTINCT job) AS "직업 종류의 개수"
FROM employee;


SELECT SUM(commission) AS "커미션 총액"
FROM employee;


SELECT SUM(salary) AS "급여총액",
	AVG(salary) AS "급여평균",
	MAX(salary) AS "최대급여",
	MIN(salary) AS "최소급여",
	COUNT(salary) AS "샐러리갯수"
FROM employee;