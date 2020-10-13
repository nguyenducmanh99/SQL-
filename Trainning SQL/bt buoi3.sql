-- Câu 2 --
SELECT * 
FROM Department ;


-- Câu 3 -- Lấy ra id cua phong ban Dev
SELECT Department_ID 
 FROM Department 
 WHERE Department_Name = N'Dev' ;
-- Câu 4 -- Lấy account có full name dài nhất
SELECT *
FROM `Account`
WHERE length(FullName) = (SELECT MAX(LENGTH(FullName))
						FROM `Account`);
							


-- Câu 5 Lấy ra thông tin account có full name dài nhất và thuộc phòng ban có id=3
SELECT *
FROM `Account`
WHERE length(FullName) AND ACCOUNT_ID = 3 ;

-- Cau 6 Lấy ra tên group đã tham gia trước ngày 20/12/2019
SELECT GroupName 
FROM `Group`
WHERE Creatdate ;

-- Cau 8  Lấy ra 5 group được tạo gần đây nhất
SELECT *
FROM `Group`
ORDER BY Creatdate
LIMIT 5 ;

-- Cau 9 Update thông tin của account có id = 5 thành tên "Nguyễn Bá Lộc" và email thành loc.nguyenba@vti.com.vn
UPDATE `Account`
SET     	 	
				FullName ='Nguyễn Bá Lộc',	
				EMAIL    ='loc.nguyenba@vti.com.vn'
WHERE  ACCOUNT_ID   = 5;

-- Cau 10 Viết lệnh để lấy ra danh sách nhân viên và thông tin phòng ban của họ
SELECT * 
FROM `Account`
WHERE ACCOUNT_ID AND Department_ID ;

-- Cau 11 Viết lệnh để lấy ra danh sách các phòng ban có >2 nhân viên
 SELECT * , COUNT(A.ACCOUNT_ID)
 FROM  `Account` A
 INNER JOIN Department D on A.Department_ID = D.Department_ID
 GROUP BY D.Department_ID 
 HAVING COUNT(A.ACCOUNT_ID ) >2 ;
 
-- Question 13: Viết lệnh để lấy ra danh sách câu hỏi được sử dụng trong đề thi nhiều nhất 
 SELECT * 
 FROM   EXAM E
 JOIN  Question Q ON E.CategoryID = Q.CategoryID
 GROUP BY Q.CategoryID ;
 
  -- Question 14: Thông kê mỗi category Question được sử dụng trong bao nhiêu question

SELECT *
FROM Question
HAVING COUNT(CategoryID); 

-- 
 -- Question 15:      Lấy ra Question có nhiều câu trả lời nhất

 SELECT *, COUNT(1) AS nhieunhat
 FROM Answer A1
 GROUP BY QuestionID
 HAVING   A1.AnswerID = (SELECT A2.AnswerID
						FROM  Answer A2
                        WHERE A2.AnswerID=2) ;
 
 -- Question 16 :   Tìm chức vụ có ít người nhất
SELECT*,COUNT(A.Position_ID) 
FROM `Account` A
JOIN Position P ON A.Position_ID =P.Position_ID
GROUP BY A.Position_ID
HAVING COUNT(A.Position_ID)= (SELECT MIN( So_Luong)
								FROM ( 	SELECT Position_Name,ACCOUNT_ID,COUNT(A.Position_ID) AS So_Luong
										FROM  `Account` A
										INNER JOIN Position P on A.Position_ID = P.Position_ID
										GROUP BY A.Position_ID ) AS IT_NHAT);

-- uestion 17: 		 Thống kê mỗi phòng ban có bao nhiêu dev, test, scrum master, PM
SELECT * 
FROM Department ;
	
-- 		Question 18: Lấy thông tin chi tiết của câu hỏi bao gồm: thông tin cơ bản của question, loại câu hỏi, ai là người tạo ra câu hỏi, câu trả lời là gì, …
	SELECT *
	FROM Question Q
    JOIN Answer A on Q.QuestionID = A.QuestionID ;
   
--  19: Lấy ra số lượng câu hỏi của mỗi loại tự luận hay trắc nghiệm

