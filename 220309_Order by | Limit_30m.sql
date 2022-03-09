use market_db;
select * from buy;
#Request 01 [member talbe]
#I want to know -mem_id, mem_name, debut_date- but it should be ordered in ascending by debut_date. 
select * from member;

select mem_id, mem_name, debut_date
from member
order by debut_date;

#Request 02 I want to know -mem_id, mem_name, debut_date- but it should be ordered in descended by debut_date.

select mem_id, mem_name, debut_date
from member
order by debut_date desc;

#Request 03  I want to know -mem_id, mem_name, debut_date- but it should be ordered by debut_date in descended +height above 164
select mem_id, mem_name, debut_date, height
from member
where height>=164
order by height desc;

#Request 04  regarding questions 03, I'd see some of them are same height. 
#In this case, I want to see the data of the group with the earliest debut date in order.

select mem_id, mem_name, debut_date, height
from member
where height>=164
order by height desc, debut_date asc;

#Request 05 I want to view all colums info of top 3 rows. (member)
select * from member
limit 3;

#Request6 Extract and display only 3 members with the earliest debut date. 
select * from member 
order by debut_date
limit 3;

#Request 07 Show a list of two people below the third tallest person in tallest order.
select * from member
order by debut_date desc
limit 3, 2;
