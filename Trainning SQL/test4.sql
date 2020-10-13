-- Baitap1
DROP DATABASE IF EXISTS   Fresher ;
CREATE DATABASE   Fresher ;
USE    Fresher ;

-- Tao bang TRAINEE
CREATE TABLE  `TRAINEE`    (
Trainee_ID  					INT AUTO_INCREMENT PRIMARY KEY,
Full_Name  						VARCHAR (50) NOT NULL,
Birth_Date 						DATETIME,
Gender          				ENUM('MALE','FEMALE','UNKNOW'),
ET_IQ           				INT(50),
ET_Gmath        				INT(50) UNSIGNED,
ET_English      				INT(50),
Training_Class      			TINYINT ,
Evaluation_Notes    			VARCHAR(50) ,
VTI_Account         			VARCHAR (50) NOT NULL UNIQUE
);

-- Exercise 2
-- Tao bang Data Types
CREATE TABLE `Data Types` (
ID       					BIGINT AUTO_INCREMENT PRIMARY KEY	,		       			
`NAME` 						VARCHAR(50) ,
`CODE` 						VARCHAR (50),
ModifiedDate            	DATETIME
);

-- Tao bang Data Types2
CREATE TABLE `Data Types2` (
ID							BIGINT AUTO_INCREMENT PRIMARY KEY	,	
`NAME`						VARCHAR(50) ,
`BỉrthDate`					DATETIME,
Gender						ENUM ( 'MALE','Female','Unknown' ),
IsDeletedFlag				ENUM ('0 ONL','1 DEL')
);