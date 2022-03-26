use market_db;
select*
from buy;

select*
from member;

select*
from buy
INNER JOIN member
ON buy.mem_id = member.mem_id
WHERE buy.mem_id = 'GRL'; 

select*
from buy
INNER JOIN member
ON buy.mem_id = member.mem_id;

SELECT mem_id, prod_name, addr, CONCAT(phone1, phone2) '연락처'
 FROM buy
  INNER JOIN member
  ON buy.mem_id = member.mem_id ; #'mem_id' in field list is ambiguous Note: it happens when two tables have the same attribute. 
  
  # The solution is to determine one column of table. 
SELECT buy.mem_id, mem_name, prod_name, addr, CONCAT(phone1, phone2)'연락처'
 FROM buy
  INNER JOIN member
  ON buy.mem_id = member.mem_id;
  
SELECT buy.mem_id, member.mem_name, buy.prod_name, member.addr, 
				CONCAT(member.phone1, member.phone2) 'CONTACT'
	FROM buy
     INNER JOIN member
     ON buy.mem_id = member.mem_id;
     
SELECT B.mem_id, M.mem_name, B.prod_name, M.addr, 
				CONCAT(M.phone1, M.phone2) 'CONTACT'
	FROM buy B
     INNER JOIN member M
     ON B.mem_id = M.mem_id;

SELECT DISTINCT M.mem_id, M.mem_name, M.addr
 FROM buy B
  INNER JOIN member M
  On B.mem_id =M.mem_id
  ORDER BY M.mem_id;


SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
 FROM member M 
 LEFT OUTER JOIN buy B
 ON M.mem_id= B.mem_id
 ORDER BY M.mem_id;

 SELECT M.mem_id, M.mem_name, B.prod_name, M.addr
 FROM buy B  
 RIGHT OUTER JOIN member M 
 ON M.mem_id= B.mem_id
 ORDER BY M.mem_id;
 
 SELECT DISTINCT M.mem_id, B.Prod_name, M.mem_name, M.addr
  FROM member M 
   LEFT OUTER JOIN buy B 
   ON M.mem_id = B.mem_id
   WHERE B.prod_name IS NULL
   ORDER BY M.mem_id;

SELECT *
 FROM buy
  CROSS JOIN member ;
  
USE market_db;
CREATE TABLE emp_talbe (emp CHAR(4), manager CHAR(4), phone VARCHAR(8));
 
 INSERT INTO emp_talbe VALUES('대표', NULL, '0000'); 
 INSERT INTO emp_talbe VALUES('영업이사', NULL, '1111'); 
 INSERT INTO emp_talbe VALUES('관리이사', NULL, '2222'); 
 INSERT INTO emp_talbe VALUES('정보이사', NULL, '3333'); 
 INSERT INTO emp_talbe VALUES('영업과장', NULL, '1111-1'); 
 INSERT INTO emp_talbe VALUES('경리부장', NULL, '2222-1'); 
 INSERT INTO emp_talbe VALUES('인사부장', NULL, '2222-2'); 
 INSERT INTO emp_talbe VALUES('개발팀장', NULL, '3333-1'); 
 INSERT INTO emp_talbe VALUES('개발주임', NULL, '3333-1'); 
 INSERT INTO emp_talbe VALUES('대표', NULL, '3333-1-'); 
 
 DROP TABLE emp_talbe;
 
CREATE TABLE emp_talbe (emp CHAR(4), manager CHAR(4), phone VARCHAR(8));
 INSERT INTO emp_talbe VALUES('대표', NULL, '0000'); 
 INSERT INTO emp_talbe VALUES('영업이사', '대표', '1111'); 
 INSERT INTO emp_talbe VALUES('관리이사', '대표', '2222'); 
 INSERT INTO emp_talbe VALUES('정보이사', '대표', '3333'); 
 INSERT INTO emp_talbe VALUES('영업과장', '영업이사', '1111-1'); 
 INSERT INTO emp_talbe VALUES('경리부장', '관리이사', '2222-1'); 
 INSERT INTO emp_talbe VALUES('인사부장', '관리이사', '2222-2'); 
 INSERT INTO emp_talbe VALUES('개발팀장', '정보이사', '3333-1'); 
 INSERT INTO emp_talbe VALUES('개발주임', '정보이사', '3333-1'); 
  DROP TABLE emp_talbe;
 
 CREATE TABLE emp_table (emp CHAR(4), manager CHAR(4), phone VARCHAR(8));
 INSERT INTO emp_table VALUES('대표', NULL, '0000'); 
 INSERT INTO emp_table VALUES('영업이사', '대표', '1111'); 
 INSERT INTO emp_table VALUES('관리이사', '대표', '2222'); 
 INSERT INTO emp_table VALUES('정보이사', '대표', '3333'); 
 INSERT INTO emp_talbe VALUES('영업과장', '영업이사', '1111-1'); 
 INSERT INTO emp_table VALUES('경리부장', '관리이사', '2222-1'); 
 INSERT INTO emp_table VALUES('인사부장', '관리이사', '2222-2'); 
 INSERT INTO emp_table VALUES('개발팀장', '정보이사', '3333-1'); 
 INSERT INTO emp_table VALUES('개발주임', '정보이사', '3333-1'); 
  
 
 
 SELECT A.emp '직원' , B.emp "직속상관", B.phone '직속상관연락처'
  FROM emp_table A
  INNER JOIN emp_table B
  ON A.manager = B.emp
  Where A.emp ='경리부장';
  
  