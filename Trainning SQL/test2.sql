DROP DATABASE IF EXISTS Testing_System_Aggignment_2 ;
CREATE DATABASE Testing_System_Aggignment_2 ;
USE  Testing_System_Aggignment_2   ;

CREATE TABLE 	 Department   (    
Department_ID       TINYINT UNSIGNED PRIMARY KEY,
Department_Name     ENUM('Dev','Test','Scrum','Master','PM')
);
CREATE TABLE 	 Position   (
Position_ID      	TINYINT UNSIGNED PRIMARY KEY,
Position_Name       VARCHAR(20) NOT NULL
);
CREATE TABLE 		`Account`  (
ACCOUNT_ID       	TINYINT UNSIGNED PRIMARY KEY ,
EMAIL               VARCHAR(50),
Username            VARCHAR(50) NOT NULL ,
FullName            VARCHAR(50) NOT NULL ,
Department_ID       TINYINT UNSIGNED,
Position_ID  		TINYINT UNSIGNED,
CreateDate          DATE,
FOREIGN KEY (Department_ID) REFERENCES  Department(Department_ID)
);

CREATE TABLE `Group` (
GroupID        		TINYINT UNSIGNED PRIMARY KEY,
GroupName			VARCHAR(50), 
CreatorID			TINYINT UNSIGNED  NOT NULL,
CREATEDATE 	      	 DATE
);

CREATE TABLE GroupAccount (
GROUP_ID           TINYINT UNSIGNED PRIMARY KEY,
ACCOUNT_ID         TINYINT UNSIGNED,
JOIN_DATE           DATE
);
CREATE TABLE TypeQuestion (
TYPE_ID	       		TINYINT UNSIGNED PRIMARY KEY,
TYPE_NAME           VARCHAR(50)
);

CREATE TABLE CategoryQuestion (
CategoryID 			TINYINT UNSIGNED PRIMARY KEY,
CategoryName        VARCHAR(50)
);

CREATE TABLE Question   (
QuestionID 			TINYINT UNSIGNED PRIMARY KEY,
Content				VARCHAR(100),	
CategoryID          TINYINT UNSIGNED,
TypeID              TINYINT UNSIGNED,
CreatorID           TINYINT UNSIGNED,
CreateDate          DATE
);

CREATE TABLE Answer (
AnswerID          	TINYINT UNSIGNED PRIMARY KEY,
Content             VARCHAR(100),
QuestionID          TINYINT UNSIGNED,
isCorrect          ENUM('TRUE','FALSE')
);

CREATE TABLE  Exam  (
ExamID				TINYINT UNSIGNED PRIMARY KEY,
`Code`              VARCHAR(100),
Title               VARCHAR(100),
CategoryID         TINYINT UNSIGNED,
Duration            DATE,
CreatorID           TINYINT UNSIGNED,
CreateDate          DATE
);

CREATE TABLE  EXAMQUESTION (
ExamID            TINYINT UNSIGNED PRIMARY KEY,
QuestionID         TINYINT UNSIGNED
);












