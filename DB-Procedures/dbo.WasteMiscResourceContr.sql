USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[WasteMiscResourceContr]    Script Date: 30/09/2019 11:48:28 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 10/11/2017
-- Description:	Updates table WasteMisc from Stage 2 (Resource Controller)
-- =============================================
CREATE PROCEDURE [dbo].[WasteMiscResourceContr]
	-- Add the parameters for the stored procedure here
	@ActionTakenResourceCtrl varchar(50),
	@CommentsResourceCtrl varchar(Max),
	@CaseRef varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
    UPDATE WasteMisc
	SET [ActionTakenResourceCtrl] = @ActionTakenResourceCtrl,
		[CommentsResourceCtrl] = @CommentsResourceCtrl
			
	WHERE @CaseRef = CaseRef
END

GO

