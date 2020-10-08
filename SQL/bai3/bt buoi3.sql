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
 

 

 
 
 
 
 
			