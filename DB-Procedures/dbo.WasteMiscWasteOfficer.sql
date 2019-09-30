USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[WasteMiscWasteOfficer]    Script Date: 30/09/2019 11:50:31 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 10/11/2017
-- Description:	Updates table WasteMisc with values from Waste Miscellaneous form-Waste stage
-- =============================================
CREATE PROCEDURE [dbo].[WasteMiscWasteOfficer]
	-- Add the parameters for the stored procedure here
	@CommentsWaste varchar(Max),
	@ActionTakenWaste varchar (50),
	@CaseRef varchar (50),
	@Officer varchar (50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
   UPDATE WasteMisc
	SET [CommentsWaste] = @CommentsWaste,
		[ActionTakenWaste] = @ActionTakenWaste,
		[WasteOfficer] = @Officer
			
	WHERE @CaseRef = CaseRef
END

GO

