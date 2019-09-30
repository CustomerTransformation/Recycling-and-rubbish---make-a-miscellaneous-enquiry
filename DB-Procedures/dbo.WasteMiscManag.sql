USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[WasteMiscManag]    Script Date: 30/09/2019 11:49:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 10/11/2017
-- Description:	Updates table WasteMisc with values from Stage Management from form Waste Miscellaneous
-- =============================================
CREATE PROCEDURE [dbo].[WasteMiscManag]
	-- Add the parameters for the stored procedure here
	@CommentsManag varchar(Max),
	@CaseRef varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	UPDATE WasteMisc
	SET [CommentsManag] = @CommentsManag
			
	WHERE @CaseRef = CaseRef
END

GO

