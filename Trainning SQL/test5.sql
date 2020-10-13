
-- Question 1: Tạo store để người dùng nhập vào tên phòng ban và in ra tất cả các
-- account thuộc phòng ban đó
DROP PROCEDURE IF EXISTS getAcountByInputDepartment ;
DELIMITER $$
CREATE  PROCEDURE getAcountByInputDepartment (In in_Department_Name ENUM('Dev','Test','Scrum','Master','PM')) 
BEGIN 
		SELECT A.FullName
        FROM Department D 
        JOIN `Account`A ON D.Department_ID = A.Department_ID
        WHERE D.Department_Name= in_Department_Name ;
        END $$ 
DELIMITER ;
-- CALL getAcountByInputDepartment('Dev') ;

-- Cau2: Tạo store để in ra số lượng account trong mỗi group.
DROP PROCEDURE IF EXISTS Accountnumber ;
 DELIMITER $$
CREATE  PROCEDURE Accountnumber (In in_GroupID TINYINT UNSIGNED) 
BEGIN 
 SELECT COUNT(ACCOUNT_ID),GroupID
 FROM GroupAccount
 GROUP BY GroupID;
 
 END $$ 
 DELIMITER ;
-- CALL Accountnumber ('1') ;

-- Cau 3 Tạo store để thống kê mỗi type question có bao nhiêu question được tạo trong tháng hiện tại

-- Cau 4 Tạo store để trả ra id của type question có nhiều câu hỏi nhất
DROP PROCEDURE IF EXISTS NHIEUCAUHOINHAT ;
DELIMITER $$
CREATE  PROCEDURE NHIEUCAUHOINHAT (OUT  out_ID_OF_TYPE  TINYINT UNSIGNED) 
	BEGIN 
		SELECT Q.TypeID INTO out_ID_OF_TYPE
        FROM Question Q  
        JOIN  TypeQuestion T ON T.TYPEID = Q.TYPEID 
        GROUP BY Q.TYPEID
        HAVING COUNT (Q.QuestionID) = (SELECT MAX(x)
												FROM (SELECT COUNT(Q1.QuestionID)x
												FROM Question Q1
												GROUP BY Q1.TYPEID )y);                                     
	END$$ 
DELIMITER ;
CALL NHIEUCAUHOINHAT ();

-- Cau 5 Tạo store để trả ra id của type question có nhiều câu hỏi nhất


