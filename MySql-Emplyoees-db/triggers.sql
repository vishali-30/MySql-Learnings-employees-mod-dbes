USE employees_db;


-- trigger to hash user password while inserting a new record -- 
DELIMITER &&
CREATE TRIGGER HashPassword
BEFORE INSERT ON employees
FOR EACH ROW
BEGIN
  SET NEW.password = SHA2(NEW.password, 256);
END&&
DELIMITER ;

--  START TRANSACTION;  

-- COMMIT; 
--  SET autocommit = 0;
--  SAVEPOINT employee_insertion; 
--  ROLLBACK TO employee_insertion; 
--  
--  DELETE FROM mobile_no;  
 
 
 -- tigger to insert hire date automatically -- 
 DELIMITER &&
CREATE TRIGGER insert_hire_date 
BEFORE INSERT ON employees
 FOR EACH ROW
BEGIN
    SET NEW.hire_date = NOW();
END&&
DELIMITER ;

-- procedure to verify the user email and password using the hashed password  --
DELIMITER &&  
create procedure employee_login(IN email_ids VARCHAR(150), IN  passwords VARCHAR(100))
BEGIN   
 SELECT * FROM employees
 WHERE email_id = email_ids
  AND password = SHA2(passwords, 256);
END && 
DELIMITER ;  

-- calling the procedure -- 
call employee_login ( 'forpractice@gmail.com','thisIsAPassword');
  
