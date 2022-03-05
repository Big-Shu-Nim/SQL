Use market_db;
select *from member;
# 원래 테이블 전체를 가져올때 데이터베이스_이름.테이블_이름을 써야한다. 
# Use --을 씀으로써 데이터베이스입력을 생략할수 있게 되었다. 
#e.g
select * from market_db.member;
select * from member;
# 둘다 출력값은 동일하다.

# 회원테이블에서 이름열만 가져와 보세요
SELECT mem_name From member;
#회원테이블에서 다수의 열을 가져와 보세요
select addr, debut_date, mem_name
 from member;
 #열이름이 좀 구리네요. 바꿀수있을까요?
 select addr 주소, debut_date "데뷔 일자",
  mem_name from member;
  #별칭을 정할때 공백없으면 quotation mark안써도 되고요 있다면 써야해요. 
#원하는 테이블의 원하는 열을 볼수 있지만 너무 많아요. 필터를 좀하고 싶읃네 어떻게 해야할까요?
 select * from member
  where mem_name='블랙핑크';
SELECT * from member where mem_number=4;
#데이터 타입이 숫자면 범위를 지정할수 있다고 하던데요? 어떻게 하나요?
select mem_id, mem_name
from member
 where height <= 162;
select mem_name, height, mem_number
from member
where height >=165 or mem_number >6;
select mem_name, height
from member
where height between 163 and 165 ;

#문자 데이터는 범위 지정이 어떻게 안될까요? 
select mem_name, addr
from member
where addr in('경기','전남','경남');

#데뷔일짜가 뒤죽박죽이에요. 빠른순대로 착착 재고싶은데 어떻게 하면되죠?
select mem_id, mem_name, debut_date
from member
order by debut_date;
#엄 좋은데 이번에는 연도높은데서 내림차순으로 정렬하고 싶어요. 어떻게 하죠?
select mem_id, mem_name, debut_date
from member
order by debut_date DESC;
# 좋아요 그럼 이번에는 평균키가 1이상인 회원의 키를 순서대로 조회하고싶어요 어떻게하죠?
select mem_id, mem_name, debut_date, height
from member
where height >=164
order by height desc;
# 키순서대로 나오는건 좋은데어 여기서 date칼럼의 순서룰 우선시 해서 정렬할순 없나요?
select mem_id, mem_name, debut_date, height
from member
where height >=164
order by height desc, debut_date ASC;