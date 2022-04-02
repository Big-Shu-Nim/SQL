USE market_db;
CREATE VIEW v_member
as
   SELECT mem_id, mem_name, addr FROM member;
   
   
   SELECT * from v_member;
   
   
   SELECT mem_name, addr FROM v_member
   WHERE addr IN ('서울', '경기');
   
   
   -- marketdb에서 회원들이 구매한 상품을 보는 쿼리
   SELECT B.mem_id, M.mem_name, B.prod_name, M.addr,
		 CONCAT(M.phone1, M.phone2)'연락처'
         
          From buy B
               INNER JOIN member m
               ON B.mem_id = M.mem_id;
	-- I want to use it often, that would be hassle to query everytime so we make a view.
    
    CREATE VIEW v_memberbuy
    AS
    SELECT B.mem_id, M.mem_name, B.prod_name, M.addr,
		 CONCAT(M.phone1, M.phone2)'연락처'
         
          From buy B
               INNER JOIN member m
               ON B.mem_id = M.mem_id;
               
	SELECT * from v_memberbuy
    where mem_name = '블랙핑크';
    
    -- alias 띄어쓰기 허용
    USE market_db;
    AlTER VIEW v_viewtest1
    AS
       SELECT B.mem_id 'Member ID', M.mem_name AS 'Member Name',
              B.prod_name "Product Name",
                          CONCAT(M.phone1, M.phone2) AS "Office Phone"
			  FROM buy B
                  INNER JOIN member M
                  On B.mem_id=M.mem_id;
                  
 
   
  
     
    USE market_db;
    CREATE VIEW v_viewtest1
AS
    SELECT B.mem_id 'Member ID', M.mem_name AS 'Member Name', 
            B.prod_name "Product Name", 
            CONCAT(M.phone1, M.phone2) AS "Office Phone" 
       FROM buy B
         INNER JOIN member M
         ON B.mem_id = M.mem_id;
     SELECT DISTINCT 'Member ID', 'Member Name' FROM v_viewtest1;
      DROP VIEW v_viewtest1;
      
USE market_db;
CREATE OR REPLACE VIEW v_viewtest2
AS
  SELECT mem_id, mem_name, addr FROM member;
  
  DESCRIBE v_viewtest2;
  DESC member;
  
  SHOW CREATE VIEW v_viewtest2;
  
  UPDATE v_member SET addr = '부산' WHERE mem_id='BLK';
  
  INSERT INTO v_member(mem_id, mem_name, addr) VALUES('BTS', '방탄소년단', '경기');
  
  
  
  CREATE VIEW v_height157
  AS
     SELECT * FROM member WHERE height >= 167;
     
     SELECT * from v_height157;
     DELETE FROM v_height157 WHERE height < 167;
     
     INSERT INTO v_height167 VALUES('TRRA', '티아라', 6, '서울', NULL, NULL, 159, '2005-01-01');
     SELECT * from v_height157;
     
     ALTER VIEW v_height157
     AS
       SELECT * FROM member WHERE height >= 167
				WITH CHECK OPTION;
	 INSERT INTO v_height167 VALUES('TOB', '텔레토비', 4, '영국', NULL, NULL, 140, '1995-01-01');
      SELECT * from v_height157;
     
     DROP TABLE IF EXISTS buy, member;
     
     SELECT * FROM v_height167;
     
     CHECK TABLE v_height167;

     