부하직원이 2명이상인사람 1회차
SELECT ename FROM employee WHERE eno IN (SELECT manager FROM (SELECT manager, COUNT(manager) AS CNT FROM (SELECT * FROM employee WHERE manager IS NOT NULL) GROUP BY manager) WHERE cnt>1)
2회차
SELECT ename FROM employee WHERE eno IN (SELECT manager FROM (SELECT manager, COUNT(manager) AS CNT FROM employee WHERE manager IS NOT NULL GROUP BY manager) WHERE cnt>1)

모범답안??? 몰겟음
(SELECT manager, COUNT(manager) cnt
	FROM employee
	WHERE manager IS NOT NULL
	GROUP BY manager) 


부하직원이 없는사람
SELECT ename FROM employee WHERE eno NOT IN (SELECT manager FROM employee WHERE manager IS NOT NULL)



