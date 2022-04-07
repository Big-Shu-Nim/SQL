USE market_db;
SELECT * FROM member;

SHOW INDEX FROM member;


SHOW TABLE STATUS LIKE 'member';

CREATE INDEX idx_member_adr
   on member (addr);
   
   SHOW INDEX FROM member;
   
   SHOW TABLE STATUS LIKE 'member';
   
   ANALYZE TABLE member;
   SHOW TABLE STATUS LIKE 'member';
   
   CREATE UNIQUE INDEX idx_member_mem_number
      ON member (mem_member); -- 인원수가 여러명 중복, 그래서 안됨
      
   CREATE UNIQUE INDEX idx_member_mem_name
      ON member (mem_name);
      SHOW INDEX FROM member;
      
INSERT INTO member VALUES('MOO', '마마무', 2, '태국', '001', '12341234', 155,
   '2020.10.10');
   
   ANALYZE TABLE member;
   SHOW INDEX FROM member;
   
   SELECT * FROM member;