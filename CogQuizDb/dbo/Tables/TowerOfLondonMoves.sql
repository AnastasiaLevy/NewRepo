CREATE TABLE [dbo].[TowerOfLondonMoves] (
    [id]          INT           IDENTITY (1, 1) NOT NULL,
    [testName]    VARCHAR (100) NOT NULL,
    [round]       INT           NOT NULL,
    [roundValues] VARCHAR (100) NOT NULL,
    [roundFinish] VARCHAR (100) NOT NULL,
    [numMoves]    INT           NOT NULL,
    [modifiedId]  INT           NULL,
    CONSTRAINT [PK_TowerOfLondonMoves] PRIMARY KEY CLUSTERED ([id] ASC)
);

