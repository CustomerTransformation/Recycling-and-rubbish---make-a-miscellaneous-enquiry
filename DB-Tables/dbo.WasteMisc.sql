USE [ProdRubbishRecycling]
GO

/****** Object:  Table [dbo].[WasteMisc]    Script Date: 30/09/2019 11:41:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WasteMisc](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CaseRef] [varchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[FullName] [varchar](500) NULL,
	[Email] [varchar](100) NULL,
	[Tel] [varchar](50) NULL,
	[Mobile] [varchar](50) NULL,
	[Postcode] [varchar](10) NULL,
	[UPRN] [varchar](10) NULL,
	[Address] [text] NULL,
	[AddressMap] [text] NULL,
	[EnquiryType] [varchar](50) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[CommentsResourceCtrl] [varchar](max) NULL,
	[ActionTakenResourceCtrl] [varchar](50) NULL,
	[ActionTakenWaste] [varchar](50) NULL,
	[CommentsWaste] [varchar](max) NULL,
	[CommentsBiffa] [varchar](max) NULL,
	[CommentsManag] [varchar](max) NULL,
	[WasteOfficer] [varchar](50) NULL,
	[DateCompleted] [date] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

