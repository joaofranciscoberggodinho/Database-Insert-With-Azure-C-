-- =======================================================
-- Create Stored Procedure Template for Azure SQL Database
-- =======================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:      <João Godinho>
-- Create Date: <07/12/2020>
-- Description: <Description, , >
-- =============================================
CREATE PROCEDURE dbo.insertFullname
(
    -- Add the parameters for the stored procedure here
	@Fullname nchar(50)
)
AS
BEGIN
    -- SET NOCOUNT ON added to prevent extra result sets from
    -- interfering with SELECT statements.
    SET NOCOUNT ON

    -- Insert statements for procedure here
    INSERT INTO dbo.tblFullname (fullname) VALUES (@Fullname)
END
GO
