DROP DATABASE IF EXISTS TEST4;
CREATE DATABASE TEST4	;
USE TEST4 ;
-- CAU 1
-- TẠO BẢNG Customer
CREATE TABLE Customer (
CustomerID   TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 `Name`      VARCHAR (50) NOT NULL ,
 Phone       VARCHAR(100)  ,
 Email       VARCHAR (50) NOT NULL ,
 Address     VARCHAR(100)  ,
 Note        VARCHAR(100)  
 ); 
 
 -- TẠO BẢNG CAR
 CREATE TABLE CAR (
 CarID    	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 Maker 		ENUM('HONDA','TOYOTA','NISSAN'),
 Model		VARCHAR (50) NOT NULL ,
 `Year`     YEAR ,
 Color		ENUM('black','white','yellow'),
 Note       VARCHAR(100) 
 );
 
  -- TẠO BẢNG CAR ORDER
  CREATE TABLE `CAR ORDER`  (
 OrderID			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 CustomerID			TINYINT UNSIGNED,
 CarID      		TINYINT UNSIGNED NOT NULL ,
 Amount 			INT DEFAULT (1),
 SalePrice  		INT NOT NULL,
 FOREIGN KEY (CarID) REFERENCES  CAR(CarID) ,
 FOREIGN KEY (CustomerID) REFERENCES Customer (CustomerID)
);
-- Cau 2 
INSERT INTO Customer ( CustomerID,		`Name` ,		Phone , 			 Email    , 					   Address ,  			Note )
VALUES
			         (1,			N'nguyenducmanh',	0358704227,			'nguyenducmanh@yahoo.com',	       'saidong',              'longbien'),
					 (2,			N'nguyenduchanh',	0358704228,			'nguyenduchanh@yahoo.com',	         'ngoclam',              'gialam'),
                     (3,			N'nguyenduchung',	0358704229,			'nguyenduchung@yahoo.com',	        'phucloi',              'hungyen'),
                     (4,			N'nguyenduclinh',	03587042210,			'nguyenduclinh@yahoo.com',	    'thachban',             'trauquy'),
                     (5,			N'nguyenducnghia',	03587042211,			'nguyenducnghia@yahoo.com',	    'cukhoi',               'longbien');
                     
  INSERT INTO  CAR (   CarID,	       Maker,			 		  Model,       	 `Year`,	 	Color,	 			Note  )
   VALUES
				   (1,				  N'HONDA',			      'RX100',			'2021',			'black',		   'daban' ),
                   (2,				  N'TOYOTA',			  'RX120',			'2012',			'white',		   'damua' ),  
                   (3,				  N'NISSAN',			  'RX1000',			'2020',			'black',		   'dabanhet'), 
                   (4,				  N'HONDA',			      'RX200',			'2019',			'yellow',		   'loi'     ), 
			       (5,				  N'HONDA',			      'RX101',			'2017',			'white',		   'da dat ');
 
 INSERT INTO `CAR ORDER` (OrderID, 		CustomerID,			CarID, 			Amount,			SalePrice )
 VALUES		
					     (1,				1,				2,					1,			'200'     ),
						 (2,				1,				1,					1,			'300'     ),
						 (4,				2,				2,					1,			'250'     ),
						 (5,				3,				3,					1,			'280'     ),
						 (3,				4,				4,					1,			'290'     );
                         
   -- Cau 2                 
SELECT Email,Address,Phone
FROM Customer C
JOIN `CAR ORDER` O ON C.CustomerID = O.CustomerID
ORDER  BY  O.Amount ASC  ;
 -- Cau 3
 -- cau 4
 -- cau 5 
 
 
 
 