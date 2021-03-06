USE [Upgrowth]
GO
/****** Object:  Table [dbo].[AptitudeAnswers]    Script Date: 10-04-2019 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeAnswers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[questionid] [int] NULL,
	[options] [varchar](255) NULL,
 CONSTRAINT [PK_AptitudeAnswers] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AptitudeQuestions]    Script Date: 10-04-2019 19:51:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeQuestions](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tag] [varchar](255) NULL,
	[Skillid] [int] NULL,
	[SkillName] [varchar](255) NULL,
	[questions] [varchar](255) NULL,
	[answers] [varchar](255) NULL,
	[points] [varchar](255) NULL,
 CONSTRAINT [PK_AptitudeQuestions] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AptitudeResult]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AptitudeResult](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[userid] [int] NULL,
	[TestDate] [varchar](255) NULL,
	[SkillTag] [varchar](255) NULL,
	[TotalPoints] [varchar](255) NULL,
	[Points] [varchar](255) NULL,
 CONSTRAINT [PK_AptitudeResult] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RatingMaster]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Rating] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SkillMaster]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SkillMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[SkillTag] [varchar](255) NULL,
	[SkillName] [varchar](max) NULL,
 CONSTRAINT [PK_SkillMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserMaster]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserMaster](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](255) NULL,
	[Email] [varchar](255) NULL,
	[Password] [varchar](255) NULL,
	[Phone] [varchar](20) NULL,
	[Location] [varchar](255) NULL,
	[photo] [varchar](max) NULL,
	[Experience] [varchar](255) NULL,
	[Passion] [varchar](255) NULL,
	[Interest] [varchar](255) NULL,
	[Skill] [varchar](255) NULL,
	[JobRole] [varchar](255) NULL,
	[TenthMarks] [varchar](255) NULL,
	[TwelthMarks] [varchar](255) NULL,
	[UGMarks] [varchar](255) NULL,
	[GMarks] [varchar](255) NULL,
	[UGStream] [varchar](255) NULL,
	[GStream] [varchar](255) NULL,
	[Profession] [varchar](255) NULL,
	[OtherEducation] [varchar](255) NULL,
	[HighSchool] [varchar](255) NULL,
	[UGSchool] [varchar](255) NULL,
	[GSchool] [varchar](255) NULL,
 CONSTRAINT [PK_UserMaster] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserSkill]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserSkill](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Userid] [varchar](255) NULL,
	[Skillid] [varchar](255) NULL,
	[Skillrate] [varchar](20) NULL,
	[SkillName] [varchar](255) NULL,
 CONSTRAINT [PK_UserSkill] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[RatingMaster] ON 

INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (1, 1)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (2, 2)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (3, 3)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (4, 4)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (5, 5)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (6, 6)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (7, 7)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (8, 8)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (9, 9)
INSERT [dbo].[RatingMaster] ([id], [Rating]) VALUES (10, 10)
SET IDENTITY_INSERT [dbo].[RatingMaster] OFF
SET IDENTITY_INSERT [dbo].[SkillMaster] ON 

INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (1, N'Computer ', N'C')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (2, N'Computer ', N'C++')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (3, N'Computer ', N'Java')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (4, N'Computer ', N'Python')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (5, N'Computer ', N'Ruby')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (6, N'Computer ', N'PHP')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (7, N'Computer ', N'HTML')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (8, N'Computer ', N'SQL')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (9, N'Computer ', N'MySql')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (10, N'Computer ', N'Machine Learning')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (11, N'Computer ', N'Artificial')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (12, N'Computer ', N'Node JS')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (13, N'Computer ', N'Bootstrap')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (14, N'Computer ', N'.Net')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (15, N'Computer ', N'MongoDB')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (16, N'Computer ', N'Photoshop')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (17, N'Sports', N'Football')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (18, N'Sports', N'Throwball')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (19, N'Sports', N'Table Tennis')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (20, N'Sports', N'VolleyBall')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (21, N'Sports', N'BasketBall')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (22, N'Sports', N'Cricket')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (23, N'Sports', N'Trekking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (24, N'Sports', N'Carrom')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (25, N'Sports', N'Cards')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (26, N'Sports', N'Swimming')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (27, N'Sports', N'Chess')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (28, N'Arts', N'Drawing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (29, N'Arts', N'Painting')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (30, N'Arts', N'Designing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (31, N'Arts', N'Rangoli')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (32, N'Arts', N'BeautyParlour')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (33, N'Arts', N'Mehndi')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (34, N'Arts', N'Decoration')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (35, N'Arts', N'Creativity')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (36, N'Mechanical', N'Thermodyne')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (37, N'Mechanical', N'Energy Systems')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (38, N'Mechanical', N'Manufacturing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (39, N'Mechanical', N'Mechanical Design')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (40, N'Mechanical', N'Thermal')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (41, N'Mechanical', N'Heat Transfer')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (42, N'Mechanical', N'Air Conditioning')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (43, N'Mechanical', N'Auto Parts')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (44, N'Mechanical', N'Fluid Mechanics')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (45, N'Mechanical', N'Hydraukic Machinery')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (46, N'Civil', N'Building Technology')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (47, N'Civil', N'Land Technician')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (48, N'Civil', N'Railway Technician')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (49, N'Civil', N'Bridge Design')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (50, N'Civil', N'Material Testing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (51, N'Electrial', N'Coding')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (52, N'Electrial', N'Testing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (53, N'Electrial', N'Circuit Design')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (54, N'Electrial', N'IOT')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (55, N'Electrial', N'Networking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (56, N'Dancing', N'Ballet')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (57, N'Dancing', N'Bharatnatyam')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (58, N'Dancing', N'Kathak')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (59, N'Dancing', N'Break Dance')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (60, N'Dancing', N'Lion Dance')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (61, N'Dancing', N'Salsa')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (62, N'Dancing', N'Disco')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (63, N'Chef ', N'Baking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (64, N'Chef ', N'Catering')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (65, N'Chef ', N'Cooking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (66, N'Chef ', N'Grilling')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (67, N'Chef ', N'cake Decorating')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (68, N'Chef ', N'Pastry')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (69, N'Chef ', N'Sea Food ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (70, N'Chef ', N'Maharashtrian ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (71, N'Chef ', N'Gujrati Dishes')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (72, N'Chef ', N'Rajsthani Dishes')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (73, N'Crafting', N'Glass Crafts')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (74, N'Crafting', N'Flower')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (75, N'Crafting', N'Networking')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (76, N'Crafting', N'Needlework')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (77, N'Crafting', N'Paper Crafts')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (78, N'Crafting', N'Stone Crafts')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (79, N'Crafting', N'Furniture craft')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (80, N'Photography', N'Wildlife ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (81, N'Photography', N'Aerial')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (82, N'Photography', N'Sports')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (83, N'Photography', N'Portrait')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (84, N'Photography', N'Wedding')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (85, N'Photography', N'Fashion')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (86, N'Doctor', N'Cardiologist')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (87, N'Doctor', N'Allergist')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (88, N'Doctor', N'Dermatologists')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (89, N'Doctor', N'Gastrologists')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (90, N'Accounting', N'Tax')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (91, N'Accounting', N'Financial')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (92, N'Accounting', N'Management ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (93, N'Accounting', N'Public ')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (94, N'Accounting', N'Forensic')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (95, N'Accounting', N'Government')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (96, N'Teacher', N'Math')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (97, N'Teacher', N'Physics')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (98, N'Teacher', N'Chemistry')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (99, N'Teacher', N'Histroy')
GO
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (100, N'Teacher', N'Geography')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (101, N'Teacher', N'Sports')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (102, N'Teacher', N'Singing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (103, N'Teacher', N'Dancing')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (104, N'Teacher', N'English')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (105, N'Teacher', N'Hindi')
INSERT [dbo].[SkillMaster] ([id], [SkillTag], [SkillName]) VALUES (106, N'Teacher', N'Marathi')
SET IDENTITY_INSERT [dbo].[SkillMaster] OFF
SET IDENTITY_INSERT [dbo].[UserMaster] ON 

INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (1, N'Prakash Kumar', N'prakash@gmail.com', N'b4jbsAKbJpwnla2F7aCeUWeNtQ1HmIfw5pobOJkr7kvfA6+5CDDe+snVSdcHHKg4M76ogAv4h3VkmLEwqzTIE2QjeYssKsQ=', N'1236', N'Mumbai', NULL, N'2 Years', N'Coding', N'Photography', N'Python, Java', N'Software Developer', N'94.4', N'79.69', N'8.2', N'', N'Computer', N'', N'', N'', N'', N'Mumbai University', N'')
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (2, N'dssdfds', N'dsfdsf@g.com', N'WaA1t1TKrP3kprOPP85WMujYEKsYyRRxAaxxg90qm2+kTkA7jPya+iqsBH135GALwH4tHwhTVYerlH49CqjAz7fXtQxNmA==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (3, N'asfjop', N'jospdjf@gmail.com', N'q13Htm9Gvdinbjo4QYHHX/glRsFZeLPidNQI/I6iqTqWOdLk4nzng1Wc6bW/MY9H4QH38zJCCcyiCpsMSV86i2PburLB', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (4, N'', N'', N'4Mzg5QccStavjlstcBei9XRICnY8xEP6fGn75taMVeuR16mAUHX8bNx+gV9AD4+UNh2JYv/Qx8bvYVaK0YRqDycwNWvStg==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (5, N'', N'', N'oupeutxSDQxafRMTu57ZjnW31joT2JX0l3ONTyR2aAjTSOdXezEgDXxwDaS738narasa/+g2rx683vejJHMwVJZb3zBt9Q==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (6, N'', N'', N'mIETxPKQC2GTvVNApvfa1dAWoBk06zaWapHPJePaWkCzr4LH6qQsXc6dIoaNU//YSwfxIe4ChKtQWCJNs43Li4ZLoas=', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (7, N'', N'', N'lsx+CZJDXfL/3AExBGssmrWKeAvtaaykvawI+TBP5pXhIKx2UhN2O3AlNNAIrP23n7j5qUP/a0M1sNqfTWogT2ti+WBpkA==', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (8, N'', N'', N'o37iPR8WTHPDkwC+3qWjQ0Z9BGaAW82w7zl52wkx0L0+xR5HRWUiBkAvGVkhJ9l2etvjdFFj0RjF2wg3PJsIfjCUcCLQ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[UserMaster] ([id], [Name], [Email], [Password], [Phone], [Location], [photo], [Experience], [Passion], [Interest], [Skill], [JobRole], [TenthMarks], [TwelthMarks], [UGMarks], [GMarks], [UGStream], [GStream], [Profession], [OtherEducation], [HighSchool], [UGSchool], [GSchool]) VALUES (9, N'sf', N'sdf@gmail.com', N'WZszD64yjWqqETdHpn5oIe7UPQj38iSM9h2O0+LhQWt6ccgbisvhqFdu+rlzvQPri1dYAWd57rp+XjxerIQBbRGBOEag', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[UserMaster] OFF
SET IDENTITY_INSERT [dbo].[UserSkill] ON 

INSERT [dbo].[UserSkill] ([id], [Userid], [Skillid], [Skillrate], [SkillName]) VALUES (2, N'1', N'3', N'6', N'PHP')
INSERT [dbo].[UserSkill] ([id], [Userid], [Skillid], [Skillrate], [SkillName]) VALUES (3, N'1', N'6', N'1', N'Cooking')
INSERT [dbo].[UserSkill] ([id], [Userid], [Skillid], [Skillrate], [SkillName]) VALUES (4, N'1', N'5', N'5', N'Designing')
INSERT [dbo].[UserSkill] ([id], [Userid], [Skillid], [Skillrate], [SkillName]) VALUES (5, N'1', N'10', N'2', N'SQL')
SET IDENTITY_INSERT [dbo].[UserSkill] OFF
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Phone]  DEFAULT (NULL) FOR [Phone]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_City]  DEFAULT (NULL) FOR [Location]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_photo]  DEFAULT (NULL) FOR [photo]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Experience]  DEFAULT (NULL) FOR [Experience]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Passion]  DEFAULT (NULL) FOR [Passion]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Interest]  DEFAULT (NULL) FOR [Interest]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Skill]  DEFAULT (NULL) FOR [Skill]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_JobRole]  DEFAULT (NULL) FOR [JobRole]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_TenthMarks]  DEFAULT (NULL) FOR [TenthMarks]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_TwelthMarks]  DEFAULT (NULL) FOR [TwelthMarks]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_UGMarks]  DEFAULT (NULL) FOR [UGMarks]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_PGMarks]  DEFAULT (NULL) FOR [GMarks]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_UGStream]  DEFAULT (NULL) FOR [UGStream]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_PGStream]  DEFAULT (NULL) FOR [GStream]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_Profession]  DEFAULT (NULL) FOR [Profession]
GO
ALTER TABLE [dbo].[UserMaster] ADD  CONSTRAINT [DF_UserMaster_OtherEducation]  DEFAULT (NULL) FOR [OtherEducation]
GO
/****** Object:  StoredProcedure [dbo].[addskill]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[addskill] 
	-- Add the parameters for the stored procedure here
	@Userid varchar(255),
	@Skillid varchar(255),
	@Skillrate varchar(255),
	@Skillname varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into UserSkill(Userid, Skillid, Skillrate, SkillName) Values(@Userid, @Skillid, @Skillrate, @Skillname)
END
GO
/****** Object:  StoredProcedure [dbo].[deleteskillid]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[deleteskillid] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	delete from UserSkill
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[getrating]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getrating]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select * from RatingMaster
END
GO
/****** Object:  StoredProcedure [dbo].[getskilldatabyid]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getskilldatabyid]
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from UserSkill where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[getskilllist]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getskilllist]
	-- Add the parameters for the stored procedure here
	
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Select * from SkillMaster
END
GO
/****** Object:  StoredProcedure [dbo].[getuserdata]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getuserdata] 
	-- Add the parameters for the stored procedure here
	@id int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT * from UserMaster where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[getuserskilllist]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[getuserskilllist]
	-- Add the parameters for the stored procedure here
	@Userid varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@Userid=0)
	   BEGIN 
	      select * from UserSkill 
	   END
	else
	    BEGIN
		   SELECT * from UserSkill where Userid=@userid
		END

    -- Insert statements for procedure here
	
END
GO
/****** Object:  StoredProcedure [dbo].[loginuser]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[loginuser]
	-- Add the parameters for the stored procedure here
	@Email varchar(255),
	@Password varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select id, Name, Email, Password from UserMaster where Email=@Email 
END
GO
/****** Object:  StoredProcedure [dbo].[registeruser]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[registeruser]
	-- Add the parameters for the stored procedure here
	@Name varchar(255),
	@Email varchar(255),
	@Password varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Insert into UserMaster(Name,Email,Password) Values(@Name, @Email, @Password)
END
GO
/****** Object:  StoredProcedure [dbo].[UpdatePassword]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdatePassword] 
	-- Add the parameters for the stored procedure here
	@id int,
	@Password varchar(255)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update UserMaster
	SET Password=@Password
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserBasicDetail]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUserBasicDetail] 
	-- Add the parameters for the stored procedure here
	@id int,
	@Email varchar(255),
	@Phone varchar(255),
	@Location varchar(255),
	@Experience varchar(255),
	@Passion varchar(255),
	@Interest varchar(255),
	@Skill varchar(255),
	@JobRole varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update UserMaster
	SET Email=@Email, Phone=@Phone, Location=@Location, Experience=@Experience, Passion=@Passion, Interest=@Interest, Skill=@Skill, JobRole=@JobRole
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateUserEducationData]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[UpdateUserEducationData]
	-- Add the parameters for the stored procedure here
	@id int,
	@TenthMarks varchar(255),
	@TwelthMarks varchar(255),
	@UGMarks varchar(255),
	@GMarks varchar(255),
	@UGStream varchar(255),
	@GStream varchar(255),
	@Profession varchar(255),
	@OtherEducation varchar(255),
	@HighSchool varchar(255),
	@UGSchool varchar(255),
	@GSchool varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update UserMaster
	SET TenthMarks=@TenthMarks, TwelthMarks=@TwelthMarks, UGMarks=@UGMarks, GMarks=@GMarks, UGStream=@UGStream, GStream=@GStream, Profession=@Profession, OtherEducation=@OtherEducation, HighSchool=@HighSchool, UGSchool=@UGSchool, GSchool =@GSchool
	where id=@id
END
GO
/****** Object:  StoredProcedure [dbo].[updateuserskill]    Script Date: 10-04-2019 19:51:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[updateuserskill] 
	-- Add the parameters for the stored procedure here
	@id int,
	@Skillrate varchar(255)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	Update UserSkill
	set Skillrate=@Skillrate
	where id=@id
END
GO
