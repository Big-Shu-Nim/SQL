USE market_db;

create TABLE hongong4(
tinyint_col TINYINT,
samllint_col SMALLINT,
int_col INT,
bigint_col Bigint ) ;

Insert into hongong4 VALUES(127, 32767, 214783647, 9000000000000000000);
Insert into hongong4 VALUES(128, 32768, 2147483648, 90000000000000000000);

CREATE TABLE Member2 -- 회원 테이블
(mem_id CHAR(8) NOT NULL PRIMARY KEY,
mem_name VARCHAR(10) NOT NULL,
mem_number TINYINT  UNSIGNED NOT NULL,
addr CHAR(2) NOT NULL,
phone1 CHAR(3),
phone2 CHAR(8),
height TINYINT UNSIGNED,
debut_date DATE
);

CREATE DATABASE neflix_db;
USE netflix_db;
CREATE TABLE movie
(movie_id Int,
movie_title VARCHAR(30),
movie_director VARCHAR(20),
movie_start VARCHAR(20),
movie_script LONGTEXT,
movie_film LONGBLOB
);

USE market_db;
SET @myvar1 = 5;
SET @myvar2 = 4.24;
SELECT @myVAR1 ;
SELECT @myVAR1 +@myVAR2 ;
SET @txt = "가수 이름==>" ;
SET @height = 166 ;
SELECT @txt, mem_name FROM member WHERE height > @height; 

SET @count = 3;
SELECT mem_name, height FROM member ORDER BY height LIMIT @count;

SET @count = 3;
PREPARE mySQL FROM 'SELECT mem_name, height FROM member ORDER BY height LIMIT ?';
EXECUTE mySQL USING @conut;

select AVG(price) as 'average price' From buy;

SELECT CAST(AVG(price) as SIGNED) '평균 가격' FROM buy ;
SELECT CONVERT(AVG(price), SIGNED) '평균 가격' FROM buy; 

select CAST('2022$12$12' AS DATE);
SELECT CAST('2022/12/12' AS DATE);
SELECT CAST('2022%12%12' AS DATE);
SELECT CAST('2022@12@12' AS DATE);

SELECT num, CONCAT(CAST(price as CHAR), 'X', CAST(amount AS CHAR), '=')
'가격X수량', price*amount '구매액'
FROM buy ;

SELECT '100' + '200' ;

select CONCAT('100', '200');

SELECT CONCAT(100, '200');
SELECT 100+ '200';