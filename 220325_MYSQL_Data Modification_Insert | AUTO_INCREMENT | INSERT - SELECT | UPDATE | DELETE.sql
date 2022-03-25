USE market_db;

CREATE TABLE hongong1 (toy_id INT, toy_name CHAR(4), age INT) ;
insert into hongong1 VALUES(1, '우디', 25);
INSERT INTO hongong1 (toy_id, toy_name) values(2, '버즈');	 	
INSERT INTO honggong1 (toy_name, age, toy_id) values('kim', 44, 3);


CREATE TABLE hongong2 (
toy_id INT AUTO_INCREMENT PRIMARY KEY,
toy_name CHAR(4),
age INT);

INSERT INTO hongong2 VALUES(NULL, 'k', 25);
INSERT INTO hongong2 VALUES(NULL, 's', 22);
INSERT INTO hongong2 VALUES(NULL, 'R', 21);
select* from hongong2;

SELECT last_insert_id();
ALTER TABLE hongong2 AUTO_INCREMENT=100;
INSERT INTO hongong2 VALUES(NULL, 'P', 35);
select* from hongong2;

CREATE TABLE hongong3(
toy_id INT AUTO_INCREMENT PRIMARY KEY,
toy_name CHAR(4),
age INT);
ALTER TABLE hongong3 AUTO_INCREMENT=1000;
SET @@auto_increment_increment=3;

INSERT INTO hongong3 VALUES(NULL, 'k2', 25);
INSERT INTO hongong3 VALUES(NULL, 's2', 22);
INSERT INTO hongong3 VALUES(NULL, 'R2', 21);
select*from hongong3;

select count(*) FROM sql_hr.employees;
DESC sql_hr.employees;

Select* FROM sql_hr.employees LIMIT 5;

CREATE TABLE Salary_Name(name CHAR(35), salary INT);
INSERT INTO Salary_Name
SELECT first_name, salary FROM  sql_hr.employees;
SELECT * from Salary_Name; # oh~

update Salary_Name
SET name='알라스터'
where name='Alaster';
SELECT * From Salary_Name where name= '알라스터';
SELECT * from Salary_Name; 

update Salary_Name
 Set name='노스', salary= 50000
 where name='North';
 SELECT * FROM Salary_Name where name='노스';
 
SELECT * from Salary_Name; 

DELETE FROM Salary_Name
where name LIKE 'S%'
limit 5;
