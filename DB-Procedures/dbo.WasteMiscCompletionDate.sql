USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[WasteMiscCompletionDate]    Script Date: 30/09/2019 11:47:34 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 18/02/2019
-- Description:	Adds completion date in the table WasteMisc
-- =============================================
CREATE PROCEDURE [dbo].[WasteMiscCompletionDate]
	-- Add the parameters for the stored procedure here
	@DateCompleted date,
	@Reference varchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE WasteMisc
	set DateCompleted = @DateCompleted
	where CaseRef = @Reference
END
GO

