Use naver_db;

Drop Table IF EXISTS buy, member;
CREATE TABLE member
(mem_id CHAR(8) NOT NULL PRIMARY KEY,
 mem_name VARCHAR(10) NOT NULL,
 height TINYINT UNSIGNED NULL
 ) ;
 
 
DESCRIBE member;

Drop Table IF EXISTS buy, member;
CREATE TABLE member
(mem_id CHAR(8) NOT NULL,
 mem_name VARCHAR(10) NOT NULL,
 height TINYINT UNSIGNED NULL,
 PRIMARY KEY (mem_id)
 );
 
 Drop Table IF EXISTS buy, member;
CREATE TABLE member
(mem_id CHAR(8) NOT NULL,
 mem_name VARCHAR(10) NOT NULL,
 height TINYINT UNSIGNED NULL
 );
 ALTER TABLE member
 ADD CONSTRAINT
 PRIMARY KEY(mem_id);
 
 DESCRIBE member;
 
 
  Drop Table IF EXISTS buy, member;
CREATE TABLE member
(mem_id CHAR(8) NOT NULL,
 mem_name VARCHAR(10) NOT NULL,
 height TINYINT UNSIGNED NULL,
 CONSTRAINT PRIMARY KEY PK_member_mem_id(mem_id)
 );
 
  DESCRIBE member;
  
  Drop Table IF EXISTS buy, member;
  CREATE TABLE MEMBER
  ( mem_id CHAR(8) NOT NULL PRIMARY KEY,
    mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED NULL
    );
  CREATE TABLE buy
  ( num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  mem_id CHAR(8) NOT NULL,
  prod_name CHAR(6) NOT NULL,
  FOREIGN KEY(mem_id) REFERENCES member(mem_id)
  );
  
  
  Drop Table IF EXISTS buy, member;
  CREATE TABLE MEMBER
  ( mem_id CHAR(8) NOT NULL PRIMARY KEY,
    mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED NULL
    );
  CREATE TABLE buy
  ( num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
  user_id CHAR(8) NOT NULL,
  prod_name CHAR(6) NOT NULL,
  FOREIGN KEY(user_id) REFERENCES member(mem_id)
  );
  
  Drop Table IF EXISTS buy, member;
   
   CREATE TABLE buy
   ( num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
     mem_id  CHAR(8) NOT NULL,
     prod_name CHAR(6) NOT NULL
     );
     ALTER TABLE buy
     ADD CONSTRAINT
     FOREIGN KEY(mem_id)
     REFERENCES member(mem_id);
     
     INSERT INTO member values('BLK', "BLACK PINK", 163);
     INSERT INTO buy values(NULL, 'BLK', 'Purse');
     INSERT INTO buy values(NULL, 'BLK', "Mac");
     
     SELECT M.mem_id, M.mem_name, B.prod_name
     FROM buy B
		INNER JOIN member M
        ON B.mem_id = M.mem_id;
        
	UPDATE member SET mem_id = 'PINK' WHERE mem_id='BLK';
    DELETE FROM member WHERE mem_id ='BLK';
    
    
  DROP TABLE IF EXISTS buy;
  CREATE TABLE buy
  ( num INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    mem_id CHAR(8) NOT NULL,
    prod_name CHAR(6) NOT NULL
);
ALTER TABLE buy
    ADD CONSTRAINT
    FOREIGN KEY(mem_id) REFERENCES member(mem_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE;
    
INSERT INTO buy VALUES(NULL, 'BLK', 'Purse');
INSERT INTO buy VALUES(null, 'BLK', 'Mac');

UPDATE member SET mem_id = 'PINK' WHERE mem_id='BLK';

SELECT M.mem_id, M.mem_name, B.prod_name
FROM buy B
     INNER JOIN member M
     On B.mem_id = M.mem_id;
     
DELETE FROM member WHERE mem_id='PINK';

SELECT * FROM buy;

DROP TABLE IF EXISTS buy, member;
CREATE TABLE member
   (mem_id CHAR(8) NOT NULL PRIMARY KEY,
	mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED NULL,
    email CHAR(30) NULL UNIQUE
    );

INSERT INTO member VALUES('BLK', 'Black',163,'pink@gmail.com');
INSERT INTO member VALUES('TWC', "TWICE", 167, NULL);
INSERT INTO member VALUES('APN', 'Apink', 164, 'pink@gmail.com');

DROP TABLE IF EXISTS buy, member;
CREATE TABLE member
   (mem_id CHAR(8) NOT NULL PRIMARY KEY,
	mem_name VARCHAR(10) NOT NULL,
    height TINYINT UNSIGNED NULL CHECK(height>=100),
    phone1 CHAR(3) NULL
    );
    
INSERT INTO member VALUES('BLK', 'Black', 163, NULL);
INSERT INTO member VALUES('TWC', 'TWICE', 99, NULL);

ALTER TABLE member
      ADD CONSTRAINT
      CHECK (Phone1 IN('02', '031', '032', '054', '055', '061'));
      
INSERT INTO member VALUES('TWC', 'TWICE', 167, '02');  
INSERT INTO member VALUES('OMY', 'Omygirl', 167, '10');

DROP TABLE IF EXISTS member;
CREATE TABLE member
(mem_id CHAR(8) NOT NULL PRIMARY KEY,
 mem_name VARCHAR(10) NOT NULL,
 height TINYINT UNSIGNED NULL DEFAULT 160,
 phone1 CHAR(3) NULL
 );

ALTER TABLE member
      ALTER COLUMN phone1 SET DEFAULT '02';
      
INSERT INTO member VALUES('RED', 'velvet', 161, '054');
INSERT INTO member VALUES('SPC', 'girl', default, default);
SELECT * FROM member;



 
 