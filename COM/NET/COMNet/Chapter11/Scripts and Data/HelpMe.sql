/****** Object:  Table [dbo].[HelpInformation]    Script Date: 12/11/2002 6:13:07 PM ******/
if exists (select * from sysobjects where id = object_id(N'[dbo].[HelpInformation]') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
drop table [dbo].[HelpInformation]
GO

/****** Object:  Table [dbo].[HelpInformation]    Script Date: 12/11/2002 6:13:07 PM ******/
CREATE TABLE [dbo].[HelpInformation] (
	[TopicNumber] [char] (10) NOT NULL ,
	[Title] [char] (50) NOT NULL ,
	[Content] [text] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[HelpInformation] WITH NOCHECK ADD 
	CONSTRAINT [PK_HelpInformation] PRIMARY KEY  NONCLUSTERED 
	(
		[TopicNumber]
	)  ON [PRIMARY] 
GO

 CREATE  INDEX [TitleSearch] ON [dbo].[HelpInformation]([Title]) ON [PRIMARY]
GO

GRANT  REFERENCES ,  SELECT ,  INSERT ,  DELETE ,  UPDATE  ON [dbo].[HelpInformation]  TO [public]
GO

