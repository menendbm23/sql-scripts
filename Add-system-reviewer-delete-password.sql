Drop procedure AddUser;

Delimiter //

Create procedure AddUser(IN uname varchar(30), 
	IN pword varchar(30), IN fname varchar(30), 
    IN lname varchar(30))
    
Begin 
	Insert into Users (username, password, firstname, lastname,
		isReviewer, isAdmin) 
	Values (uname, pword, fname, lname, false, false);
End//

Delimiter ; 

Call AddUser('rv', 'rv', 'System', 'Reviewer'); 