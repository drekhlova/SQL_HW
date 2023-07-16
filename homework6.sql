CREATE DATABASE homework6;
USE homework6;

-- Создайте функцию, которая принимает кол-во сек и формат их в кол-во дней часов. Пример: 123456 ->'1 days 10 hours 17 minutes 36 seconds'

DROP FUNCTION times;

DELIMITER $$
CREATE FUNCTION times(seconds INT)
RETURNS VARCHAR(50)
DETERMINISTIC
BEGIN
	DECLARE days, hours, minutes INT DEFAULT 0;
	DECLARE result VARCHAR(50) DEFAULT ' ';

    SET days = seconds / 84600;
    IF days > 0 THEN
    SET result=CONCAT(result, days, ' ' , 'days');
    SET seconds = seconds % 84600;
    END IF;

    SET hours = seconds / 3600;
    IF hours > 0 THEN
	SET result=CONCAT(result, ' ', hours, ' ', 'hours');
    SET seconds = seconds % 3600;
    END IF;

    SET minutes = seconds / 60;
    IF minutes > 0 THEN
    SET result=CONCAT(result,' ', minutes, ' ', 'minutes');
    SET seconds = seconds % 60;
    END IF;

	IF seconds > 0 THEN
	SET result = CONCAT(result, ' ', seconds,' ', 'seconds');
    END IF;
    RETURN result;
END $$
DELIMITER ;

SELECT times(123456);

-- Создайте процедуру, которая выводит только четные числа от 1 до 10. Пример: 2,4,6,8,10

DROP PROCEDURE counter;

DELIMITER $$
CREATE PROCEDURE counter(n INT)
BEGIN
	DECLARE result VARCHAR(30) DEFAULT ' ';
	DECLARE n INT DEFAULT 0;
	WHILE n < 10 DO
		SET n = n + 2;
        SET result = CONCAT(result, ' ', n);
	END WHILE;
    SELECT result AS 'Четные числа от 1 до 10';
END $$
		 
CALL counter(0);