CREATE TABLE [dbo].[Registration] (
    [User_id]           INT          IDENTITY (1, 1) NOT NULL,
    [First_name]        VARCHAR (50) NULL,
    [User_name]         VARCHAR (50) NULL,
    [Password]          VARCHAR (50) NULL,
    [Confirm_password]  VARCHAR (50) NULL,
    [Email_id]          VARCHAR (50) NULL,
    [Hint_ques]         VARCHAR (50) NULL,
    [Hint_ans]          VARCHAR (50) NULL,
    [Position]          VARCHAR (50) NULL,
    CONSTRAINT [PK_Registration] PRIMARY KEY CLUSTERED ([User_id] ASC)
);

