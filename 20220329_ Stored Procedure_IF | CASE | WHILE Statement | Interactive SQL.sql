Use market_db;
DROP PROCEDURE IF EXISTS ifproc1;
DELIMITER $$
CREATE PROCEDURE ifproc1()
BEGIN
 IF 100 = 100 THEN
  SELECT '100 equals 100.';
  END IF;
END $$
DELIMITER ;
CALL ifproc1();


DROP PROCEDURE IF EXISTS ifPRoc2;
DELIMITER $$
CREATE PROCEDURE ifPRoc2()
BEGIN
 DECLARE myNUM INT;
 SET myNUM =200;
 IF myNUM = 100 THEN
    SELECT 'True.';
 ELSE
    SELECT 'FALSE.';
END IF;
END $$
DELIMITER ;
CALL ifProc2();


DROP PROCEDURE IF EXISTS IFPROC3;
DELIMITER $$
CREATE PROCEDURE ifProc3()
BEGIN
 DECLARE debutDate DATE;
 DECLARE curDate  DATE;
 DECLARE days INT;
 SELECT debut_date INTO debutDate
  FROM market_db.member
  WHERE mem_id = 'APN';
  
SET curDATE = CURRENT_DATE();
SET days = DATEDIFF(curDATE, debutDATE);

IF (days/365) >= 5 THEN 
 SELECT CONCAT('데뷔한 지 ', days, '일이나 지났습니다. 핑순이들 축하합니다!'); 

ELSE 
    SELECT '데뷔한 지 ' +days+ '일밖에 안되었네요. 핑순이들 화이팅~';
END IF;

END $$
DELIMITER ;
CALL ifProc3(); 

ALL ifProc3();

SELECT CURRENT_DATE(), DATEDIFF('2021-12-31', '2000-1-1');

DROP PROCEDURE IF EXISTS caseProc; 
DELIMITER $$
CREATE PROCEDURE caseProc()
BEGIN
    DECLARE point INT ;
    DECLARE credit CHAR(1);
    SET point = 88 ;
    
    CASE 
        WHEN point >= 90 THEN
            SET credit = 'A';
        WHEN point >= 80 THEN
            SET credit = 'B';
        WHEN point >= 70 THEN
            SET credit = 'C';
        WHEN point >= 60 THEN
            SET credit = 'D';
        ELSE
            SET credit = 'F';
    END CASE;
    SELECT CONCAT('취득점수==>', point), CONCAT('학점==>', credit);
END $$
DELIMITER ;
CALL caseProc();

SELECT mem_id, SUM(price*amount) 'Total Sum of Purchase'
       FROM Buy
       Group BY mem_id
       ORDER BY SUM(price*amount) DESC;
       
SELECT B.mem_id, M.mem_name, SUM(price*amount) 'Total Sum of Purchase'

FROM buy B
     INNER JOIN member M
     ON B.mem_id=M.mem_id
GROUP BY B.mem_id
ORDER BY SUM(price*amount) DESC ;

SELECT M.mem_id, M.mem_name,
       SUM(price*amount) 'TSP',
       CASE
    WHEN (SUM(price*amount) >=1500) THEN '최우수고객'
    WHEN (SUM(price*amount) >=1000) THEN '우수고객'
    WHEN (SUM(price*amount) >=1) THEN '일반고객'
    ELSE '유령고객'
END "회원등급"
       FROM buy B
            RIGHT OUTER JOIN member M
            On B.mem_id = M.mem_id
	   Group BY M.mem_id
       ORDER BY SUM(price*amount) DESC;

DROP PROCEDURE IF EXISTS whileProc;
DELIMITER $$
CREATE PROCEDURE whileProc()
BEGIN
    DECLARE i INT ;
    DECLARE sum INT;
    SET i = 1;
    SET sum = 0;

while(i <=100) DO
SET sum = sum+ i;
SET i = i+1;
END WHILE;
SELECT '1부터 100까지의 합 ==>', sum;
END $$
DELIMITER ;
CALL whileProc();

DROP PROCEDURE IF EXISTS whileProc2;
DELIMITER $$
CREATE PROCEDURE whileProc2()
BEGIN
     DECLARE i INT;
     DECLARE sum INT;
     SET i = 1;
     SET sum = 0; 
     
     myWhile:
     While(i<=100)Do
     IF(i%4 =0)THEN
        SET i=i+1;
        ITERate myWhile;
	 END IF;
     SET sum= sum+i;
     IF (sum >1000) THEN
        LEAVE mywhile;
	END IF;
    SET i= i+1;
END WHILE;

SELECT '1부터 100까지의 합(4의 배수 제외), 1000넘으면 종료 ==>', sum;

END $$
DELIMITER ;
CALL whileProc2();

use market_db;
PREPARE myQuery FROM 'SELECT * FROM member WHERE mem_id = "BLK"';
EXECUTE myQuery;
DEALLOCATE PREPARE myQuery;

DROP TABLE IF EXISTS gate_table;
CREATE TABLE gate_table (id INT AUTO_INCREMENT PRIMARY KEY, entry_time DATETIME);

SET @curDate= CURRENT_TIMSTAMP();

PREPARE myQuery FROM 'INSERT INTO gate_table VALUES(NUll, ?)';
EXECUTE myQUery USING @curDate;
DEALLOCATE PREPARE myQUERY;

SELECT * FROm gate_table;