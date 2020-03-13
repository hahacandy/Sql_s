SELECT SUBSTR('우리집강아지는복실강아지',1,3),
SUBSTR('우리집강아지는복실강아지',4,4),
SUBSTR('우리집강아지는복실강아지',8,5),
CONCAT(SUBSTR('우리집강아지는복실강아지',1,3), CONCAT(' ', CONCAT(SUBSTR('우리집강아지는복실강아지',4,4), CONCAT(' ', SUBSTR('우리집강아지는복실강아지',8,5)))))
FROM dual;

-- SELECT LPAD(salary, 10, ' ') FROM employee;

-- SELECT * FROM employee WHERE INSTR(ename, 'R', 3, 1)=3;

-- SELECT INSTR('Oracle mania', 'a', 5, 2) FROM dual;

-- SELECT INSTR('Oracle mania', 'a') FROM dual;

-- SELECT SUBSTRB('오라클마니아', 3, 4) FROM dual;
-- 
-- SELECT 'Oracle mania', UPPER('Oracle mania'),
-- LOWER('Oracle mania'), INITCAP('oracle mania') 
-- FROM dual;

-- 커미션에 NULL 아닌 데이터들
-- SELECT * FROM employee WHERE COMMISSION IS NULL

-- ENAME 에서 3번째 자리가 I로 시작되는것
-- SELECT * FROM employee WHERE ename LIKE '__I%'

-- JOB에서 A로 시작하는 DATA 검색
-- SELECT * FROM employee WHERE job LIKE 'A%'

-- ENAME 에서 영문자 K가 포함된사람
-- SELECT * FROM employee WHERE ename LIKE '%K%'

-- SELECT * FROM employee WHERE hiredate BETWEEN '82-01-01' AND '85-06-31';  

-- 82 6 1 85 6 31

-- SELECT * FROM employee WHERE dno in(20,30);