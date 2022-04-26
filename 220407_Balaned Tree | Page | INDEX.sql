USE market_db;

CREATE TABLE cluster
(mem_id CHAR(8),
 mem_name  VARCHAR(10)
 );
 
 INSERT INTO cluster VALUES('TWC', '트와이스');
 INSERT INTO cluster VALUES('BLK', '블랙핑크');
 Insert INTO cluster VALUES('WMN', '여자친구');
 Insert INTO cluster VALUES('OMY', '오마이걸');
 Insert INTO cluster VALUES('GRL', '소녀시대');
  Insert INTO cluster VALUES('ITZ', '잇지');
   Insert INTO cluster VALUES('RED', '레드벨벳');
    Insert INTO cluster VALUES('APN', '에이핑크');
 Insert INTO cluster VALUES('SPC', '우주소녀');
 INSERT INTO cluster VALUES('MMU', '마마무');
 
 SELECT * from cluster;
 
 ALTER TABLE cluster 
        ADD CONSTRAINT
        PRIMARY KEY (mem_id);
        
SELECT * FROM CLUSTER;

CREATE TABLE second
(mem_id CHAR(8),
mem_name VARCHAR(10)
);

INSERT INTO second VALUES('TWC','TWIS');
INSERT INTO second VALUES('BLK', 'BLACK');
INSERT INTO second VALUES('WMN','GRIL');
INSERT INTO second VALUES('OMY', 'FRIEND');
INSERT INTO second VALUES('GRL','GEN');
INSERT INTO second VALUES('ITZ','ITS');
INSERT INTO second VALUES('RED', 'VELVET');
INSERT INTO second VALUES('APN', 'PINK');

SELECT * from second;

ALTER TABLE second
	ADD CONSTRAINT
    UNIQUE (mem_id);
SELECT * from second; -- 순서에 변경없음


