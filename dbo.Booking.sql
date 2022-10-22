CREATE TABLE [dbo].[Booking] (
    [Email]    NVARCHAR (50) NOT NULL,
    [CheckIn]  DATE          NOT NULL,
    [CheckOut] DATE          NOT NULL,
    [RoomNo]   NUMERIC (18)  NOT NULL,
    CONSTRAINT [PK_Booking] PRIMARY KEY CLUSTERED ([RoomNo] ASC)
);

