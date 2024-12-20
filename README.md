# 포팅 전 주의사항
- 로그인, 강사관리, 수업관리 등 DB 관련 기능 사용 전 반드시 구성 파일 수정
- machine.config와 web.config를 자신의 DB 설정(서버명, 데이터베이스명, 관리자 계정 및 비밀번호)에 맞게 수정
- 초기 git clone 시 public/images 안의 내용을 모두 제거할것 (추후 .gitignore 예정)


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[class](
   [강의ID] [int] NOT NULL,
   [강사] [nchar](10) NULL,
   [과목] [nchar](10) NULL,
   [시간] [int] NULL,
   [수업내용] [nchar](100) NULL,
   [메모] [nchar](100) NULL,
   [요일] [nchar](10) NULL,
   [강의실] [nchar](10) NULL,
 CONSTRAINT [PK_class] PRIMARY KEY CLUSTERED 
(
   [강의ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [강사] FOREIGN KEY([강사])
REFERENCES [dbo].[teacher] ([강사])
GO

ALTER TABLE [dbo].[class] CHECK CONSTRAINT [강사]
GO

ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [강의실] FOREIGN KEY([강의실])
REFERENCES [dbo].[classroom] ([강의실])
GO

ALTER TABLE [dbo].[class] CHECK CONSTRAINT [강의실]
GO

ALTER TABLE [dbo].[class]  WITH CHECK ADD  CONSTRAINT [요일] FOREIGN KEY([요일])
REFERENCES [dbo].[week] ([요일])
GO

ALTER TABLE [dbo].[class] CHECK CONSTRAINT [요일]
GO

--------


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[classroom](
   [강의실] [nchar](10) NOT NULL,
 CONSTRAINT [PK_classroom] PRIMARY KEY CLUSTERED 
(
   [강의실] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

-------


SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[teacher](
   [강사] [nchar](10) NOT NULL,
   [강사설명] [nchar](50) NULL,
 CONSTRAINT [PK_teacher] PRIMARY KEY CLUSTERED 
(
   [강사] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


---------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[time1](
   [시간] [int] NOT NULL,
 CONSTRAINT [PK_time1] PRIMARY KEY CLUSTERED 
(
   [시간] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


---------
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[week](
   [요일] [nchar](10) NOT NULL,
 CONSTRAINT [PK_week] PRIMARY KEY CLUSTERED 
(
   [요일] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO







