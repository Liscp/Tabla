DELIMITER $$
CREATE PROCEDURE lazo ( ) 
BEGIN
  DECLARE mostrador mediumint DEFAULT 0;
  
  mi_lazo: LOOP
    SET mostrador=mostrador+1;

    IF mostrador=20 THEN
      LEAVE mi_lazo;
    END IF;

    SELECT mostrador;

  END LOOP mi_lazo;
END$$
DELIMITER ;

call lazo();