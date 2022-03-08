Use market_db; ## use문을 먼저 선언하지 않고 한번에 excute하려다보니 2번에서 쿼리문 decode가 안되더라; 25분썻다;
SELECT mem_id, mem_name, debut_date
from member 
order by debut_date;

select mem_id, mem_name, debut_date
from member 
order by debut_date desc; 

#Request 04  I want to know --mem_id, mem_name, debut_date--but it should be ordered in descended by height above 164
SELECT mem_id, mem_name, debut_date, height
from member 
where height >= 164
order by height desc;

#Request 05  regarding questions 03, I'd see some of them are same height. 
#In this case, I want to see the data of the group with the earliest debut date in order.

SELECT mem_id, mem_name, debut_date, height
from member 
where height >= 164
order by height desc, debut_date asc; # 따로 따로 주는게 중요

#Request 05 I want to view all tables info of top 3 rows. 

select * from member 
limit 3;
#note : you can hardly see such a request bc it has no order between datas. 

#Request 06 I want to extract and view only the 3 members with the earliest debut date from the table.
select * from member
order by debut_date asc
limit 3;

select mem_name, height
from member
order by height desc
limit 3, 2;

select addr from member;

select DISTINCT addr from member;

select mem_id, amount from buy order by mem_id;

select mem_id, sum(amount) from buy group by mem_id;
select mem_id 'id', sum(amount) 'Total Purchase'
from buy group by mem_id;

select mem_id "id", sum(price*amount) "Total Purchase"
from buy group by mem_id;
select avg(amount) "Average purchase" from buy;
select mem_id, avg(amount) 'avg purchase' 
from buy
group by mem_id;
select count(*) from member;
select count(phone1) 'Contacts 0' from member;

select mem_id 'id', sum(price*amount) 'Total Purchase'
from buy
group by mem_id
having sum(price*amount) > 1000
order by sum(price*amount) desc;