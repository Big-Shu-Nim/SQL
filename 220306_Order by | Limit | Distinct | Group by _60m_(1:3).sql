use market_db;
#Request 01 I want to know -mem_id, mem_name, debut date- but it should be ordered in ascending by debut date. 
SELECT mem_id, mem_name, debut_date from member
ORDER BY debut_date; # defualt asc 

#Request 02 I want to know -mem_id, mem_name, debut date- but it should be ordered in descended by debut date.
select mem_id, mem_name, debut_date
from member
ORDER BY debut_date DESC;

#Request 03  I want to know -mem_id, mem_name, debut date- but it should be ordered in descended by height above 164

SELECT mem_id, mem_name, debut_date, height
from member
where height >= 164
order by height DESC;

#Request 04  regarding questions 03, I'd see some of them are same height. 
#In this case, I want to see the data of the group with the earliest debut date in order.
Select mem_id, mem_name, debut_date, height
from member
where height >= 164
order by height DESC, debut_date ASC;

#Request 05 I want to view all tables info of top 3 rows. 
select * from member
limit 3;
#note : you can hardly see such a request bc it has no order between datas. 

#Request 06 I want to extract and view only the 3 members with the earliest debut date from the table.
select mem_name, debut_date
from member
order by debut_date
limit 3;

#Request 07 I want to sort them in order of height, but I want to see only 2 cases from the 3rd tallest to the bottom.
select mem_name, height
from member
order by height DESC
limit 3, 2; 
#limit sets the first data to 0

#Request 08 First I want to take a look at the next query.
SELECT addr from member;
# There are repetive values. I don't want to see them. Please clear out but leave uniqe value. 
select distinct addr From member;


#Group by and Aggregate function 
SELECT mem_id, amount from buy order by mem_id;

select mem_id, sum(amount) From buy group by mem_id;

select mem_id '회원 아이디', sum(amount) '총 구매 개수'
from buy group by mem_id;

select mem_id 'id',sum(price*amount) 'Total Purchase'
from buy group by mem_id;

select avg(amount) as 'Mean of Purchas' from buy;
select mem_id, avg(amount) as 'Mean of purchases' from buy
group by mem_id;
select count(*) from member;
select count(phone1) 'phone o|x' from member;

