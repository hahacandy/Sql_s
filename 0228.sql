SELECT a.ename, b.ename
	FROM employee a, employee b
	WHERE a.manager(+) = b.eno

SELECT a.ename, b.ename
	FROM employee a, employee b
	WHERE a.manager = b.eno(+)

SELECT a.ename, b.ename
	FROM employee a, employee b
	WHERE a.manager = b.eno


사람 검색 이사람 밑으로 부하직원 몇명인지
SELECT a.ename, count(b.eno)
	FROM employee a, employee b
	WHERE a.eno = b.manager
	GROUP BY a.ename

SELECT a.ename AS "사원 이름", b.ename as "직속상관 이름"
	FROM employee a, employee b
	WHERE a.manager=b.eno;

SELECT e.eno, e.ename, d.dname, dno
	FROM employee e JOIN 

SELECT e.eno, e.ename, d.dname, dno
	FROM employee e NATURAL JOIN department d
	WHERE e.eno=7788;

SELECT e.eno, e.ename, d.dname, e.dno
	FROM employee e, department d
	WHERE e.dno = d.dno
	AND e.eno=7788;

SELECT eno, ename, dname, employee.dno
	FROM employee, department
	WHERE employee.dno = department.dno
	AND eno=7788;

SELECT employee.eno, employee.ename, department.dname, employee.dno
	FROM employee, department
	WHERE employee.dno = department.dno
	AND eno=7788;

SELECT eno, ename, dname
	FROM employee, department
	WHERE employee.dno = department.dno
	AND eno=7788;

SELECT * FROM employee, department
	WHERE employee.dno = department.dno