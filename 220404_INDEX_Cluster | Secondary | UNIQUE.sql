Use market_db;

CREATE TABLE table1  (
   col1 INT PRIMARY KEY,
   col2 INT,
   col3 INT
   
   );
   
   
   
   SHOW INDEX FROM table1;
   

CREATE TABLE table2 (
   col1 INT PRIMARY KEY,
   col2 INT UNIQUE,
   col3 INT UNIQUE
   
   );
   SHOW INDEX FROM table2;
   
   
USE market_db;
DROP TABLE IF EXISTS buy, member;
CREATE TABLE member
(mem_name VARCHAR(10),
 mem_id  CHAR(10),
 mem_number INT,
 addr CHAR(10)
 );
 
 
 INSERT INTO member VALUES('TWC', 'TWICE', 9, 'Seoul');
 INSERT INTO member VAlUES('BLK', "BLACK", 4, "GN");
 INSERT INTO member VAlUES('WMN', "Girl", 6, 'GG');
 INSERT INTO member VAlUES('OMY', "My", 7, 'Seoul');
 
 ALTER TABLE member
     ADD CONSTRAINT
     PRIMARY KEY (mem_id);
SELECT* from member;

ALTER TABLE member DROP PRIMARY KEY;
ALTER TABLE member
   ADD CONSTRAINT
   PRIMARY KEY(mem_name);
   SELECT* from member;
   
   INSERT INTO member VALUES('GRL', "GEN", 8, "Seoul");
   SELECT* from member;
   
DROP TABLE IF EXISTS member;
CREATE TABLE member
(mem_name VARCHAR(10),
 mem_id  CHAR(10),
 mem_number INT,
 addr CHAR(10)
 );
 INSERT INTO member VALUES('TWC', 'TWICE', 9, 'Seoul');
 INSERT INTO member VAlUES('BLK', "BLACK", 4, "GN");
 INSERT INTO member VAlUES('WMN', "Girl", 6, 'GG');
 INSERT INTO member VAlUES('OMY', "My", 7, 'Seoul');
  SELECT* from member;
  
  ALTER TABLE member
     ADD CONSTRAINT
     UNIQUE (mem_id);
 SELECT* from member;
 
 ALTER TABLE member
    ADD CONSTRAINT 
    UNIQUE(mem_name);
    SELECT*FROM member;
INSERT INTO member VALUES('GRL', "GEN", 8,'Seoul');
 SELECT* from member;
   