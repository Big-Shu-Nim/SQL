USE market_db;
DROP PROCEDURE IF EXISTS user_proc1;
DELIMITER $$
CREATE PROCEDURE user_proc1(IN userNAME VARCHAR(10))
BEGIN
  SELECT* FROM member WHERE mem_name = userNAME;
  END $$
  DELIMITER ;
  
  
  CALL user_proc1('에이핑크');
  
  
DROP PROCEDURE IF EXISTS user_proc2;
DELIMITER $$
CREATE PROCEDURE user_proc2(
    IN userNUMBER INT,
    IN userHeight INT )
BEGIN 
 SELECT * FROM member
 WHERE mem_number > userNumber AND height > userHEIGHT;
END $$
DELIMITER ;

CALL user_proc2(6,165);


DELIMITER $$
CREATE PROCEDURE user_proc3(
      IN textVALUE CHAR(10),
      OUT outVALUE INT    )
BEGIN
 INSERT INTO noTABLE VALUES(NULL, txtVALUE);
 SELECT MAX(id) INTO outVALUE FROM noTable;
 END $$
 DELIMITER ;
 
 DESC noTABLE;
 
 
 CREATE TABLE IF NOT EXISTS noTABLE(
         id INT AUTO_INCREMENT PRIMARY KEY,
         txt CHAR(10)
);

CALL user_proc3('테스트1', @myValue);
SELECT CONCAT('입력된 ID 값 ==>', @myValue);

#이유는 모르겠지만 안뜬다;

DELIMITER $$
CREATE PROCEDURE ifelse_proc(
    IN memName VARCHAR(10)
)
BEGIN
  DECLARE debutYEAR INT;
  SELECT YEAR(debut_date) into debutYEAR FROM member
       WHERE mem_name = memNAME;
  IF(debutYear >= 2015) THEN
         SELECT'신인 가수네요. 화이팅 하세요.' AS '메시지';
  ELSE
         SELECT '고참 가수네요. 그동안 수고하셨어요.' AS '메시지';
  END IF;
END $$
DELIMITER ;

CALL ifelse_proc ('오마이걸');

DELIMITER $$
CREATE PROCEDURE while_proc()
BEGIN
     DECLARE hap INT;
     DECLARE num INT;
     SET hap =0;
     SET num = 1;
     
     WHILE(num<=100) Do
         SET hap = hap + num;
         SET num= num+1;
	END while;
    SELECT hap as '1-100 합계';
END $$
DELIMITER ;

CALL while_proc();
# declare가 뭔지 까먹었다.


DELIMITER $$
CREATE PROCEDURE dynamic_proc(
     IN tableNAME VARCHAR(20)
)
BEGIN
  SET @sqlQUERY = CONCAT('SELECT * FROM ', tableName);
  PREPARE myQuery FROm @sqlQuery;
  EXECUTE myQuery;
  DEALLOCATE PREPARE myQUery;
END $$
DELIMITER ;

CALL dynamic_proc ('member');
