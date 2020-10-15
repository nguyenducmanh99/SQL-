DROP DATABASE IF EXISTS TESTSQL;
CREATE DATABASE TESTSQL	;
USE TESTSQL ;
-- CAU 1

CREATE TABLE Country (
country_id  		TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
country_name		VARCHAR (50) NOT NULL 
);

CREATE TABLE Location ( 
location_id			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
street_address		VARCHAR (50) NOT NULL,
postal_code		    INT UNIQUE ,
 country_id         TINYINT UNSIGNED 
 );
 
CREATE TABLE Employee ( 
employee_id		   	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
full_name			VARCHAR(50) NOT NULL,
 email				VARCHAR(50) NOT NULL,
 location_id		TINYINT UNSIGNED
 );
 
 
 -- INSERT 
 
 INSERT INTO Country ( country_id  ,  				  country_name )
VALUE					
			         (1,		       					N'vietnam'  ),
					 (2,		       					N'han quoc' ),
                     (3,		       					N'vietnam'  );
                    
                     
 INSERT INTO  Location (  location_id,    street_address,		postal_code,   country_id)           
 VALUE 	
					(		 1,			 N'street1',			'209',			1 		),
					(		 2,			 N'street2',			'109',			2 		),
                    (		 3,			 N'street3',  			'509',			3 		);
                    
 INSERT INTO  Employee (   employee_id,    	full_name, 					email, 							location_id    )      
 VALUE 
						(   1,				N'nguyenducmanh',		 'nguyenducm@gmail.com',				1		    ),
						(   2,				N'nguyenduchung',		 'nguyenduch@gmail.com',				2			),
                        (   3,				N'nguyenduclinh',		 'nn003@gmail.com',						3	        );
                        
                        
-- Cau 2
 -- Lấy tất cả các nhân viên thuộc Việt nam
 SELECT full_name,employee_id,country_name
 FROM Location L
 JOIN Employee E ON E.location_id = L.location_id
 JOIN Country C ON C.country_id = L.country_id
 WHERE country_name =  'vietnam' ;

  -- Lấy ra tên quốc gia của employee có email là "nn03@gmail.com"
 SELECT country_name
 FROM  Employee E
 JOIN Country C  ON  E.employee_id = C. country_id 
 WHERE email = 'nn003@gmail.com' ;
 
 
 -- Thống kê mỗi country, mỗi location có bao nhiêu employee đang làm việc.
SELECT *
FROM Location L
 JOIN Employee E ON E.location_id = L.location_id
 JOIN Country C ON C.country_id = L.country_id
 GROUP BY country_name,street_address
 HAVING COUNT(employee_id) ;
 
 
-- Tạo trigger cho table Employee chỉ cho phép insert mỗi quốc gia có tối đa 10 employee
DROP TRIGGER IF EXISTS trigger_admin
DELIMITER $$
CREATE TRIGGER trigger_admin 
BEFORE INSERT ON Employee 
FOR EACH ROW
BEGIN 
IF NEW.`employee_id` <= 10 THEN 
		SIGNAL SQLSTATE '12345'
		SET MESSAGE_TEXT = 'KHONGDUOCPHEP';
		END IF ;
 END$$
 DELIMITER ;
  
  -- Hãy cấu hình table sao cho khi xóa 1 location nào đó thì tất cả employee ở location đó sẽ có location_id = null
DROP TRIGGER IF EXISTS CAUHINH
DELIMITER $$
CREATE TRIGGER CAUHINH
AFTER INSERT
ON Employee FOR EACH ROW
BEGIN
IF NEW.DELETE  THEN 
		SIGNAL SQLSTATE '12345'
		SET MESSAGE_TEXT = 'NULL';
		END IF ;
   
END$$
DELIMITER $$;
 
 
 
                        
                        
                        
                        