USE market_db;
SELECT * FROM member;

SHOW INDEX FROM member; 
SHOW TABLE STATUS;

SHOW TABLE STATUS LIKE 'member';

CREATE INDEX idx_member_addr
       ON member (addr);

SHOW INDEX FROM member;
SHOW TABLE STATUS LIKE 'member';

CREATE UNIQUE INDEX idx_member_mem_number
     ON member (mem_number);
     
CREATE UNIQUE INDEX idx_member_mem_name
    ON number (mem_name);

DROP INDEX dx_member_mem_number ON member;

SHOW INDEX FROM member;

ANALYZE TABLE member;
SHOW INDEX FROM member;

SELECT * FROM member;

SELECT mem_id, mem_name, addr FROM member;