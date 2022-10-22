CREATE TABLE [dbo].[Users] (
    [Name]     NVARCHAR (50) NULL,
    [Email]    NVARCHAR (50) NOT NULL,
    [MobileNo] NUMERIC (18)  NULL,
    [Password] NVARCHAR (50) NULL,
    CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED ([Email] ASC)
);

