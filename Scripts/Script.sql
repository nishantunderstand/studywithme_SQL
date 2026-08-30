use sql_pratice_2026;

DELIMITER //

CREATE PROCEDURE getAllEmployee()
BEGIN
	SELECT * FROM employee2026;
END //

DELIMITER ;


CALL getAllEmployee();


SHOW PROCEDURE STATUS
WHERE Db = 'sql_pratice_2026';