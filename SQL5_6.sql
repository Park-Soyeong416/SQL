#집계함수
SELECT COUNT(*) FROM sample51;
SELECT COUNT(*) FROM sample51 WHERE name='A';
SELECT COUNT(no), COUNT(name), FROM sample51;
SELECT DISTINCT name FROM sample51;
SELECT COUNT(ALL name), COUNT(DISTINCT name) FROM sample51;
SELECT SUM(quantity) FROM sample51;
SELECT AVG(quantity), SUM(quantity)/COUNT(quantity) FROM sample51;
SELECT MIN(quantity), MAX(quantity), MIN(name), MAX(name) FROM sample51;
SELECT name FROM sample51 GROUP BY name;
SELECT name, COUNT(name), SUM(quantity) FROM sample51 GROUP BY name;
SELECT name, COUNT(name) FROM sample51 GROUP BY name HAVING COUNT(name) = 1;
SELECT name, COUNT(name), SUM(quantity) FROM sample51 GROUP BY name ORDER BY SUM(quantity) DESC;
SELECT
  (SELECT COUNT(*) FROM sample51) AS sq1,
  (SELECT COUNT(*) FROM sample54) AS sq2;
SELECT*FROM (SELECT*FROM sample54) AS sq;

UPDATE sample551 SET a='있음' WHERE
  EXISTS(SELECT*FROM sample552 WHERE no2=no);
UPDATE sample551 SET a='없음' WHERE
  NOT EXISTS(SELECT*FROM sample552 WHERE no2=no);

SELECT*FROM sample551 WHERE no IN
  (SELECT no2 FROM sample552);

CREATE TABLE sample62(
  no INTEGER NOT NULL,
  a VARCHAR(30),
  b DATE;)

TRUNCATE TABLE 테이블명

ALTER TABLE 테이블명 ADD 열 정의

ALTER TABLE 테이블명 MODIFY 열 정의

ALTER TABLE 테이블명 CHANGE [기존 열 이름] [신규 열 정의]

ALTER TABLE 테이블명 DROP 열병

#열 제약 추가
ALTER TABLE sample631 MODIFY c VARCHAR(30) NOT NULL;

#제약 삭제
#기본키 제약 삭제하기
ALTER TABLE sample631 DROP PRIMARY KEY;

#인덱스 작성
CREATE INDEX isample65 ON sample62(no);

#인덱스 삭제
DROP INDEX 인덱스명 ON 테이블명

#EXPLAIN
EXPLAIN SELECT*FROM sample62 WHERE no>10;


#뷰의 작성과 삭제
CREATE VIEW 뷰명 AS SELECT명령
DROP VIEW 뷰명

