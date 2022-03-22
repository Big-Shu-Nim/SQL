Use market_db;
select * from member;

-- 1 회원테이블에서 이름열만 가져와 보세요
select mem_name from member;
-- 2 회원테이블에서 다수의 열을 가져와 보세요
select * from member;
-- 3 열이름이 좀 구리네요. 바꿀수있을까요?
select addr as address, debut_date as 데뷔날짜 from member;
  #별칭을 정할때 공백없으면 quotation mark안써도 되고요 있다면 써야해요. 
  
-- 4 원하는 테이블의 원하는 열을 볼수 있지만 너무 많아요. 필터를 좀하고 싶은데 어떻게 해야할까요?
#4-1 특별히 멤버이름이 '블랙핑크'인 친구의 정보만 보고싶어요.
select * from member where mem_name='블랙핑크';
#4-2 특별히 멤버숫자가 4인 회원의 정보만 보고싶어요.
select * from member where mem_number=4;
-- 5 데이터 타입이 숫자면 범위를 지정할수 있다고 하던데요? 어떻게 하나요?
#5-1평균키가 162이하인 회원의 정보만 보고싶어요. 
select * from member where height<=162;
#5-2평균키가 165 이상 인원 6명 초과인 회원의 정보만 보고싶어요.
select * from member where height>=165 and mem_number >6;
#5-3평균키가 165 이상 이거나 인원 6명 초과인 회원의 정보만 보고싶어요.
select * from member where height>=165 or mem_number >6;
#5-4 평균키가 163-165 사이인 회원의 정보를 알고 싶어요. 
select * from member where height between 163 and 165; 
-- 6 문자 데이터는 범위 지정이 어떻게 안될까요? 
  # 예를들어 경기/전남/경남 중 한 곳에 사는 회원을 알고 싶어요. 
select * from member where addr IN('경기'or'전남'or'경남');

-- 7 이름의 첫글자가 우로 시작하는 회원의 정보를 알고싶어요. 찾아주세요.
select * from member where mem_name LIKE '우%';

-- 8 앞글자는 상관없고 뒤는 '핑크'로 끝내는 회원을 찾아주세요.
select * from member where mem_name LIKE '__핑크';

-- 9 subquery가 뭔지 맞춰보세요. 답은 10번 다음에 있어요. 

-- 10 이름이 에이핑크인 회원의 평균 키보다 큰 회원을 찾고싶어요. *여기서 평균키는 이미 그룹의 평균키로 따로 계산안해도되요.
select height from member WHERE mem_name ='에이핑크'; 
SELECT mem_name, height from member where height > 164; 
-- 10-2 # 이거 너무 귀찮아요. 
SELECT mem_name, height FROM member
where height > (select height from member WHERE mem_name ='에이핑크'); 


se