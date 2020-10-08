-- Tao View 
 -- Cau1
 CREATE VIEW `list test` AS
 SELECT 		A.ACCOUNT_ID,A.EMAIL,A.FullName
 FROM  			Department D
 JOIN		 `Account`A ON D.Department_ID = A.Department_ID
 WHERE			 D.Department_Name = 'Test' ;
 
 SELECT* 
 FROM `list test`;
 
-- Cau 2  Tạo view có chứa thông tin các account tham gia vào nhiều group nhất

DROP VIEW IF EXISTS `Account of Group` ;
CREATE VIEW `Account of Group` AS
SELECT 		GA.ACCOUNTID, COUNT(GA.ACCOUNTID),GROUP_CONCAT(G.GroupID)
FROM 		`Group` G
INNER JOIN 	GroupAccount GA ON G.GroupID = GA.GroupID 
GROUP BY  	GA.ACCOUNTID
HAVING 		COUNT(GA.ACCOUNTID) = (SELECT MAX(SO_LUONG_GROUP) as So_luong    
								FROM ( SELECT GA.ACCOUNTID, COUNT(GA.ACCOUNTID) AS SO_LUONG_GROUP
										FROM  GroupAccount GA
										JOIN `Group`G ON G.GroupID = GA.GroupID
										GROUP BY GA.ACCOUNTID) AS EMPLOYEE);
	
SELECT* 
FROM `Account of Group`;

-- Cau 3 Tạo view có chứa câu hỏi có những content quá dài (content quá 6 từ được coi là quá dài) và xóa nó đi

DROP VIEW IF EXISTS `TEN QUA DAI` ;
CREATE VIEW `TEN QUA DAI` AS
SELECT Content
FROM Question
WHERE   length(Content)  > 6 ;


-- DROP VIEW `TEN QUA DAI`
 
 -- CAU4: Tạo view có chứa danh sách các phòng ban có nhiều nhân viên nhất
 
 DROP VIEW IF EXISTS `Nhieu nhan vien` ;
 
CREATE VIEW `Nhieu nhan vien` AS 
SELECT * , COUNT(A.ACCOUNT_ID)
 FROM  `Account` A
 INNER JOIN Department D on A.Department_ID = D.Department_ID
 GROUP BY D.Department_ID 
 HAVING COUNT(A.ACCOUNT_ID ) = (SELECT MAX(SOLUONG)
								FROM ( 	SELECT COUNT(A.ACCOUNT_ID) as SOLUONG
										FROM  `Account` A
										INNER JOIN Department D on A.Department_ID = D.Department_ID
										GROUP BY D.Department_ID ) AS THONGKEACCOUNT);
 

-- Cau 5 Tạo view có chứa tất các các câu hỏi do user họ Nguyễn tạo		
 

