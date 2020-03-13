SELECT eno, ename, job, salary FROM employee WHERE job='SALESMAN'
ORDER BY salary

SELECT eno, ename, job, salary
FROM employee
WHERE job='CLERK'
ORDER BY salary

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL (SELECT salary FROM employee WHERE job='SALESMAN')
AND job <> 'SALESMAN';

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ALL (1000, 1600)
AND job <> 'SALESMAN';

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY (SELECT salary FROM employee WHERE job='SALESMAN')
AND job <> 'SALESMAN';

SELECT eno, ename, job, salary
FROM employee
WHERE salary < ANY (500, 1600)
AND job <> 'SALESMAN';

SELECT dno, eno, ename, salary FROM employee 
WHERE salary IN (SELECT MAX(salary) FROM EMPLOYEE GROUP BY dno);

SELECT eno, ename FROM employee 
WHERE salary IN (select min(salary) from EMPLOYEE group by dno);

전사원에 대한 평균 월급을 구하기, 평균월급보다 많이받는 사람을 검색, 이름하고 월급 찍기
SELECT ename, salary FROM employee WHERE salary > (SELECT AVG(salary) FROM employee);


킹이 소속되있는 부서랑 같은 부서사람 검색하고, 표시는 부서사람, 부서번호, 부서명
SELECT a.ename, a.dno, b.dname FROM employee a, department b
	WHERE a.dno = b.dno AND a.dno = (SELECT dno from employee WHERE ename='KING')


SELECT ename, job, salary FROM employee
	WHERE salary = (SELECT MIN(salary) FROM employee);

SELECT ename, dno FROM employee WHERE dno = 
	(SELECT dno FROM employee WHERE ename='SCOTT');

SELECT ename, salary FROM employee WHERE salary > 
	(SELECT salary FROM employee WHERE ename='SCOTT');

SELECT ename, salary FROM employee WHERE salary > 3000;

SELECT salary FROM employee WHERE ename='SCOTT';