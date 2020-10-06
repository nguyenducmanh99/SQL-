-- Bài tập 3 
-- Câu 1 
                                     -- Thêm cơ sở dữ liệu vào bảng 1 --
INSERT INTO Department (Department_Name) 
VALUES
						( N'Dev'),
						( N'Test'),
						( N'Scrum'),
						( N'Master'),
						( N'PM');

									-- Thêm cơ sở dữ liệu vào bảng 2 --
 INSERT INTO  Position (Position_ID,Position_Name)
 VALUES
						 (1,		 N'Kế toán'),
						 (2,		 N'Thu ngân'),
						 (3,		 N'Lao công'),
						 (4,		 N'Bảo vệ'),
						 (5,		 N'Trưởng phòng'),
						 (6,		 N'Leader');
								   -- Thêm cơ sở dữ liệu vào bảng 3 --
 INSERT    INTO  `Account`(ACCOUNT_ID,		EMAIL,				Username,			FullName,					Department_ID,				Position_ID,					CreateDate )
 VALUES
						('1',		  'nguyenvana@gmail.com',     N'vana',		   N'NGUYEN VAN TOAN ', 		     '1',		 		        '1',		                  NOW()),
						('2',		  'nguyenvanb@gmail.com',	  N'vanb',         N'NGUYEN THE ANH',	  		     '3',				        '4',                          now()),
					   	('3',		  'nguyenvanc@gmail.com',	  N'vanc',         N'NGUYEN DUC MANH ',	  		     '3',				        '4',                          now()),
						('4',		  'nguyenvand@gmail.com',	  N'vand',         N'NINH THI HIEN',	  		     '4',				        '3',                          now()),
						('5',		  'nguyenvane@gmail.com',	  N'vane',         N'TRAN VAN HIEN',	  		     '2',				        '2',                          now()),
						('6',		  'nguyenvanf@gmail.com',	  N'vanf',         N'NGUYEN NGOC LAN ANH',	  		 '3',				        '1',                          now()),
						('7',		  'nguyenvang@gmail.com',	  N'vang',         N'NGUYEN THE HUNG',	  		     '4',				        '6',                          now());
 
									-- Thêm cơ sở dữ liệu vào bảng 4 --
                                    
 INSERT INTO  `Group` ( GroupID ,		GroupName ,			CreatorID,		        Creatdate )
	VALUES
                      (1,                 N'Team1' ,                  1   ,            NOW()),
					  (2,				  N'Team2'	,				  2   ,            NOW()) ,
					  (3,				  N'Team3' ,   				  3   ,		       NOW()) ,
                      (4,				  N'Team4' ,   				  2   ,            NOW()) ,
                      (5,				  N'Team5' ,   				  1	  ,		       NOW()) ,
                      (6,				  N'Team6' ,   				  3   ,            NOW()) ;
									
                                    -- Thêm cơ sở dữ liệu vào bảng 5 --
                                    
INSERT INTO GroupAccount (GroupID,	       ACCOUNTID, 			   JOINDATE )
VALUES
						 (1	,					1,					NOW()),
                         (2 ,					1,					NOW()),
                         (3 ,					2,  				NOW()),
                         (4 ,					3,					NOW()),
                         (6 ,					2,					NOW()),
                         (7 ,					4,					NOW()),
                         (8 ,					4,					NOW()),
						 (5	,				    2,					NOW());
                         
									-- Thêm cơ sở dữ liệu vào bảng 6 --
                                    
INSERT INTO TypeQuestion  (TYPEID,       TYPENAME)
VALUES 
                         (1,           	N'Khó'  ),	
                         (2,			N'Dễ'   ),
						 (3,          	N'Trung bình' ),
                         (4,          	N'Nâng cao' ),	
                         (5,		   	N'Cao cấp'  );
                         
                                    -- Thêm cơ sở dữ liệu vào bảng 7 --
                                   
INSERT INTO CategoryQuestion (CategoryID,  					CategoryName)
VALUES
							 (1,                              N'Phỏng vấn' ),
							 (2,                              N'Đầu vào'   ),
                             (3,                              N'Định kỳ' ),
                             (4,         					  N'Tăng lương' ),
                             (5,                              N'Khảo sát'  );
                             
									-- Thêm cơ sở dữ liệu vào bảng 8 --
                                    
INSERT INTO  Question ( QuestionID,    Content,	   CategoryID,    TypeID,    CreatorID ,   CreateDate)
VALUES
					  (     1,         N'SQL',         		1,			1,		    1,          NOW()),
                      (     2,         N'JAVA', 			2,			2,			2,        	NOW()),
                      (     3,         N'PHP',				3,			3,			3,			NOW()),
                      (     4,         N'C++',				4,			4,			4,			NOW()),
					  (     5,         N'C#',				5,			5,			5,			NOW());
                      
								  -- Thêm cơ sở dữ liệu vào bảng 9 --
INSERT INTO   Answer ( AnswerID,    Content,   QuestionID , isCorrect)
VALUES 
					 (     1,        N'SQL',		1, 		'TRUE'  ),
                     (	   2,		 N'JAVA', 		2,      'FALSE' );
                     
								  -- Thêm cơ sở dữ liệu vào bảng 10 --
INSERT INTO  EXAM    ( ExamID,		`Code`,		  Title,		CategoryID,    Duration,	  CreatorID,	        CreateDate)
VALUES 
					(1,			   'EX_1',	      N'chào',				1,			 90,				1,				NOW()),
					(2,			   'EX_2',        N'tạm biệt',  		2,			 30,				2,				NOW()),
					(3,			   'EX_3',        N'tạm biệt 123',  	3,			 120,				2,				NOW());

 
 
 





                    
                     
                         
                         
                         
                         
                         
                         
                         
                         
 
 
