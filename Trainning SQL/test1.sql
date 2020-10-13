DROP DATABASE IF EXISTS Testing_System_Aggignment_1 ;
CREATE DATABASE Testing_System_Aggignment_1 ;
USE  Testing_System_Aggignment_1    ;

CREATE TABLE 	 Department   (    
Department_ID       INT,
Department_Name     VARCHAR(20)
);
CREATE TABLE 	 Position   (
Position_ID      	INT,
Position_Name       VARCHAR(50)
);
CREATE TABLE 		`Account`  (
ACCOUNT_ID       	INT,
EMAIL               VARCHAR(50),
Username            INT,
FullName            INT,
Department_ID       VARCHAR(50),
CreateDate          VARCHAR(50)
);

CREATE TABLE `Group` (
GroupID        		INT,	
GroupName			VARCHAR(50),
CreatorID			INT,
CREATEDATE 	        VARCHAR(50)
);

CREATE TABLE GroupAccount (
GROUP_ID            INT,
ACCOUNT_ID          INT,
JOIN_DATE           DATE
);
CREATE TABLE TypeQuestion (
TYPE_ID	       		INT,	
TYPE_NAME           VARCHAR(50)
);

CREATE TABLE CategoryQuestion (
CategoryID 			INT,
CategoryName        VARCHAR(50)
);

CREATE TABLE Question   (
QuestionID 			INT,
Content				VARCHAR(100),	
CategoryID          INT,
TypeID              INT,
CreatorID           INT,
CreateDate          DATE
);

CREATE TABLE Answer (
AnswerID          	INT,
Content             VARCHAR(100),
QuestionID          INT,	
isCorrect           VARCHAR(50)
);

CREATE TABLE  Exam  (
ExamID				INT,
`Code`              VARCHAR(100),
Title               VARCHAR(100),
CategoryID          INT,
Duration            DATE,
CreatorID           INT ,	
CreateDate          DATE
);

CREATE TABLE  EXAMQUESTION (
ExamID             INT,
QuestionID         INT
);












