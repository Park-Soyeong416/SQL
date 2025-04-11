SELECT*FROM sample71_a;
SELECT*FROM sample71_b;
SELECT*FROM sample71_a UNION SELECT*FROM sample71_b;

 SELECT a AS c FROM sample71_a UNION SELECT b AS c FROM sample71_b ORDER BY c;

 SELECT*FROM sample71_a UNION ALL SELECT*FROM sample71_b;

 SELECT*FROM sample72_x;
 SELECT*FROM sample72_y;
 SELECT*FROM sample72_x, sample72_y;

SELECT S.상품명, M.메이커명 FROM 상품2 S INNER JOIN 메이커 M ON S.메이커코드 = M.메이커코드;

SELECT S1.상품명, S2.상품명 FROM 상품 S1 INNER JOIN 상품 S2 ON S1.상품코드 = S2.상품코드;

SELECT 상품3.상품명, 재고수.재고수 FROM 상품3 INNER JOIN 재고수 ON 상품3.상품코드 = 재고수.상품코드 WHERE 상품3.상품분류 = '식료품';

SELECT 상품3.상품명, 재고수.재고수 FROM 상품3 LEFT JOIN 재고수 ON 상품3.상품코드 = 재고수.상품코드 WHERE 상품3.상품분류 = '식료품';

START TRANSACTION;
INSERT INTO 주문 VALUES(4, '2014-03-01', 1);
INSERT INTO 주문상품 VALUES(4, '0003', 1);
INSERT INTO 주문상품 VALUES(4, '0004', 2);
COMMIT;

