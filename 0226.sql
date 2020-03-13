SELECT E.ename, D.dname, E.salary, S.grade, S.losal, S.hisal
	FROM employee E, department D, salgrade S
	WHERE E.dno = D.DNO
	AND E.salary BETWEEN S.losal AND S.hisal;

SELECT ename, salary, grade
	FROM employee, salgrade
	WHERE salary BETWEEN losal AND hisal;

한사람만
SELECT A.ename, B.dname, A.job, A.salary 
	FROM employee A, department B
	WHERE A.dno = B.dno AND A.ename LIKE 'A%'
	

부서별로 해당 직무 몇명인지 + 최고연봉, 최소, 평균
SELECT B.dname, A.job, COUNT(*) 인원수, MAX(A.salary) 최고연봉, MIN(A.salary) 최소연봉, AVG(A.salary) 평균연봉
	FROM employee A, department B
	WHERE A.dno = B.dno
	GROUP BY B.dname, A.job;

부서별로 해당 직무 몇명인지
SELECT B.dname, A.job, COUNT(*)
	FROM employee A, department B
	WHERE A.dno = B.dno
	GROUP BY B.dname, A.job;

각부서별로 존재하는 직무명을 한번씩만 찍게 검색
SELECT DISTINCT B.dname, A.job
	FROM employee A, department B
	WHERE A.dno = B.dno;
	

SELECT A.ename, A.dno, B.dno, B.dname
	FROM employee A, department B
	WHERE A.dno = B.dno

SELECT * FROM employee E, department D
	WHERE E.dno = D.dno;