19번 //검증위해 실행안할꺼임 
ALERT TABLE 가계부 DROP COLUMN 카테고리

18번
UPDATE 가계부 A SET A.카테고리ID=
(
	SELECT B.카테고리ID FROM 카테고리 B WHERE 
		(CASE A.카테고리
			WHEN '급여'
			THEN '급여'
			WHEN '식비'
			THEN '식비'
			WHEN '주거비'
			THEN '주거비'
			WHEN '수도광열비'
			THEN '공과금'
			ELSE '기타'
		END)
		=
		B.카테고리명
)

17번
ALTER TABLE 가계부 ADD(카테고리ID NUMBER)

16번
INSERT INTO 카테고리
SELECT * FROM
(SELECT DISTINCT
	CASE 카테고리
		WHEN '급여'
		THEN 1
		WHEN '식비'
		THEN 2
		WHEN '주거비'
		THEN 3
		WHEN '수도광열비'
		THEN 4
		ELSE 5
		END 카테고리ID,
	CASE 카테고리
		WHEN '급여'
		THEN '급여'
		WHEN '식비'
		THEN '식비'
		WHEN '주거비'
		THEN '주거비'
		WHEN '수도광열비'
		THEN '공과금'
		ELSE '기타'
		END 카테고리명
FROM 가계부) a ORDER BY 카테고리ID

15번
CREATE TABLE 카테고리(
	카테고리ID NUMBER,
	카테고리명 VARCHAR(20)
)



//별도
1월을 2월로 바꾸기 (REPLACE 를 쓰지않고)
SELECT SUBSTR('이번달은 1월 입니다', INSTR('이번달은 1월 입니다', '1월'), LENGTH('1월')) FROM DUAL

