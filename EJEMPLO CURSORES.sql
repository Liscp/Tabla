-- *EJEMPLO 1
DELIMITER ;;
CREATE PROCEDURE `micursor`()
BEGIN
DECLARE done BOOLEAN DEFAULT FALSE;
DECLARE uid integer;
DECLARE newdate integer;
DECLARE c1 cursor for SELECT id,timestamp from employers ORDER BY id ASC;
DECLARE CONTINUE HANDLER FOR SQLSTATE '02000' SET done = TRUE;
open c1;
c1_loop: LOOP
fetch c1 into uid,newdate;
        IF `done` THEN LEAVE c1_loop; END IF; 
        UPDATE calendar SET timestamp = newdate  WHERE id=uid;
END LOOP c1_loop;
CLOSE c1;
END ;;
