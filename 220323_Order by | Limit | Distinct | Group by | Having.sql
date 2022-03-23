use marketdb;

select mem_id, mem_name, debut_date 
from member 
ORDER BY debut_date desc;

select mem_id, mem_name, debut_date
from member
order by debut_date desc;

select mem_id, mem_name, debut_date, height
from member
where height >= 164
ORDER BY height DESC;

select mem_id, mem_name, debut_date, height
from member
where height >= 164
order by height desc, debut_date asc;

select*
from member
limit 3;

select mem_name, debut_date
from member
order by debut_date
limit 3;

select mem_name, height
FROM member
order by height desc
limit 3, 2;

select addr From member;
select addr from member order by addr;

select distinct addr From member;

select mem_id, amount from buy order by mem_id;
select mem_id, sum(amount) from buy GROUP BY mem_id;

select mem_id '회원 아이디', Sum(amount) '총 구매 개수'
FROM buy GROUP BY mem_id;

SELECT mem_id "회원 아이디", SUM(price*amount) "TSP"
from buy GROUP BY mem_id;

select avg(amount) "AVG Puchase Count" From buy;

select mem_id, AVG(amount) "AVG Puchase Count"
FROM buy
GROUP BY mem_id;

select * from member;
select count(*) From member;
select count(phone1) "The one has digit" FRom member;

select mem_id "ID", sum(price*amount) as "TP"
FROM buy
GROUP BY mem_id;

select mem_id "ID", sum(price*amount) as "TP"
FROM buy
where sum(price*amount)  >= 1000
GROUP BY mem_id;

SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
FRom buy
group by mem_id
Having Sum(price*amount) > 1000;

SELECT mem_id "회원 아이디", SUM(price*amount) "총 구매 금액"
FRom buy
group by mem_id
Having Sum(price*amount) > 1000
ORDER BY Sum(price*amount) desc;