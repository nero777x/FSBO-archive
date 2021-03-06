﻿CREATE TABLE [dbo].[UserArea]
(
	[UserAreaId] INT PRIMARY KEY IDENTITY,
	[UserId] INT NOT NULL,
	[AreaId] INT NOT NULL,
	[AddedOn] DATETIMEOFFSET NOT NULL DEFAULT SYSDATETIMEOFFSET(),
	CONSTRAINT [FK_UserArea_UserId] FOREIGN KEY ([UserId]) REFERENCES [User]([UserId]) ON DELETE CASCADE,
	CONSTRAINT [FK_UserArea_AreaId] FOREIGN KEY ([AreaId]) REFERENCES [Area]([AreaId]) ON DELETE CASCADE
)
