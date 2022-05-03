
Use market_db;

SELECT * FROM member;

SELECT mem_name FROM member;

SELECT * FROM member;
#3 멤버테이블에 있는 복수의 열(주소, 데뷔날짜, 이름)을  보고싶다 어떻게 해야하는가?
     # 칼럼이름은 addr, debut_date, mem_name 이다. 
      
SELECT addr, debut_date, mem_name FROM member;

#4 멤버테이블에 있는 복수의 열(주소, 데뷔날짜, 이름)을  보고싶다. 그런데 debut_date 가
#영어라서 조금 거슬린다.  이 열의 이름을 '데뷔 날짜'로 볼수 없을까? 

SELECT addr, debut_date as "데뷔 일자" , mem_name FROM member;   

#5 mem_name에서  '블랙핑크'에 해당되는  회원의 모든 열을 알고싶다 어떻게 해야하는가?

SELECT * FROM member
where mem_name="블랙핑크";
