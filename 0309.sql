
업데이트, 딜리트, 인설트

7번
UPDATE 사원 SET 부서='기획', 기본급=기본급+5 WHERE 이름='황진이'

6번
UPDATE 사원 SET 주소='퇴계동' WHERE 이름='홍길동'

5번
DELETE FROM 사원
또는
TRUNCATE TABLE 사원

4번
DELETE FROM 사원 WHERE 이름='임꺽정'

3번
INSERT INTO 편집부원(이름, 생일, 주소, 기본급) (SELECT * FROM 사원 WHERE 부서='편집')

2번
INSERT INTO 사원 VALUES('장보고', '기획', '05/03/13', '구의동', 90)

1번
INSERT INTO 사원(이름,부서) VALUES('이순신','기획')




셀렉트
SELECT * FROM employee WHERE eno IN(7369, 7499)
SELECT * FROM employee WHERE ename LIKE 'S%'
SELECT * FROM employee WHERE salary BETWEEN 100 AND 1100

10번
SELECT A.부서, A.사원수 FROM (SELECT 부서, COUNT(*) as 사원수 FROM 사원 WHERE salary >= 100 GROUP BY 부서) A WHERE A.사원수>=2


SELECT * FROM (SELECT dno, COUNT(*) as 사원수 FROM employee WHERE salary >= 100 GROUP BY dno) WHERE 사원수>=2

9번
SELECT 부서, TRUNC(AVG(기본급)) AS 기본급평균 FROM 사원 GROUP BY 부서 ORDER BY 부서

8번
SELECT * FROM 사원 WHERE 부서='기획' ORDER BY 이름

7번
SELECT * FROM 사원 WHERE 주소 IS NULL

6번
SELECT * FROM 사원 WHERE 기본급 BETWEEN 85 AND 95

5번
SELECT * FROM 사원 WHERE 이름 LIKE '김%'

4번
SELECT * FROM 사원 WHERE 부서 IN('기획', '인터넷')

3번
SELECT * FROM 사원 WHERE 부서='기획' AND 기본급>110

2번
SELECT * FROM 사원 WHERE 부서='기획'

1번
SELECT DISTINCT '부서' FROM 사원