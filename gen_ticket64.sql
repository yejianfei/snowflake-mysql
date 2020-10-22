DELIMITER $$
CREATE FUNCTION `gen_ticket64`() RETURNS BIGINT(20)
BEGIN
    DECLARE epoch BIGINT(20);
    DECLARE current_ms BIGINT(20);
    DECLARE node INTEGER;
    DECLARE incr BIGINT(20);
    DECLARE next_id BIGINT(20);
    
    SET node = @@server_id;
    SET current_ms = round(UNIX_TIMESTAMP(CURRENT_TIMESTAMP(4)) * 1000);
    SET epoch = 1600000000000;
    
    REPLACE INTO tb_tickets (stub) VALUES ('a');
        SELECT LAST_INSERT_ID() INTO incr;

    SET next_id = (current_ms - epoch) << 22 | (node << 12) | (incr % 4096);
    UPDATE tb_tickets SET last_id = next_id WHERE id = incr;
    
RETURN next_id;
END$$
DELIMITER ;
