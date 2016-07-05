DELIMITER $$
DROP TRIGGER IF EXISTS project_before_insert_trigger $$
CREATE TRIGGER project_before_insert_trigger
BEFORE insert ON project
FOR EACH ROW
BEGIN
	SET NEW.created_at = now();
    IF deadline < created_at THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT='ERROR: Deadline Date before Creation Date!!', MYSQL_ERRNO=3000;
	END IF;
    IF owner_id != (1 or 3) THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT='ERROR: Only Trainers can administer Projects!!', MYSQL_ERRNO=3001;
	END IF;
END $$