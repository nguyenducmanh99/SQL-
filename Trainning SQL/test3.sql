DROP DATABASE IF EXISTS Testing_System_Aggignment_3 ;
CREATE DATABASE Testing_System_Aggignment_3 ;
USE  Testing_System_Aggignment_3  ;

-- Tạo bảng 1	 Department
CREATE TABLE 	 Department   (    
Department_ID       TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Department_Name     ENUM('Dev','Test','Scrum','Master','PM')
);
									
-- Tạo bảng 2	 	 Position
CREATE TABLE 	 Position   (
Position_ID      	TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
Position_Name       VARCHAR(20) NOT NULL
);


-- Tạo bảng 3 		ACCOUNT
CREATE TABLE 	    `Account`             (
ACCOUNT_ID     		TINYINT UNSIGNED AUTO_INCREMENT  PRIMARY KEY ,
EMAIL               VARCHAR(100) NOT NULL,
Username            VARCHAR(50) NOT NULL,
FullName            VARCHAR(50) NOT NULL ,
Department_ID       TINYINT UNSIGNED,
Position_ID  		TINYINT UNSIGNED,
CreateDate          DATETIME NOT NULL DEFAULT NOW(),

FOREIGN KEY (Department_ID) REFERENCES  Department (Department_ID),
FOREIGN KEY (Position_ID) REFERENCES   Position (Position_ID )
);

-- Tạo bảng 4		 `Group`--
CREATE TABLE        `Group` (
GroupID        		TINYINT UNSIGNED PRIMARY KEY,
GroupName			VARCHAR(50) , 
CreatorID			TINYINT UNSIGNED  NOT NULL,
Creatdate 	      	 DATETIME NOT NULL DEFAULT NOW()
);

-- Tạo bảng 5		GroupAccount
CREATE TABLE GroupAccount (  
GroupID           TINYINT UNSIGNED ,
ACCOUNT_ID         TINYINT UNSIGNED,
JOINDATE           DATETIME NOT NULL DEFAULT NOW() ,
PRIMARY KEY (GROUPID, ACCOUNT_ID)
);

-- Tạo bảng 6 		TypeQuestion
CREATE TABLE        TypeQuestion (
TYPEID	       		TINYINT UNSIGNED PRIMARY KEY,
TYPENAME           VARCHAR(50)
);

-- Tạo bảng 7 		CategoryQuestion
CREATE TABLE        CategoryQuestion (
CategoryID 			TINYINT UNSIGNED PRIMARY KEY,
CategoryName        VARCHAR(50)
);

-- Tạo bảng 8        Question
CREATE TABLE        Question   (
QuestionID 			TINYINT UNSIGNED PRIMARY KEY,
Content				VARCHAR(100),	
CategoryID          TINYINT UNSIGNED,
TypeID              TINYINT UNSIGNED,
CreatorID           TINYINT UNSIGNED,
CreateDate          DATETIME  
);

-- Tạo bảng 9 		Answer
CREATE TABLE 		Answer (
AnswerID          	TINYINT UNSIGNED PRIMARY KEY,
Content             VARCHAR(100),
QuestionID          TINYINT UNSIGNED,
isCorrect          ENUM('TRUE','FALSE')
);

-- Tạo bảng 10 		Exam
CREATE TABLE         Exam  (
ExamID				TINYINT UNSIGNED PRIMARY KEY,
`Code`              VARCHAR(100),
Title               VARCHAR(100),
CategoryID          TINYINT UNSIGNED,
Duration            TINYINT UNSIGNED,
CreatorID           TINYINT UNSIGNED,
CreateDate          DATETIME NOT NULL DEFAULT NOW()
);

-- Tạo bảng 11 		 EXAMQUESTION
CREATE TABLE  		EXAMQUESTION (
ExamID              TINYINT UNSIGNED PRIMARY KEY,
QuestionID          TINYINT UNSIGNED
);


						
                            
