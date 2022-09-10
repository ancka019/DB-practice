CREATE TABLE [Person] (
  [Person_ID] int PRIMARY KEY,
  [Last_name] nvarchar(255),
  [Fist_name] nvarchar(255),
  [Phone] varchar(11),
  [email] nvarchar(255)
)
GO

CREATE TABLE [teacher] (
  [teacher_ID] int PRIMARY KEY,
  [TypeDance_ID] int,
  [Person_ID] int,
  [Description] nvarchar(255),
  [Group_ID] int
)
GO

CREATE TABLE [Client] (
  [Client_ID] int,
  [Person_ID] int,
  [Description] nvarchar(255),
  [Group_ID] int
)
GO

CREATE TABLE [TypeDance] (
  [TypeDance_ID] int,
  [direction] nvarchar(255)
)
GO

CREATE TABLE [Group] (
  [Group_ID] int,
  [TypeLesson_ID] int,
  [timetable] nvarchar(255),
  [mark] int,
  [Description] nvarchar(255)
)
GO

CREATE TABLE [TypeLesson] (
  [TypeLesson_ID] int,
  [name] nvarchar(255)
)
GO

CREATE TABLE [Contests] (
  [Contests_ID] int,
  [teacher_ID] int,
  [Name_contests] nvarchar(255),
  [result] nvarchar(255),
  [mark] int
)
GO

ALTER TABLE [Person] ADD FOREIGN KEY ([Person_ID]) REFERENCES [teacher] ([Person_ID])
GO

ALTER TABLE [Person] ADD FOREIGN KEY ([Person_ID]) REFERENCES [Client] ([Person_ID])
GO

ALTER TABLE [teacher] ADD FOREIGN KEY ([TypeDance_ID]) REFERENCES [TypeDance] ([TypeDance_ID])
GO

ALTER TABLE [Group] ADD FOREIGN KEY ([Group_ID]) REFERENCES [teacher] ([Group_ID])
GO

ALTER TABLE [Group] ADD FOREIGN KEY ([Group_ID]) REFERENCES [Client] ([Group_ID])
GO

ALTER TABLE [Group] ADD FOREIGN KEY ([TypeLesson_ID]) REFERENCES [TypeLesson] ([TypeLesson_ID])
GO

ALTER TABLE [teacher] ADD FOREIGN KEY ([teacher_ID]) REFERENCES [Contests] ([teacher_ID])
GO
