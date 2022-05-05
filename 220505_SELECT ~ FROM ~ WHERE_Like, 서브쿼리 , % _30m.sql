	#사용할 데이터베이스 market_db이다.
	#market_db는  member table과 buy테이블로 구성되어있다.
	Use market_db;
    
#6 mem_number  4개 이상에 해당되는 회원의  모든열을 조회하고 싶다 어떻게 해야하는가?
    
    SELECT * from member
    WHERE mem_number>=4;
    
#7 height 162인 회원을 검색하고싶다 어떻게 해야하는가?

SELECT * FROM member
WHERE height =162;

#8 height 165 '이상' 이면서 mem_number가 6인 회원을 검색하고싶다 어떻게 해야하는가?

SELECT * FROM member
WHERE height>= 165 and mem_number=6;

#9  height 163~165인 회원을 조회하고싶다. 어떻게 해야하는가?

SELECT * FROM member
WHERE height between 163 and 165;

#10 회원들중 '경기', 경남', '전남' 이 세개지역 한곳에 사는 회원을 검색하고 싶다 어떻게 해야하는가?

SELECT * FROM member
WHERE addr IN ('경기','경남','전남'); # 조건식이 문자인경우다. 

#11 회원들 중 '우'로 시작하는 회원을 알고 싶다. 어떻게 해야하는가?

 SELECT * FROM member
 WHERE mem_name Like '우%';
    
#12 회원들 중 '핑크'로 끝내는 회원을 알고 싶다. 어떻게 해야하는가?

SELECT * FROM member
WHERE mem_name LIKE '__핑크';   

#13 회원들 중 이름이 '에이핑크'인 회원의 평균키보다 큰 회원을 검색하고싶다. 어떻게 해야하는가?

SELECT * FROM member
WHERE mem_name= '에이핑크';

SELECT * FROM member
WHERE height >= 164;

# 이작업을 수행하기 위해서 두개의 쿼리문을 썼는데 이것을 하나로 줄일 수 가 있다. 

SELECT mem_name, height FROM member
     WHERE height > (SELECT height FROM member WHERE mem_name='에이핑크');
	#이해는 되는데 잘 안써진다..
    
