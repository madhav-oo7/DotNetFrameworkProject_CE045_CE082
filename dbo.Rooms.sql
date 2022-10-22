CREATE TABLE [dbo].[Rooms] (
    [RoomNo]    NUMERIC (18) NOT NULL,
    [RoomType]  VARCHAR (50) NOT NULL,
    [RoomPrice] NUMERIC (18) NOT NULL,
    [IsBooked]  BIT          DEFAULT ((0)) NOT NULL,
    PRIMARY KEY CLUSTERED ([RoomNo] ASC)
);

