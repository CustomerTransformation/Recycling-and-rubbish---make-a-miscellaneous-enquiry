USE [ProdRubbishRecycling]
GO

/****** Object:  StoredProcedure [dbo].[WasteMiscGetData]    Script Date: 30/09/2019 11:47:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		Daniela Dutu
-- Create date: 10/11/2017
-- Description:	Get information from the form Waste Miscellaneous and puts it into the table WasteMisc
-- =============================================
CREATE PROCEDURE  [dbo].[WasteMiscGetData]
	-- Add the parameters for the stored procedure here
	@CaseRef varchar(50),
	@Date date,
	@FullName varchar(500),
	@Email varchar(100),
	@Tel varchar(50),
	@Mobile varchar(50),
	@Postcode varchar(10),
	@UPRN varchar(10),
	@Address text,
	@AddressMap text,
	@EnquiryType varchar(50),
	@Description varchar(max)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	INSERT INTO WasteMisc (
	[CaseRef],
	[Date],
	[FullName],
	[Email],
	[Tel],
	[Mobile],
	[Postcode],
	[UPRN],
	[Address],
	[AddressMap],
	[EnquiryType],
	[Description])
VALUES(
	@CaseRef,
	@Date,
	@FullName,
	@Email,
	@Tel,
	@Mobile,
	@Postcode,
	@UPRN,
	@Address,
	@AddressMap,
	@EnquiryType,
	@Description)
END

GO

