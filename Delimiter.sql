DROP PROCEDURE GetALLusers; 

DELIMITER //

create procedure getALLusers()
BEGIN 
	select id, username, firstname, lastname, 
			phone, email, isReviewer, isAdmin
		from users u;
END//
    
DELIMITER ;

CALL GetALLusers();     