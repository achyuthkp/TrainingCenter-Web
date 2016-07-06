DELIMITER $$
DROP TRIGGER IF EXISTS team_before_insert_trigger $$
CREATE TRIGGER team_before_insert_trigger
BEFORE insert ON team
FOR EACH ROW
BEGIN
	SET NEW.created_at = now();
    -- SELECT cm.person_id 
--     FROM project p 
--     JOIN class_member cm 
--     ON cm.class_id = p.class_id 
--     WHERE p.project_id = NEW.project_id AND cm.person_id = NEW.owner_id;
END $$

# The creation date is set by the system – DONE!
# The owner must belong to the class concerned by the project – DONE??

# Error Code: 1415. Not allowed to return a result set from a trigger
