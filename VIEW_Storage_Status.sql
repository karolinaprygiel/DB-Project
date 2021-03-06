USE TestDB;
GO

DROP VIEW IF EXISTS [dbo].[Storage Status];
GO

CREATE VIEW [Storage Status]
AS
SELECT P.ProductID, P.[Product Name],
    CONVERT(VARCHAR(10), S.Stock) + ' of ' + CONVERT(VARCHAR(10),
    S.StockMax) AS [Stock]
FROM [dbo].[Storage] AS S
RIGHT JOIN [dbo].[Products] AS P ON S.ProductID = P.ProductID

GO
