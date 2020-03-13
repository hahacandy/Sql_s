14번
SELECT TO_CHAR(일자, 'MM') 월, 카테고리, AVG(수입금액) 평균수입금액, AVG(지출금액) 평균지출금액 FROM 가계부 GROUP BY TO_CHAR(일자, 'MM'), 카테고리 ORDER BY 월

13번
SELECT TO_CHAR(일자, 'YYYYMM') 월, SUM(수입금액), SUM(지출금액) FROM 가계부 GROUP BY TO_CHAR(일자, 'YYYYMM')

12번
UPDATE 가계부 SET 내용=REPLACE(내용, '1월', '2월') WHERE TO_NUMBER(TO_CHAR(일자, 'MM'))=3

11번
UPDATE 가계부 SET 내용='4월분 월세' WHERE TO_NUMBER(TO_CHAR(일자, 'MM'))=3 AND 내용='3월분 월세'

10번
UPDATE 가계부 SET 일자=일자+1 WHERE TO_NUMBER(TO_CHAR(일자, 'MM'))=3

9번
INSERT INTO 가계부 (SELECT ADD_MONTHS(일자, 1), 카테고리, 내용, 수입금액, 지출금액 FROM 가계부 WHERE TO_NUMBER(TO_CHAR(일자, 'MM'))=2)

8번
INSERT INTO 가계부 VALUES(TO_DATE('200228', 'YYMMDD'), '오락비', '영화관람', 0, 12000)

7번
INSERT INTO 가계부 VALUES(TO_DATE('200228', 'YYMMDD'), '통신비', '휴대전화 요금', 0, 28000)

6번
UPDATE 가계부 SET 내용='카페라떼 구매' WHERE 일자=TO_DATE('200203', 'YYMMDD')

5번
INSERT INTO 가계부 VALUES(TO_dATE('20200225', 'YYYYMMDD'), '주거비', '3월분 월세', NULL, 300000)

4번
SELECT * FROM 가계부 WHERE 수입금액=2500000

3번
SELECT * FROM 가계부 WHERE 지출금액>5000

2번
INSERT INTO 가계부 VALUES(TO_DATE('20200203', 'YYYYMMDD'), '식비', '커피구매', 0, 1000);
INSERT INTO 가계부 VALUES(TO_DATE('20200210', 'YYYYMMDD'), '급여', '1월 월급', 2500000, 0);
INSERT INTO 가계부 VALUES(TO_DATE('20200211', 'YYYYMMDD'), '여가/취미', '서적 구입', 0, 25000);
INSERT INTO 가계부 VALUES(TO_DATE('20200214', 'YYYYMMDD'), '취미', '동창회 회비', NULL, 50000);
INSERT INTO 가계부 VALUES(TO_DATE('20200218', 'YYYYMMDD'), '수도광열비', '1월 전기세', NULL, 12500);

1번
CREATE TABLE 가계부(
	일자 DATE,
	카테고리 VARCHAR(20),
	내용 VARCHAR(40),
	수입금액 NUMBER,
	지출금액 NUMBER
)



3번
SELECT 학번, 이름, 학과코드, 학과명 FROM 학생 FULL OUTER JOIN 학과 
	WHERE 학생.학코 = 학과=학코


2번
SELECT ename, dname FROM employee a, department b WHERE a.dno=b.dno(+)


1번
SELECT 학번, 이름, 학과코드, 학과명 FROM 학생 a, 학과 b WHERE a.학과코드 = b.학과코드 