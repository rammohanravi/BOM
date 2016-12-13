USE [Denso_BOM]
GO

/****** Object:  Table [dbo].[Design]    Script Date: 12/08/2016 08:54:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO
--Design table
CREATE TABLE [dbo].[Design](
	[DesignId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ModelCode] [nvarchar](10) NULL,
	[CarName] [nvarchar](20) NULL,
	[SOP] [nvarchar](20) NULL,
	[ProductType] [nvarchar](10) NULL,
	[FGPartNo] [nvarchar](20) NULL,
	[PartName] [nvarchar](150) NULL,
	[PartNo] [nvarchar](20) NOT NULL,
	[CustomerPartNo] [nvarchar](20) NULL,
	[ASPZ] [nvarchar](1) NULL,
	[Level] [nvarchar](1) NULL,
	[Qty] [nvarchar](50) NULL,
	[UOM] [nvarchar](4) NULL,
	[Spec] [nvarchar](250) NULL,
	[ECIinfo] [nvarchar](250) NULL,
	[ThreeD] [nvarchar](4) NULL,
	[TwoD] [nvarchar](4) NULL,
	[InHouse] [nvarchar](10) NULL,
	[Local] [nvarchar](150) NULL,
	[Import] [nvarchar](100) NULL,
	[Die] [nvarchar](10) NULL,
	[Process] [nvarchar](20) NULL,
	[SpecDDS] [nvarchar](250) NULL,
	[Colour] [nvarchar](20) NULL,
	[Supplier] [nvarchar](150) NULL,
	[Grade] [nvarchar](50) NULL,
	[DNKICode] [nvarchar](20) NULL,
	[RiskManagementSource] [nvarchar](150) NULL,
	[Proto] [nvarchar](2) NULL,
	[OT] [nvarchar](2) NULL,
	[OP] [nvarchar](2) NULL,
	[LVPT] [nvarchar](2) NULL,
	[HVPT] [nvarchar](2) NULL,
	[CustomerSOP] [nvarchar](2) NULL,
	[Status] [char](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PartNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
--pedept table
CREATE TABLE [dbo].[PeDept](
	[DesignId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ModelCode] [nvarchar](10) NULL,
	[CarName] [nvarchar](20) NULL,
	[SOP] [nvarchar](20) NULL,
	[ProductType] [nvarchar](10) NULL,
	[FGPartNo] [nvarchar](20) NULL,
	[PartName] [nvarchar](150) NULL,
	[PartNo] [nvarchar](20) NOT NULL,
	[PROCESSTIME] [nvarchar](20) NULL,
	[RmNetWt] [nvarchar](20) NULL,
	[RmGrossWt] [nvarchar](20) NULL,
	[Uom] [nvarchar](20) NULL,
	[Status] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[DesignId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PartNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
--pcdept table
CREATE TABLE [dbo].[PcDept](
	[DesignId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ModelCode] [nvarchar](10) NULL,
	[CarName] [nvarchar](20) NULL,
	[SOP] [nvarchar](20) NULL,
	[ProductType] [nvarchar](10) NULL,
	[FGPartNo] [nvarchar](20) NULL,
	[PartName] [nvarchar](150) NULL,
	[PartNo] [nvarchar](20) NOT NULL,
	[QTYBOX] [nvarchar](20) NULL,
	[VOLUMETRICDOBOX] [nvarchar](20) NULL,
	[NETWEIGHT] [nvarchar](20) NULL,
	[GROSSWEIGHT] [nvarchar](50) NULL,
	[VOLUMETRICWEIGHT] [nvarchar](50) NULL,
	[Status] [varchar](10) NULL
) ON [PRIMARY]

GO

--BPCosting table

CREATE TABLE [dbo].[BPCosting](
	[BPCostingId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ModelCode] [nvarchar](10) NULL,
	[CarName] [nvarchar](20) NULL,
	[SOP] [nvarchar](20) NULL,
	[ProductType] [nvarchar](10) NULL,
	[FGPartNo] [nvarchar](20) NULL,
	[PartName] [nvarchar](150) NULL,
	[PartNo] [nvarchar](20) NOT NULL,
	[ProductCategory] [nvarchar](20) NULL,
	[SourceCategory] [nvarchar](20) NULL,
	[MaterialCategory] [nvarchar](20) NULL,
	[COSTCENTER] [nvarchar](20) NULL,
	[COSTCENTERNAME] [nvarchar](50) NULL,
	[RMLocPrice] [nvarchar](10) NULL,
	[RMLocLC] [nvarchar](20) NULL,
	[RMLoccost] [nvarchar](10) NULL,
	[RMImpCIFPrice] [nvarchar](10) NULL,
	[RMCurrency] [nvarchar](10) NULL,
	[RMImpPrice_pc] [nvarchar](10) NULL,
	[RMImpchrg_pc] [nvarchar](10) NULL,
	[RMImpPrice_assy] [nvarchar](10) NULL,
	[RMImpchrg_assy] [nvarchar](10) NULL,
	[RMImpLC_pc] [nvarchar](10) NULL,
	[RMImpcost_assy] [nvarchar](10) NULL,
	[RMsupplier] [nvarchar](50) NULL,
	[PartSupplier] [nvarchar](50) NULL,
	[PartLocPrice_pc] [nvarchar](10) NULL,
	[PartLocLC_pc] [nvarchar](10) NULL,
	[PartLoccost_assy] [nvarchar](10) NULL,
	[PartImpFOBprice_pc] [nvarchar](10) NULL,
	[PartCurrency] [nvarchar](10) NULL,
	[PartImpprice_pc] [nvarchar](10) NULL,
	[PartImpchrg_pc] [nvarchar](10) NULL,
	[PartImpprice_assy] [nvarchar](10) NULL,
	[PartImpchrg_assy] [nvarchar](10) NULL,
	[PartImpLC_pc] [nvarchar](10) NULL,
	[PartImpcost_assy] [nvarchar](10) NULL,
	[DirMatcost_assy] [nvarchar](10) NULL,
	[Labrate_S] [nvarchar](10) NULL,
	[Deprate_S] [nvarchar](10) NULL,
	[Exprate_S] [nvarchar](10) NULL,
	[DirProcCost_assy] [nvarchar](10) NULL,
	[DirectCost_assy] [nvarchar](10) NULL,
	[MU_assy] [nvarchar](10) NULL,
	[Mfgcost_assy] [nvarchar](10) NULL,
	[InvCtgy] [nvarchar](100) NULL,
	[UnitLandedCost] [nvarchar](10) NULL,
	[UnitPriceInr] [nvarchar](100) NULL,
	[ModelApr16] [nvarchar](10) NULL,
	[ModelMay16] [nvarchar](10) NULL,
	[Modeljun16] [nvarchar](10) NULL,
	[Modeljul16] [nvarchar](10) NULL,
	[Modelaug16] [nvarchar](10) NULL,
	[Modelsep16] [nvarchar](10) NULL,
	[Modeloct16] [nvarchar](10) NULL,
	[ModelNov16] [nvarchar](10) NULL,
	[ModelDec16] [nvarchar](10) NULL,
	[ModelJan17] [nvarchar](10) NULL,
	[ModelFeb17] [nvarchar](10) NULL,
	[ModelMar17] [nvarchar](10) NULL,
	[ModelFirstFY16] [nvarchar](10) NULL,
	[ModelSecondFY16] [nvarchar](10) NULL,
	[ModelTotalFY16] [nvarchar](10) NULL,
	[ModelQ1FY17] [nvarchar](10) NULL,
	[ModelQ2FY17] [nvarchar](10) NULL,
	[ModelQ3FY17] [nvarchar](10) NULL,
	[ModelQ4FY17] [nvarchar](10) NULL,
	[ModelFirstFY17] [nvarchar](10) NULL,
	[ModelSecondFY17] [nvarchar](10) NULL,
	[ModelTotalFY17] [nvarchar](10) NULL,
	[ModelQ1FY18] [nvarchar](10) NULL,
	[ModelQ2FY18] [nvarchar](10) NULL,
	[ModelQ3FY18] [nvarchar](10) NULL,
	[ModelQ4FY18] [nvarchar](10) NULL,
	[ModelFirstFY18] [nvarchar](10) NULL,
	[ModelSecondFY18] [nvarchar](10) NULL,
	[ModelTotalFY18] [nvarchar](10) NULL,
	[Status] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[BPCostingId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PartNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

--PurchaseDept table
CREATE TABLE [dbo].[PurchaseDept](
	[PurchaseId] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[ModelCode] [nvarchar](10) NULL,
	[CarName] [nvarchar](20) NULL,
	[SOP] [nvarchar](20) NULL,
	[ProductType] [nvarchar](10) NULL,
	[FGPartNo] [nvarchar](20) NULL,
	[PartName] [nvarchar](150) NULL,
	[PartNo] [nvarchar](20) NOT NULL,
	[Classification] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
	[Supplier] [nvarchar](50) NULL,
	[Location] [nvarchar](50) NULL,
	[Material] [nvarchar](50) NULL,
	[Tyre2Supplier] [nvarchar](50) NULL,
	[Remarks] [nvarchar](100) NULL,
	[PurApr16] [int] NULL,
	[PurMay16] [int] NULL,
	[Purjun16] [int] NULL,
	[Purjul16] [int] NULL,
	[Puraug16] [int] NULL,
	[Pursep16] [int] NULL,
	[Puroct16] [int] NULL,
	[PurNov16] [int] NULL,
	[PurDec16] [int] NULL,
	[PurJan17] [int] NULL,
	[PurFeb17] [int] NULL,
	[PurMar17] [int] NULL,
	[PurFirstFY16] [int] NULL,
	[PurSecondFY16] [int] NULL,
	[PurTotalFY16] [int] NULL,
	[PurQ1FY17] [int] NULL,
	[PurQ2FY17] [int] NULL,
	[PurQ3FY17] [int] NULL,
	[PurQ4FY17] [int] NULL,
	[PurFirstFY17] [int] NULL,
	[PurSecondFY17] [int] NULL,
	[PurTotalFY17] [int] NULL,
	[PurQ1FY18] [int] NULL,
	[PurQ2FY18] [int] NULL,
	[PurQ3FY18] [int] NULL,
	[PurQ4FY18] [int] NULL,
	[PurFirstFY18] [int] NULL,
	[PurSecondFY18] [int] NULL,
	[PurTotalFY18] [int] NULL,
	[PurMinValApr16] [int] NULL,
	[PurMinValMay16] [int] NULL,
	[PurMinValjun16] [int] NULL,
	[PurMinValjul16] [int] NULL,
	[PurMinValaug16] [int] NULL,
	[PurMinValsep16] [int] NULL,
	[PurMinValoct16] [int] NULL,
	[PurMinValNov16] [int] NULL,
	[PurMinValDec16] [int] NULL,
	[PurMinValJan17] [int] NULL,
	[PurMinValFeb17] [int] NULL,
	[PurMinValMar17] [int] NULL,
	[PurMinValFirstFY16] [int] NULL,
	[PurMinValSecondFY16] [int] NULL,
	[PurMinValTotalFY16] [int] NULL,
	[PurMinValQ1FY17] [int] NULL,
	[PurMinValQ2FY17] [int] NULL,
	[PurMinValQ3FY17] [int] NULL,
	[PurMinValQ4FY17] [int] NULL,
	[PurMinValFirstFY17] [int] NULL,
	[PurMinValSecondFY17] [int] NULL,
	[PurMinValTotalFY17] [int] NULL,
	[PurMinValQ1FY18] [int] NULL,
	[PurMinValQ2FY18] [int] NULL,
	[PurMinValQ3FY18] [int] NULL,
	[PurMinValQ4FY18] [int] NULL,
	[PurMinValFirstFY18] [int] NULL,
	[PurMinValSecondFY18] [int] NULL,
	[PurMinValTotalFY18] [int] NULL,
	[RMReqmtApr16] [int] NULL,
	[RMReqmtMay16] [int] NULL,
	[RMReqmtjun16] [int] NULL,
	[RMReqmtjul16] [int] NULL,
	[RMReqmtaug16] [int] NULL,
	[RMReqmtsep16] [int] NULL,
	[RMReqmtoct16] [int] NULL,
	[RMReqmtNov16] [int] NULL,
	[RMReqmtDec16] [int] NULL,
	[RMReqmtJan17] [int] NULL,
	[RMReqmtFeb17] [int] NULL,
	[RMReqmtMar17] [int] NULL,
	[RMReqmtFirstFY16] [int] NULL,
	[RMReqmtSecondFY16] [int] NULL,
	[RMReqmtTotalFY16] [int] NULL,
	[RMReqmtQ1FY17] [int] NULL,
	[RMReqmtQ2FY17] [int] NULL,
	[RMReqmtQ3FY17] [int] NULL,
	[RMReqmtQ4FY17] [int] NULL,
	[RMReqmtFirstFY17] [int] NULL,
	[RMReqmtSecondFY17] [int] NULL,
	[RMReqmtTotalFY17] [int] NULL,
	[RMReqmtQ1FY18] [int] NULL,
	[RMReqmtQ2FY18] [int] NULL,
	[RMReqmtQ3FY18] [int] NULL,
	[RMReqmtQ4FY18] [int] NULL,
	[RMReqmtFirstFY18] [int] NULL,
	[RMReqmtSecondFY18] [int] NULL,
	[RMReqmtTotalFY18] [int] NULL,
	[RMPurApr16] [int] NULL,
	[RMPurMay16] [int] NULL,
	[RMPurjun16] [int] NULL,
	[RMPurjul16] [int] NULL,
	[RMPuraug16] [int] NULL,
	[RMPursep16] [int] NULL,
	[RMPuroct16] [int] NULL,
	[RMPurNov16] [int] NULL,
	[RMPurDec16] [int] NULL,
	[RMPurJan17] [int] NULL,
	[RMPurFeb17] [int] NULL,
	[RMPurMar17] [int] NULL,
	[RMPurFirstFY16] [int] NULL,
	[RMPurSecondFY16] [int] NULL,
	[RMPurTotalFY16] [int] NULL,
	[RMPurQ1FY17] [int] NULL,
	[RMPurQ2FY17] [int] NULL,
	[RMPurQ3FY17] [int] NULL,
	[RMPurQ4FY17] [int] NULL,
	[RMPurFirstFY17] [int] NULL,
	[RMPurSecondFY17] [int] NULL,
	[RMPurTotalFY17] [int] NULL,
	[RMPurQ1FY18] [int] NULL,
	[RMPurQ2FY18] [int] NULL,
	[RMPurQ3FY18] [int] NULL,
	[RMPurQ4FY18] [int] NULL,
	[RMPurFirstFY18] [int] NULL,
	[RMPurSecondFY18] [int] NULL,
	[RMPurTotalFY18] [int] NULL,
	[Status] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[PurchaseId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
UNIQUE NONCLUSTERED 
(
	[PartNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

---- SP creations 

CREATE PROCEDURE [dbo].[SP_Design_CRUD]
     @Action VARCHAR(10)
    ,@DesignId	int = 0
    ,@CustomerName nvarchar(50)= NULL
	,@ModelCode nvarchar(10) = NULL
	,@CarName nvarchar(20) = NULL
	,@SOP nvarchar(20) =NULL
	,@ProductType nvarchar(10)=  NULL
	,@FGPartNo nvarchar(20) = NULL
	,@PartName nvarchar(150)= NULL
	,@PartNo  nvarchar(20) =  NULL
	,@CustomerPartNo nvarchar(20)= NULL
	,@ASPZ nvarchar(1)= NULL
	,@Level	 nvarchar(1)  = null
	,@UOM	 nvarchar(4)  = null
	,@Qty	 nvarchar(50)  = null
	,@Spec nvarchar(250)  = null
	,@ECIinfo nvarchar(250)  = null
	,@ThreeD	 nvarchar(255)  = null
	,@TwoD	 nvarchar(255)  = null
	,@InHouse	 nvarchar(10)  = null
	,@Local	 nvarchar(150)  = null
	,@Import	 nvarchar(100)  = null
	,@Die	 nvarchar(10)  = null
	,@Process	 nvarchar(20)  = null
	,@SpecDDS	 nvarchar(250)  = null
	,@Colour	 nvarchar(20)  = null
	,@Supplier	 nvarchar(150)  = null
	,@Grade nvarchar(50)= NULL
	,@DNKICode nvarchar(20)= NULL
	,@RiskManagementSource nvarchar(150) =NULL
	,@Proto	 nvarchar(2)  = null
	,@OT	 nvarchar(2)  = null
	,@OP	 nvarchar(2)  = null
	,@LVPT	 nvarchar(2)  = null
	,@HVPT	 nvarchar(2)  = null
	,@CustomerSOP nvarchar(2) = null
	,@Status nvarchar(10) = null
AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * 
                 FROM dbo.Design where  (Status != 'A' or Status is null)--CustomerName = @CustomerName and CarName = @CarName and ProductType = @ProductType
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
            INSERT INTO Design(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
	,CustomerPartNo
	,ASPZ
	,Level
	,UOM
	,Qty
	,Spec
	,ECIinfo
	,ThreeD
	,TwoD
	,InHouse
	,Local
	,Import
	,Die
	,Process
	,SpecDDS
	,Colour
	,Supplier
	,Grade 
	,DNKICode 
	,RiskManagementSource
	,Proto	
	,OT	 
	,OP	
	,LVPT	
	,HVPT	
	,CustomerSOP
	,Status )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
	,@CustomerPartNo 
	,@ASPZ 
	,@Level	 
	,@UOM	 
	,@Qty	
	,@Spec 
	,@ECIinfo 
	,@ThreeD	 
	,@TwoD	 
	,@InHouse	
	,@Local	 
	,@Import	 
	,@Die	 
	,@Process	 
	,@SpecDDS	
	,@Colour	
	,@Supplier	
	,@Grade 
	,@DNKICode 
	,@RiskManagementSource 
	,@Proto	
	,@OT	 
	,@OP	
	,@LVPT	 
	,@HVPT	 
	,@CustomerSOP
	,@Status)
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE Design
            SET  CustomerName = @CustomerName
	,ModelCode = @ModelCode
	,CarName = @CarName
	,SOP =@SOP
	,ProductType =@ProductType
	,FGPartNo =@FGPartNo
	,PartName  =@PartName
	,PartNo =@PartNo
	,CustomerPartNo =@CustomerPartNo
	,ASPZ=@ASPZ
	,Level=@Level
	,UOM=@UOM
	,Qty=@Qty
	,Spec=@Spec
	,ECIinfo =@ECIinfo
	,ThreeD=@ThreeD
	,TwoD=@TwoD
	,InHouse=@InHouse
	,Local=@Local
	,Import=@Import
	,Die=@Die
	,Process=@Process
	,SpecDDS=@SpecDDS
	,Colour=@Colour
	,Supplier=@Supplier
	,Grade =@Grade
	,DNKICode =@DNKICode
	,RiskManagementSource =@RiskManagementSource
	,Proto =@Proto	
	,OT	 =@OT
	,OP	=@OP
	,LVPT =@LVPT	
	,HVPT =@HVPT
	,CustomerSOP =@CustomerSOP
	,Status =@Status
	
        WHERE DesignId = @DesignId

			IF @@ROWCOUNT = 0 
			begin
				 INSERT INTO Design(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
	,CustomerPartNo
	,ASPZ
	,Level
	,UOM
	,Qty
	,Spec
	,ECIinfo
	,ThreeD
	,TwoD
	,InHouse
	,Local
	,Import
	,Die
	,Process
	,SpecDDS
	,Colour
	,Supplier
	,Grade 
	,DNKICode 
	,RiskManagementSource
	,Proto	
	,OT	 
	,OP	
	,LVPT	
	,HVPT	
	,CustomerSOP
	,Status )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
	,@CustomerPartNo 
	,@ASPZ 
	,@Level	 
	,@UOM	 
	,@Qty	
	,@Spec 
	,@ECIinfo 
	,@ThreeD	 
	,@TwoD	 
	,@InHouse	
	,@Local	 
	,@Import	 
	,@Die	 
	,@Process	 
	,@SpecDDS	
	,@Colour	
	,@Supplier	
	,@Grade 
	,@DNKICode 
	,@RiskManagementSource 
	,@Proto	
	,@OT	 
	,@OP	
	,@LVPT	 
	,@HVPT	 
	,@CustomerSOP
	,@Status)
			END
      END
 
 IF @Status = 'A'
 Begin
 				 INSERT INTO dbo.PeDept(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
	 )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
	)
 End
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM Design
            WHERE DesignId = @DesignId --and SelectedTypeID=@SelectedTypeID
      END
END

GO

CREATE PROCEDURE [dbo].[SP_PeDept]
     @Action VARCHAR(10)
    ,@DesignId	int = 0
    ,@CustomerName nvarchar(50)= NULL
	,@ModelCode nvarchar(10) = NULL
	,@CarName nvarchar(20) = NULL
	,@SOP nvarchar(20) =NULL
	,@ProductType nvarchar(10)=  NULL
	,@FGPartNo nvarchar(20) = NULL
	,@PartName nvarchar(150)= NULL
	,@PartNo  nvarchar(20) =  NULL
	,@PROCESSTIME nvarchar(20)= NULL
	,@RmNetWt nvarchar(20)= NULL
	,@RmGrossWt nvarchar(20)= NULL
	,@Uom nvarchar(20)= NULL
	,@Status nvarchar(20)= NULL
 
AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * 
                 FROM dbo.PeDept where  (Status != 'A' or Status is null)-- where CustomerName = @CustomerName and CarName = @CarName and ProductType = @ProductType
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
            INSERT INTO PeDept(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
    ,PROCESSTIME
,RmNetWt
,RmGrossWt
,Uom
,Status

	  )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
	 ,@PROCESSTIME
,@RmNetWt
,@RmGrossWt
,@Uom
,@Status

	 )
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE PeDept
            SET  CustomerName = @CustomerName
	,ModelCode = @ModelCode
	,CarName = @CarName
	,SOP =@SOP
	,ProductType =@ProductType
	,FGPartNo =@FGPartNo
	,PartName  =@PartName
	,PartNo =@PartNo
	,PROCESSTIME =@PROCESSTIME
	,RmNetWt=@RmNetWt
	,RmGrossWt=@RmGrossWt
	,Uom=@Uom
	,Status =@Status
        WHERE DesignId = @DesignId

			IF @@ROWCOUNT = 0 
			begin
				 INSERT INTO PeDept(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
	 ,PROCESSTIME
,RmNetWt
,RmGrossWt
,Uom
,Status
	  )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
	,@PROCESSTIME
,@RmNetWt
,@RmGrossWt
,@Uom
,@Status
	 )
			END
      END
 IF @Status = 'A'
 Begin
 				 INSERT INTO dbo.PcDept(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
	 )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
	)
End
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM PeDept
            WHERE DesignId = @DesignId --and SelectedTypeID=@SelectedTypeID
      END
END
GO

CREATE PROCEDURE [dbo].[SP_PcDept]
     @Action VARCHAR(10)
    ,@DesignId	int = 0
    ,@CustomerName nvarchar(50)= NULL
	,@ModelCode nvarchar(10) = NULL
	,@CarName nvarchar(20) = NULL
	,@SOP nvarchar(20) =NULL
	,@ProductType nvarchar(10)=  NULL
	,@FGPartNo nvarchar(20) = NULL
	,@PartName nvarchar(150)= NULL
	,@PartNo  nvarchar(20) =  NULL
	,@QTYBOX nvarchar(20)= NULL
	,@VOLUMETRICDOBOX nvarchar(20)= NULL
	,@NETWEIGHT	 nvarchar(20)  = null
	,@GROSSWEIGHT 	 nvarchar(50)  = null
	,@VOLUMETRICWEIGHT 	 nvarchar(50)  = null
	,@Status nvarchar(10) = null
 
AS
BEGIN
      SET NOCOUNT ON;
 
      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * 
                 FROM dbo.PcDept where  (Status != 'A' or Status is null) -- where CustomerName = @CustomerName and CarName = @CarName and ProductType = @ProductType
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
            INSERT INTO PcDept(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo
	,QTYBOX
,VOLUMETRICDOBOX
,NETWEIGHT
,GROSSWEIGHT
 ,VOLUMETRICWEIGHT
 ,Status
    
	  )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
,@QTYBOX
,@VOLUMETRICDOBOX
,@NETWEIGHT

,@GROSSWEIGHT
 
,@VOLUMETRICWEIGHT
,@Status	 
	 )
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE PcDept
            SET  CustomerName = @CustomerName
	,ModelCode = @ModelCode
	,CarName = @CarName
	,SOP =@SOP
	,ProductType =@ProductType
	,FGPartNo =@FGPartNo
	,PartName  =@PartName
	,PartNo =@PartNo
	,QTYBOX     = @QTYBOX     
,VOLUMETRICDOBOX= @VOLUMETRICDOBOX
,NETWEIGHT=  @NETWEIGHT
,GROSSWEIGHT= @GROSSWEIGHT 
 ,VOLUMETRICWEIGHT= @VOLUMETRICWEIGHT
 ,Status = @Status
	
        WHERE DesignId = @DesignId

			IF @@ROWCOUNT = 0 
			begin
				 INSERT INTO PcDept(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
 ,QTYBOX
,VOLUMETRICDOBOX
,NETWEIGHT

,GROSSWEIGHT
 
,VOLUMETRICWEIGHT
,Status
	  )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
,@QTYBOX
,@VOLUMETRICDOBOX
,@NETWEIGHT

,@GROSSWEIGHT
 
,@VOLUMETRICWEIGHT
,@Status	 
	 )
			END
      END
      IF @Status = 'A'
 Begin
 				 INSERT INTO dbo.BPCosting(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
	 )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
	)
 End
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM PcDept
            WHERE DesignId = @DesignId --and SelectedTypeID=@SelectedTypeID
      END
END

GO

CREATE PROCEDURE [dbo].[BPCosting_CRUD]
     @Action VARCHAR(10),
    @BPCostingId	int = 0, 
	@CustomerName		[nvarchar](50)= NULL,
	@ModelCode			 [nvarchar](10)= NULL,
	@CarName		[nvarchar](20)= NULL,
	@SOP					[nvarchar](20) =NULL,
	@ProductType		 [nvarchar](10)= NULL,
	@FGPartNo				[nvarchar](20)= NULL,
	@PartName			[nvarchar](150)= NULL,
	@PartNo				[nvarchar](20)= NULL,
	 
	@ProductCategory [nvarchar](20)= NULL,
    @SourceCategory [nvarchar](20)= NULL,
    @MaterialCategory [nvarchar](20)= NULL,
    @COSTCENTER [nvarchar](20)= NULL,
	@COSTCENTERNAME [nvarchar](50) = NULL,
	@UnitLandedCost [nvarchar](10)= NULL,
	@UnitPriceInr [nvarchar](100) = NULL,
	@RMsupplier	    [nvarchar](50)= NULL,
	@RMLocPrice				 [nvarchar](10) =NULL,
@RMLocLC 				 [nvarchar](10)= NULL,
@RMLoccost				 [nvarchar](10)= NULL,
@RMImpCIFPrice			 [nvarchar](10)= NULL,
@RMCurrency				 [nvarchar](10)= NULL,
@RMImpPrice_pc			 [nvarchar](10)= NULL,
@RMImpchrg_pc			 [nvarchar](10)= NULL,
@RMImpPrice_assy			 [nvarchar](10)= NULL,
@RMImpchrg_assy			 [nvarchar](10)= NULL,
@RMImpLC_pc				 [nvarchar](10)= NULL,
@RMImpcost_assy			 [nvarchar](10)= NULL,
@PartSupplier			 [nvarchar](50)= NULL,
@PartLocPrice_pc			 [nvarchar](10)= NULL,
@PartLocLC_pc			 [nvarchar](10)= NULL,
@PartLoccost_assy		 [nvarchar](10)= NULL,
@PartImpFOBprice_pc		 [nvarchar](10)= NULL,
@PartCurrency			 [nvarchar](10)= NULL,
@PartImpprice_pc			 [nvarchar](10)= NULL,
@PartImpchrg_pc			 [nvarchar](10)= NULL,
@PartImpprice_assy		 [nvarchar](10)= NULL,
@PartImpchrg_assy		 [nvarchar](10)= NULL,
@PartImpLC_pc			 [nvarchar](10)= NULL,
@PartImpcost_assy		 [nvarchar](10)= NULL,
@DirMatcost_assy			 [nvarchar](10)= NULL,
--@Proctime_assy			 [nvarchar](10)= NULL,
--@Procline				 [nvarchar](10)= NULL,
@Labrate_S				 [nvarchar](10)= NULL,
--@Labcost_assy			 [nvarchar](10)= NULL,
@Deprate_S				 [nvarchar](10)= NULL,
--@Depcost_assy			 [nvarchar](10)= NULL,
@Exprate_S				 [nvarchar](10)= NULL,
@DirProcCost_assy		 [nvarchar](10)= NULL,
@DirectCost_assy			 [nvarchar](10)= NULL,
@MU_assy					 [nvarchar](10)= NULL,
@Mfgcost_assy			 [nvarchar](10)= NULL,
@InvCtgy					 [nvarchar](100)= NULL,
--@costcenter				 [nvarchar](255)= NULL,
--@SelectedTypeID   int = 0,
 
    @ModelApr16              [nvarchar](10)    =   NULL,
	@ModelMay16              [nvarchar](10) =  NULL,
	@Modeljun16				[nvarchar](10) =  NULL,
	@Modeljul16				[nvarchar](10) =  NULL,
	@Modelaug16				[nvarchar](10) =  NULL,
	@Modelsep16				[nvarchar](10) =  NULL,
	@Modeloct16				[nvarchar](10) =  NULL,
	@ModelNov16				[nvarchar](10) =  NULL,
	@ModelDec16				[nvarchar](10) =  NULL,
	@ModelJan17				[nvarchar](10) =  NULL,
	@ModelFeb17				[nvarchar](10) =  NULL,
	@ModelMar17				[nvarchar](10) =  NULL,
	@ModelFirstFY16			[nvarchar](10) =  NULL,
	@ModelSecondFY16			[nvarchar](10) =  NULL,
	@ModelTotalFY16			[nvarchar](10) =  NULL,
	@ModelQ1FY17				[nvarchar](10) =  NULL,
	@ModelQ2FY17				[nvarchar](10) =  NULL,
	@ModelQ3FY17				[nvarchar](10) =  NULL,
	@ModelQ4FY17				[nvarchar](10) =  NULL,
	@ModelFirstFY17			[nvarchar](10) =  NULL,
	@ModelSecondFY17			[nvarchar](10) =  NULL,
	@ModelTotalFY17			[nvarchar](10) =  NULL,
	@ModelQ1FY18				[nvarchar](10) =  NULL,
	@ModelQ2FY18				[nvarchar](10) =  NULL,
	@ModelQ3FY18				[nvarchar](10) =  NULL,
	@ModelQ4FY18				[nvarchar](10) =  NULL,
	@ModelFirstFY18			[nvarchar](10) =  NULL,
	@ModelSecondFY18			[nvarchar](10) =  NULL,
	@ModelTotalFY18			[nvarchar](10) =  NULL,
	@Status			[nvarchar](10) =  NULL
 
AS
BEGIN
      SET NOCOUNT ON;

	      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * 
            FROM BPCosting where  (Status != 'A' or Status is null)
			 --where SelectedTypeID=@SelectedTypeID
      END
 
      --INSERT
    IF @Action = 'INSERT'
      BEGIN
	  INSERT INTO BPCosting(
	   CustomerName	,
ModelCode		,
 CarName		,
 SOP			,
 ProductType	,
 FGPartNo		,
 PartName		,
 PartNo			,
 ProductCategory ,
 SourceCategory ,
 MaterialCategory,
 COSTCENTER			 ,
 COSTCENTERNAME		 ,
 UnitPriceInr			 ,
 UnitLandedCost		 ,
RMsupplier	    ,
RMLocPrice			,
RMLocLC 			,
RMLoccost			,
RMImpCIFPrice		,
RMCurrency			,
RMImpPrice_pc		,
RMImpchrg_pc		,
RMImpPrice_assy		,
RMImpchrg_assy		,
RMImpLC_pc			,
RMImpcost_assy		,
PartSupplier		,
PartLocPrice_pc		,
PartLocLC_pc		,
PartLoccost_assy	,
PartImpFOBprice_pc	,
PartCurrency		,
PartImpprice_pc		,
PartImpchrg_pc		,
PartImpprice_assy	,
PartImpchrg_assy	,
PartImpLC_pc		,
PartImpcost_assy	,
DirMatcost_assy		,
--Proctime_assy		,
--Procline			,
Labrate_S			,
--Labcost_assy		,
Deprate_S			,
--Depcost_assy		,
Exprate_S			,
DirProcCost_assy	,
DirectCost_assy		,
MU_assy				,
Mfgcost_assy		,
InvCtgy				,
--costcenter	
--SelectedTypeID	,
ModelApr16          ,   
ModelMay16          ,   
Modeljun16			,	
Modeljul16			,	
Modelaug16			,	
Modelsep16			,	
Modeloct16			,	
ModelNov16			,	
ModelDec16			,	
ModelJan17			,	
ModelFeb17			,	
ModelMar17			,	
ModelFirstFY16		,	
ModelSecondFY16		,	
ModelTotalFY16		,	
ModelQ1FY17			,	
ModelQ2FY17			,	
ModelQ3FY17			,	
ModelQ4FY17			,	
ModelFirstFY17		,	
ModelSecondFY17		,	
ModelTotalFY17		,	
ModelQ1FY18			,	
ModelQ2FY18			,	
ModelQ3FY18			,	
ModelQ4FY18			,	
ModelFirstFY18		,	
ModelSecondFY18 ,
ModelTotalFY18,
Status		
	)
Values
(
@CustomerName	     ,
@ModelCode			 ,
@CarName			 ,
@SOP				 ,
@ProductType		 ,
@FGPartNo			 ,
@PartName			 ,
@PartNo				 ,
@ProductCategory 	 ,
@SourceCategory 	 ,
@MaterialCategory	 ,
@COSTCENTER			 ,
@COSTCENTERNAME		 ,
@UnitPriceInr		 ,
@UnitLandedCost		 ,
@RMsupplier	 		 ,
@RMLocPrice			 ,
@RMLocLC 			,
@RMLoccost			,
@RMImpCIFPrice		,
@RMCurrency			,
@RMImpPrice_pc		,
@RMImpchrg_pc		,
@RMImpPrice_assy		,
@RMImpchrg_assy		,
@RMImpLC_pc			,
@RMImpcost_assy		,
@PartSupplier		,
@PartLocPrice_pc		,
@PartLocLC_pc		,
@PartLoccost_assy	,
@PartImpFOBprice_pc	,
@PartCurrency		,
@PartImpprice_pc		,
@PartImpchrg_pc		,
@PartImpprice_assy	,
@PartImpchrg_assy	,
@PartImpLC_pc		,
@PartImpcost_assy	,
@DirMatcost_assy		,
--@Proctime_assy		,
--@Procline			,
@Labrate_S			,
--@Labcost_assy		,
@Deprate_S			,
--@Depcost_assy		,
@Exprate_S			,
@DirProcCost_assy	,
@DirectCost_assy		,
@MU_assy				,
@Mfgcost_assy		,
@InvCtgy				,
--@costcenter			,
--@SelectedTypeID	    ,

@ModelApr16          ,   
@ModelMay16          ,   
@Modeljun16			,	
@Modeljul16			,	
@Modelaug16			,	
@Modelsep16			,	
@Modeloct16			,	
@ModelNov16			,	
@ModelDec16			,	
@ModelJan17			,	
@ModelFeb17			,	
@ModelMar17			,	
@ModelFirstFY16		,	
@ModelSecondFY16		,	
@ModelTotalFY16		,	
@ModelQ1FY17			,	
@ModelQ2FY17			,	
@ModelQ3FY17			,	
@ModelQ4FY17			,	
@ModelFirstFY17		,	
@ModelSecondFY17		,	
@ModelTotalFY17		,	
@ModelQ1FY18			,	
@ModelQ2FY18			,	
@ModelQ3FY18			,	
@ModelQ4FY18			,	
@ModelFirstFY18		,	
@ModelSecondFY18,
@ModelTotalFY18,
@Status	
	
)
          
      END
 
      --UPDATE
    IF @Action = 'UPDATE'
      BEGIN
            UPDATE BPCosting
			SET 
        CustomerName	      =  @CustomerName       ,
 ModelCode		 	  =   @ModelCode				 ,
 CarName		 	  =   @CarName					 ,
 SOP			 	  = @SOP						 ,
 ProductType	 	  = @ProductType				 ,
 FGPartNo		 	  = @FGPartNo					 ,
 PartName		 	  = @PartName					 ,
 PartNo			 	  = @PartNo						 ,
 ProductCategory 	  = @ProductCategory 			 ,
 SourceCategory 	  = @SourceCategory 			 ,
 MaterialCategory	  = @MaterialCategory			 ,
 COSTCENTER			  = @COSTCENTER			         ,
 COSTCENTERNAME		  = @COSTCENTERNAME		     	 ,
 UnitPriceInr		  = @UnitPriceInr		    	 ,
 UnitLandedCost		  = @UnitLandedCost 			 ,
 RMsupplier			 =     @RMsupplier			,
 RMLocPrice			 =     @RMLocPrice			,
 RMLocLC 			 =     @RMLocLC 			,
 RMLoccost			 =     @RMLoccost			,
 RMImpCIFPrice		 =     @RMImpCIFPrice		,
 RMCurrency			 =     @RMCurrency			,
 RMImpPrice_pc		 =     @RMImpPrice_pc		,
 RMImpchrg_pc		 =     @RMImpchrg_pc		,
 RMImpPrice_assy	 =     @RMImpPrice_assy		,
 RMImpchrg_assy		 =     @RMImpchrg_assy		,
 RMImpLC_pc			 =     @RMImpLC_pc			,
 RMImpcost_assy		 =     @RMImpcost_assy		,
 PartSupplier		 =     @PartSupplier		,
 PartLocPrice_pc	 =     @PartLocPrice_pc		,
 PartLocLC_pc		 =     @PartLocLC_pc		,
 PartLoccost_assy	 =     @PartLoccost_assy	,
 PartImpFOBprice_pc	 =     @PartImpFOBprice_pc	,
 PartCurrency		 =     @PartCurrency		,
 PartImpprice_pc	 =     @PartImpprice_pc		,
 PartImpchrg_pc		 =     @PartImpchrg_pc		,
 PartImpprice_assy	 =     @PartImpprice_assy	,
 PartImpchrg_assy	 =     @PartImpchrg_assy	,
 PartImpLC_pc		 =     @PartImpLC_pc		,
 PartImpcost_assy	 =     @PartImpcost_assy	,
 DirMatcost_assy	 =     @DirMatcost_assy		,
 --Proctime_assy		 =     @Proctime_assy		,
 --Procline			 =     @Procline			,
 Labrate_S			 =     @Labrate_S			,
 --Labcost_assy		 =     @Labcost_assy		,
 Deprate_S			 =     @Deprate_S			,
 --Depcost_assy		 =     @Depcost_assy		,
 Exprate_S			 =     @Exprate_S			,
 DirProcCost_assy	 =     @DirProcCost_assy	,
 DirectCost_assy	 =     @DirectCost_assy		,
 MU_assy			 =     @MU_assy				,
 Mfgcost_assy		 =     @Mfgcost_assy		,
 InvCtgy			 =     @InvCtgy				,
 --costcenter			 =     @costcenter
  ModelApr16           	=	@ModelApr16           	,
 ModelMay16          	=	@ModelMay16          	,
 Modeljun16		   =  @Modeljun16	,
 Modeljul16		   =@Modeljul16	,
 Modelaug16		   =@Modelaug16	,
 Modelsep16		   =@Modelsep16	,
 Modeloct16		   =@Modeloct16	,
 ModelNov16		   =@ModelNov16	,
 ModelDec16		   =@ModelDec16	,
 ModelJan17		   =@ModelJan17	,
 ModelFeb17		   =@ModelFeb17	,
 ModelMar17		   =@ModelMar17	,
 ModelFirstFY16		=@ModelFirstFY16	,
 ModelSecondFY16	=	@ModelSecondFY16	,
 ModelTotalFY16		=@ModelTotalFY16	,
 ModelQ1FY17		=@ModelQ1FY17	,
 ModelQ2FY17		=@ModelQ2FY17	,
 ModelQ3FY17		=@ModelQ3FY17	,
 ModelQ4FY17		=@ModelQ4FY17	,
 ModelFirstFY17		=@ModelFirstFY17	,
 ModelSecondFY17	=	@ModelSecondFY17	,
 ModelTotalFY17		=@ModelTotalFY17	,
 ModelQ1FY18		=@ModelQ1FY18	,
 ModelQ2FY18		=@ModelQ2FY18	,
 ModelQ3FY18		=@ModelQ3FY18	,
 ModelQ4FY18		=@ModelQ4FY18	,
 ModelFirstFY18		=@ModelFirstFY18	,
 ModelSecondFY18 = @ModelSecondFY18,
 ModelTotalFY18		=@ModelTotalFY18,
 Status		=@Status	
 
            WHERE BPCostingId = @BPCostingId

			IF @@ROWCOUNT = 0 
			Begin
INSERT INTO BPCosting(
	   CustomerName	,
ModelCode		,
 CarName		,
 SOP			,
 ProductType	,
 FGPartNo		,
 PartName		,
 PartNo			,
 ProductCategory ,
 SourceCategory ,
 MaterialCategory,
 COSTCENTER			 ,
 COSTCENTERNAME		 ,
 UnitPriceInr		 ,
 UnitLandedCost		 ,
RMsupplier	    ,
RMLocPrice			,
RMLocLC 			,
RMLoccost			,
RMImpCIFPrice		,
RMCurrency			,
RMImpPrice_pc		,
RMImpchrg_pc		,
RMImpPrice_assy		,
RMImpchrg_assy		,
RMImpLC_pc			,
RMImpcost_assy		,
PartSupplier		,
PartLocPrice_pc		,
PartLocLC_pc		,
PartLoccost_assy	,
PartImpFOBprice_pc	,
PartCurrency		,
PartImpprice_pc		,
PartImpchrg_pc		,
PartImpprice_assy	,
PartImpchrg_assy	,
PartImpLC_pc		,
PartImpcost_assy	,
DirMatcost_assy		,
--Proctime_assy		,
--Procline			,
Labrate_S			,
--Labcost_assy		,
Deprate_S			,
--Depcost_assy		,
Exprate_S			,
DirProcCost_assy	,
DirectCost_assy		,
MU_assy				,
Mfgcost_assy		,
InvCtgy				,
--costcenter	
--SelectedTypeID	,
ModelApr16          ,   
ModelMay16          ,   
Modeljun16			,	
Modeljul16			,	
Modelaug16			,	
Modelsep16			,	
Modeloct16			,	
ModelNov16			,	
ModelDec16			,	
ModelJan17			,	
ModelFeb17			,	
ModelMar17			,	
ModelFirstFY16		,	
ModelSecondFY16		,	
ModelTotalFY16		,	
ModelQ1FY17			,	
ModelQ2FY17			,	
ModelQ3FY17			,	
ModelQ4FY17			,	
ModelFirstFY17		,	
ModelSecondFY17		,	
ModelTotalFY17		,	
ModelQ1FY18			,	
ModelQ2FY18			,	
ModelQ3FY18			,	
ModelQ4FY18			,	
ModelFirstFY18		,	
ModelSecondFY18 ,
ModelTotalFY18,
Status	
	)
Values
(
@CustomerName	     ,
@ModelCode			 ,
@CarName			 ,
@SOP				 ,
@ProductType		 ,
@FGPartNo			 ,
@PartName			 ,
@PartNo				 ,
@ProductCategory 	 ,
@SourceCategory 	 ,
@MaterialCategory	 ,
@COSTCENTER			 ,
@COSTCENTERNAME		 ,
@UnitPriceInr		 ,
@UnitLandedCost      ,
@RMsupplier	 		 ,
@RMLocPrice			 ,
@RMLocLC 			,
@RMLoccost			,
@RMImpCIFPrice		,
@RMCurrency			,
@RMImpPrice_pc		,
@RMImpchrg_pc		,
@RMImpPrice_assy		,
@RMImpchrg_assy		,
@RMImpLC_pc			,
@RMImpcost_assy		,
@PartSupplier		,
@PartLocPrice_pc		,
@PartLocLC_pc		,
@PartLoccost_assy	,
@PartImpFOBprice_pc	,
@PartCurrency		,
@PartImpprice_pc		,
@PartImpchrg_pc		,
@PartImpprice_assy	,
@PartImpchrg_assy	,
@PartImpLC_pc		,
@PartImpcost_assy	,
@DirMatcost_assy		,
--@Proctime_assy		,
--@Procline			,
@Labrate_S			,
--@Labcost_assy		,
@Deprate_S			,
--@Depcost_assy		,
@Exprate_S			,
@DirProcCost_assy	,
@DirectCost_assy		,
@MU_assy				,
@Mfgcost_assy		,
@InvCtgy				,
--@costcenter			,
--@SelectedTypeID	    ,

@ModelApr16          ,   
@ModelMay16          ,   
@Modeljun16			,	
@Modeljul16			,	
@Modelaug16			,	
@Modelsep16			,	
@Modeloct16			,	
@ModelNov16			,	
@ModelDec16			,	
@ModelJan17			,	
@ModelFeb17			,	
@ModelMar17			,	
@ModelFirstFY16		,	
@ModelSecondFY16		,	
@ModelTotalFY16		,	
@ModelQ1FY17			,	
@ModelQ2FY17			,	
@ModelQ3FY17			,	
@ModelQ4FY17			,	
@ModelFirstFY17		,	
@ModelSecondFY17		,	
@ModelTotalFY17		,	
@ModelQ1FY18			,	
@ModelQ2FY18			,	
@ModelQ3FY18			,	
@ModelQ4FY18			,	
@ModelFirstFY18		,	
@ModelSecondFY18 ,
@ModelTotalFY18	,
@Status	
	
)
			END
      END
      
      IF @Status = 'A'
 Begin
 				 INSERT INTO dbo.PurchaseDept(
     CustomerName
	,ModelCode
	,CarName
	,SOP
	,ProductType
	,FGPartNo
	,PartName 
	,PartNo 
	 )
            VALUES (
    @CustomerName
	,@ModelCode 
	,@CarName 
	,@SOP 
	,@ProductType 
	,@FGPartNo 
	,@PartName 
	,@PartNo  
	)
 End
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM BPCosting
            WHERE BPCostingId = @BPCostingId --and SelectedTypeID=@SelectedTypeID
      END
END

GO

CREATE PROCEDURE [dbo].[SP_PurchaseDept]
     @Action VARCHAR(10),
    @PurchaseId	int = 0, 
	@CustomerName		[nvarchar](50)= NULL,
	@ModelCode			 [nvarchar](10)= NULL,
	@CarName		[nvarchar](20)= NULL,
	@SOP					[nvarchar](20) =NULL,
	@ProductType		 [nvarchar](10)= NULL,
	@FGPartNo				[nvarchar](20)= NULL,
	@PartName			[nvarchar](150)= NULL,
	@PartNo				[nvarchar](20)= NULL,
	@Classification [nvarchar](50) = NULL,
    @Category [nvarchar](50) = NULL,
    @Supplier [nvarchar](50) = NULL,
	@Location [nvarchar](50) = NULL,
	@Material [nvarchar](50) = NULL,
	@Tyre2Supplier [nvarchar](50) = NULL,
	@Remarks [nvarchar](100) = NULL,
	@Status [nvarchar](10) = NULL
   --@SelectedTypeID   int = 0,
  
AS
BEGIN
      SET NOCOUNT ON;

	      --SELECT
    IF @Action = 'SELECT'
      BEGIN
            SELECT * 
            FROM PurchaseDept where  (Status != 'A' or Status is null)
			 --where SelectedTypeID=@SelectedTypeID
      END
 
    IF @Action = 'UPDATE'
      BEGIN
           
DECLARE @PurApr16 INT
DECLARE @PurMay16 INT
DECLARE	@Purjun16	INT
DECLARE	@Purjul16	INT
DECLARE	@Puraug16	INT
DECLARE	@Pursep16	INT
DECLARE	@Puroct16	INT
DECLARE	@PurNov16	INT
DECLARE	@PurDec16	INT
DECLARE	@PurJan17	INT
DECLARE	@PurFeb17	INT
DECLARE	@PurMar17	INT
DECLARE	@PurFirstFY16	INT
DECLARE @PurSecondFY16 INT
DECLARE	@PurTotalFY16	 INT
DECLARE	@PurQ1FY17 INT
DECLARE	@PurQ2FY17 INT
DECLARE	@PurQ3FY17 INT
DECLARE	@PurQ4FY17 INT
DECLARE	@PurFirstFY17	 INT
DECLARE	@PurSecondFY17 INT
DECLARE	@PurTotalFY17	INT
DECLARE	@PurQ1FY18	INT
DECLARE	@PurQ2FY18	INT
DECLARE @PurQ3FY18	INT
DECLARE	@PurQ4FY18	INT
DECLARE	@PurFirstFY18	INT
DECLARE	@PurSecondFY18 INT
DECLARE	@PurTotalFY18	 INT

--RMReqmt
DECLARE @RMReqmtApr16 INT
DECLARE @RMReqmtMay16 INT
DECLARE	@RMReqmtjun16	INT
DECLARE	@RMReqmtjul16	INT
DECLARE	@RMReqmtaug16	INT
DECLARE	@RMReqmtsep16	INT
DECLARE	@RMReqmtoct16	INT
DECLARE	@RMReqmtNov16	INT
DECLARE	@RMReqmtDec16	INT
DECLARE	@RMReqmtJan17	INT
DECLARE	@RMReqmtFeb17	INT
DECLARE	@RMReqmtMar17	INT
DECLARE	@RMReqmtFirstFY16	INT
DECLARE @RMReqmtSecondFY16 INT
DECLARE	@RMReqmtTotalFY16	 INT
DECLARE	@RMReqmtQ1FY17 INT
DECLARE	@RMReqmtQ2FY17 INT
DECLARE	@RMReqmtQ3FY17 INT
DECLARE	@RMReqmtQ4FY17 INT
DECLARE	@RMReqmtFirstFY17	 INT
DECLARE	@RMReqmtSecondFY17 INT
DECLARE	@RMReqmtTotalFY17	INT
DECLARE	@RMReqmtQ1FY18	INT
DECLARE	@RMReqmtQ2FY18	INT
DECLARE @RMReqmtQ3FY18	INT
DECLARE	@RMReqmtQ4FY18	INT
DECLARE	@RMReqmtFirstFY18	INT
DECLARE	@RMReqmtSecondFY18 INT
DECLARE	@RMReqmtTotalFY18	 INT


DECLARE	@PurMinValFirstFY16	INT
DECLARE	@PurMinValSecondFY16 INT
DECLARE	@PurMinValFirstFY17	INT
DECLARE	@PurMinValSecondFY17 INT
DECLARE	@PurMinValFirstFY18	INT
DECLARE	@PurMinValSecondFY18 INT

DECLARE	@RMPurFirstFY16	INT
DECLARE	@RMPurSecondFY16 INT
DECLARE	@RMPurFirstFY17	INT
DECLARE	@RMPurSecondFY17 INT
DECLARE	@RMPurFirstFY18	INT
DECLARE	@RMPurSecondFY18 INT

 
DECLARE	@RmNetWt	 INT
DECLARE	@RmGrossWt	 INT
DECLARE	@UnitPrice	 INT
 DECLARE @Qty INT

--Get qty value from design 
Select  @Qty = Qty FROM Design where PartNo = @PartNo
--Get RmNetWt,RmGrossWt value from PeDept 
Select  @RmNetWt = RmNetWt,@RmGrossWt = RmGrossWt FROM PeDept where PartNo = @PartNo

Select  @UnitPrice = UnitPriceInr FROM dbo.BPCosting where PartNo = @PartNo
--Get month qty from Bpcosting table and apply formula qty*modelqty

SELECT  @PurApr16 = ModelApr16*@Qty,
		@PurMay16=ModelMay16*@Qty ,
		@Purjun16=ModelJun16*@Qty ,
		@Purjul16=Modeljul16*@Qty ,
		@Puraug16=Modelaug16*@Qty ,
		@Pursep16=Modelsep16*@Qty ,
		@Puroct16=Modeloct16*@Qty ,
		@PurNov16=ModelNov16*@Qty ,
		@PurDec16=ModelDec16*@Qty ,
		@PurJan17=ModelJan17*@Qty ,
		@PurFeb17=ModelFeb17*@Qty ,
		@PurMar17=ModelMar17*@Qty ,
		@PurQ1FY17 =ModelQ1FY17*@Qty,
		@PurQ2FY17 = ModelQ2FY17*@Qty,
		@PurQ3FY17 =ModelQ3FY17*@Qty,
		@PurQ4FY17 = ModelQ4FY17*@Qty,
		@PurQ1FY18 =ModelQ1FY18*@Qty,
		@PurQ2FY18 = ModelQ2FY18*@Qty,
		@PurQ3FY18 =ModelQ3FY18*@Qty,
		@PurQ4FY18 = ModelQ4FY18*@Qty
		FROM BPCosting where PartNo = @PartNo	

SELECT @PurFirstFY16 =@PurApr16 + @PurMay16 + @Purjun16 +@Puraug16 + @Purjul16 +@Pursep16,
       @PurSecondFY16 = @Puroct16 + @PurNov16 + @PurDec16 +@PurJan17 + @PurFeb17 +@PurMar17,
       @PurFirstFY17 = @PurQ1FY17 + @PurQ2FY17,
       @PurSecondFY17 = @PurQ3FY17 + @PurQ4FY17,
       @PurFirstFY18 = @PurQ1FY18 + @PurQ2FY18,
       @PurSecondFY18 = @PurQ3FY18 + @PurQ4FY18,
       
       ---PurMinval
       
       @PurMinValFirstFY16 = @PurFirstFY16 * @UnitPrice,
       @PurMinValSecondFY16 = @PurSecondFY16 * @UnitPrice,
        @PurMinValFirstFY17 = @PurFirstFY17 * @UnitPrice,
       @PurMinValSecondFY17 = @PurSecondFY17 * @UnitPrice,
        @PurMinValFirstFY18 = @PurFirstFY18 * @UnitPrice,
       @PurMinValSecondFY18 = @PurSecondFY18 * @UnitPrice,
              
       ---RMReqmt
       @RMReqmtApr16 = @PurApr16*@RmGrossWt,
		@RMReqmtMay16=@PurMay16*@RmGrossWt ,
		@RMReqmtjun16=@PurJun16*@RmGrossWt ,
		@RMReqmtjul16=@Purjul16*@RmGrossWt ,
		@RMReqmtaug16=@Puraug16*@RmGrossWt ,
		@RMReqmtsep16=@Pursep16*@RmGrossWt ,
		@RMReqmtoct16=@Puroct16*@RmGrossWt ,
		@RMReqmtNov16=@PurNov16*@RmGrossWt ,
		@RMReqmtDec16=@PurDec16*@RmGrossWt ,
		@RMReqmtJan17=@PurJan17*@RmGrossWt ,
		@RMReqmtFeb17=@PurFeb17*@RmGrossWt ,
		@RMReqmtMar17=@PurMar17*@RmGrossWt ,
		@RMReqmtFirstFY16 =@RMReqmtApr16 + @RMReqmtMay16 + @RMReqmtjun16 +@RMReqmtaug16 + @RMReqmtjul16 +@RMReqmtsep16,
		@RMReqmtSecondFY16 = @RMReqmtoct16 + @RMReqmtNov16 + @RMReqmtDec16 +@RMReqmtJan17 + @RMReqmtFeb17 +@RMReqmtMar17,
		@RMReqmtQ1FY17 =@PurQ1FY17*@RmGrossWt,
		@RMReqmtQ2FY17 = @PurQ2FY17*@RmGrossWt,
		@RMReqmtQ3FY17 =@PurQ3FY17*@RmGrossWt,
		@RMReqmtQ4FY17 = @PurQ4FY17*@RmGrossWt,
		@RMReqmtFirstFY17 = @RMReqmtQ1FY17 + @RMReqmtQ2FY17,
        @RMReqmtSecondFY17 = @RMReqmtQ3FY17 + @RMReqmtQ4FY17,
		@RMReqmtQ1FY18 =@PurQ1FY18*@RmGrossWt,
		@RMReqmtQ2FY18 = @PurQ2FY18*@RmGrossWt,
		@RMReqmtQ3FY18 =@PurQ3FY18*@RmGrossWt,
		@RMReqmtQ4FY18 = @PurQ4FY18*@RmGrossWt,
        @RMReqmtFirstFY18 = @RMReqmtQ1FY18 + @RMReqmtQ2FY18,
        @RMReqmtSecondFY18 = @RMReqmtQ3FY18 + @RMReqmtQ4FY18,
        
        ---RMPur 
         @RMPurFirstFY16 = @RMReqmtFirstFY16 * @UnitPrice,
       @RMPurSecondFY16 = @RMReqmtSecondFY16 * @UnitPrice,
        @RMPurFirstFY17 = @RMReqmtFirstFY17 * @UnitPrice,
       @RMPurSecondFY17 = @RMReqmtSecondFY17 * @UnitPrice,
        @RMPurFirstFY18 = @RMReqmtFirstFY18 * @UnitPrice,
       @RMPurSecondFY18 = @RMReqmtSecondFY18 * @UnitPrice
            UPDATE PurchaseDept
			SET 
        CustomerName	      =  @CustomerName       ,
 ModelCode		 	  =   @ModelCode				 ,
 CarName		 	  =   @CarName					 ,
 SOP			 	  = @SOP						 ,
 ProductType	 	  = @ProductType				 ,
 FGPartNo		 	  = @FGPartNo					 ,
 PartName		 	  = @PartName					 ,
 PartNo			 	  = @PartNo						 ,
 
 Classification 	  = @Classification,
 Category 	  = @Category 			 ,
 Supplier	  = @Supplier			 ,
 Location	  = @Location			 ,
 Material     = @Material ,
 Tyre2Supplier	 = @Tyre2Supplier,
 Remarks = @Remarks,
 Status	 =@Status,
 PurApr16 =@PurApr16   ,   
PurMay16 =@PurMay16    ,   
Purjun16 =@Purjun16		,	
Purjul16 =@Purjul16		,	
Puraug16 =@Puraug16		,	
Pursep16 =@Pursep16		,	
Puroct16 =@Puroct16		,	
PurNov16 =@PurNov16		,	
PurDec16 =@PurDec16		,	
PurJan17 =@PurJan17		,	
PurFeb17 =@PurFeb17		,	
PurMar17 =@PurMar17		,	
PurFirstFY16 =@PurFirstFY16		,	
PurSecondFY16 =@PurSecondFY16		,	
PurTotalFY16 =@PurFirstFY16 + @PurSecondFY16,	
PurQ1FY17	=@PurQ1FY17	,	
PurQ2FY17	=@PurQ2FY17	,	
PurQ3FY17	=@PurQ3FY17,	
PurQ4FY17	=@PurQ4FY17	,	
PurFirstFY17 =@PurFirstFY17	,	
PurSecondFY17 =@PurSecondFY17,	
PurTotalFY17 = @PurFirstFY17 + @PurSecondFY17 ,		
PurQ1FY18	=@PurQ1FY18	,	
PurQ2FY18	=@PurQ2FY18	,		
PurQ3FY18	=@PurQ3FY18	,		
PurQ4FY18	=@PurQ4FY18	,	
PurFirstFY18 =@PurFirstFY18	,
PurSecondFY18 =@PurSecondFY18,	
PurTotalFY18 = @PurFirstFY18 + @PurSecondFY18,
PurMinValApr16 =	@PurApr16 * @UnitPrice ,   				
PurMinValMay16 = 	@PurMay16 * @UnitPrice,   				
PurMinValjun16	=@Purjun16 * @UnitPrice			,	
PurMinValjul16=	@Purjul16 * @UnitPrice			,	
PurMinValaug16	=@Puraug16 * @UnitPrice			,	
PurMinValsep16	=@Pursep16 * @UnitPrice			,	
PurMinValoct16	=@Puroct16 * @UnitPrice			,	
PurMinValNov16	=@PurNov16 * @UnitPrice			,	
PurMinValDec16	=@PurDec16 * @UnitPrice			,	
PurMinValJan17 =	@PurJan17 * @UnitPrice			,	
PurMinValFeb17 =	@PurFeb17 * @UnitPrice			,	
PurMinValMar17	=@PurMar17 * @UnitPrice			,	
PurMinValFirstFY16 =	@PurMinValFirstFY16,				
PurMinValSecondFY16 =	@PurMinValSecondFY16 ,				
PurMinValTotalFY16	= @PurMinValFirstFY16 + @PurMinValSecondFY16,				
PurMinValQ1FY17	=@PurQ1FY17 * @UnitPrice		,		
PurMinValQ2FY17	=@PurQ2FY17 * @UnitPrice			,	
PurMinValQ3FY17	=@PurQ3FY17 * @UnitPrice			,	
PurMinValQ4FY17	=@PurQ4FY17 * @UnitPrice			,	
PurMinValFirstFY17	=@PurMinValFirstFY17  ,				
PurMinValSecondFY17 =	@PurMinValSecondFY17,				
PurMinValTotalFY17 =	@PurMinValFirstFY17 + @PurMinValSecondFY17 ,				
PurMinValQ1FY18 =	@PurQ1FY18 * @UnitPrice			,	
PurMinValQ2FY18 =	@PurQ2FY18 * @UnitPrice			,	
PurMinValQ3FY18	=@PurQ3FY18 * @UnitPrice		,		
PurMinValQ4FY18 =	@PurQ4FY18 * @UnitPrice			,	
PurMinValFirstFY18 =	@PurMinValFirstFY18,				
PurMinValSecondFY18 =	@PurMinValSecondFY17,				
PurMinValTotalFY18	=@PurMinValFirstFY18 + @PurMinValSecondFY17,				

RMReqmtApr16 =@RMReqmtApr16          ,   				
RMReqmtMay16 =@RMReqmtMay16          ,   				
RMReqmtjun16 =@RMReqmtjun16			,	
RMReqmtjul16=@RMReqmtjul16			,	
RMReqmtaug16=@RMReqmtaug16			,	
RMReqmtsep16=@RMReqmtsep16			,	
RMReqmtoct16=@RMReqmtoct16			,	
RMReqmtNov16=@RMReqmtNov16			,	
RMReqmtDec16=@RMReqmtDec16			,	
RMReqmtJan17=@RMReqmtJan17			,	
RMReqmtFeb17=@RMReqmtFeb17			,	
RMReqmtMar17=@RMReqmtMar17			,	
RMReqmtFirstFY16=@RMReqmtFirstFY16,				
RMReqmtSecondFY16=@RMReqmtSecondFY16 ,				
RMReqmtTotalFY16=@RMReqmtFirstFY16 + @RMReqmtSecondFY16,				
RMReqmtQ1FY17=@RMReqmtQ1FY17			,	
RMReqmtQ2FY17=@RMReqmtQ2FY17			,	
RMReqmtQ3FY17=@RMReqmtQ3FY17			,	
RMReqmtQ4FY17=@RMReqmtQ4FY17			,	
RMReqmtFirstFY17=@RMReqmtFirstFY17  ,				
RMReqmtSecondFY17=@RMReqmtSecondFY17,				
RMReqmtTotalFY17=@RMReqmtFirstFY17 + @RMReqmtSecondFY17 ,				
RMReqmtQ1FY18=@RMReqmtQ1FY18			,	
RMReqmtQ2FY18=@RMReqmtQ2FY18			,	
RMReqmtQ3FY18=@RMReqmtQ3FY18			,	
RMReqmtQ4FY18=@RMReqmtQ4FY18			,	
RMReqmtFirstFY18=@RMReqmtFirstFY18,				
RMReqmtSecondFY18=@RMReqmtSecondFY18,				
RMReqmtTotalFY18=@RMReqmtFirstFY18 + @RMReqmtSecondFY18,				


RMPurApr16 =@RMReqmtApr16 * @UnitPrice ,   			
RMPurMay16 =@RMReqmtMay16 * @UnitPrice,   			
RMPurjun16=@RMReqmtjun16 * @UnitPrice			,
RMPurjul16=@RMReqmtjul16 * @UnitPrice			,
RMPuraug16=@RMReqmtaug16 * @UnitPrice			,
RMPursep16=@RMReqmtsep16 * @UnitPrice			,
RMPuroct16=@RMReqmtoct16 * @UnitPrice			,
RMPurNov16=@RMReqmtNov16 * @UnitPrice			,
RMPurDec16=@RMReqmtDec16 * @UnitPrice			,
RMPurJan17=@RMReqmtJan17 * @UnitPrice			,
RMPurFeb17=@RMReqmtFeb17 * @UnitPrice			,
RMPurMar17=@RMReqmtMar17 * @UnitPrice			,
RMPurFirstFY16=@RMPurFirstFY16,			
RMPurSecondFY16=@RMPurSecondFY16 ,			
RMPurTotalFY16=@RMPurFirstFY16 + @RMPurSecondFY16,			
RMPurQ1FY17=@RMReqmtQ1FY17 * @UnitPrice		,	
RMPurQ2FY17=@RMReqmtQ2FY17 * @UnitPrice			,
RMPurQ3FY17=@RMReqmtQ3FY17 * @UnitPrice			,
RMPurQ4FY17	=@RMReqmtQ4FY17 * @UnitPrice			,
RMPurFirstFY17=@RMPurFirstFY17  ,			
RMPurSecondFY17=@RMPurSecondFY17,			
RMPurTotalFY17=@RMPurFirstFY17 + @RMPurSecondFY17 ,			
RMPurQ1FY18	=@RMReqmtQ1FY18 * @UnitPrice			,
RMPurQ2FY18	=@RMReqmtQ2FY18 * @UnitPrice			,
RMPurQ3FY18	=@RMReqmtQ3FY18 * @UnitPrice		,	
RMPurQ4FY18	=@RMReqmtQ4FY18 * @UnitPrice			,
RMPurFirstFY18=@RMPurFirstFY18,			
RMPurSecondFY18	=@RMPurSecondFY18,			
RMPurTotalFY18	=@RMPurFirstFY18 + @PurSecondFY18			

WHERE PurchaseId = @PurchaseId

	IF @@ROWCOUNT = 0 
     BEGIN
 

INSERT INTO PurchaseDept(
 CustomerName	,
 ModelCode		,
 CarName		,
 SOP			,
 ProductType	,
 FGPartNo		,
 PartName		,
 PartNo			,
 Classification,
 Category,
 Supplier,
 Location,
 Material,
 Tyre2Supplier,
 Remarks,
 Status,
--SelectedTypeID	,
PurApr16          ,   
PurMay16          ,   
Purjun16			,	
Purjul16			,	
Puraug16			,	
Pursep16			,	
Puroct16			,	
PurNov16			,	
PurDec16			,	
PurJan17			,	
PurFeb17			,	
PurMar17			,	
PurFirstFY16		,	
PurSecondFY16		,	
PurTotalFY16		,	
PurQ1FY17			,	
PurQ2FY17			,	
PurQ3FY17			,	
PurQ4FY17			,	
PurFirstFY17		,	
PurSecondFY17		,	
PurTotalFY17		,	
PurQ1FY18			,	
PurQ2FY18			,	
PurQ3FY18			,	
PurQ4FY18			,	
PurFirstFY18		,
PurSecondFY18		,	
PurTotalFY18	    ,
PurMinValApr16          ,   
PurMinValMay16          ,   
PurMinValjun16			,	
PurMinValjul16			,	
PurMinValaug16			,	
PurMinValsep16			,	
PurMinValoct16			,	
PurMinValNov16			,	
PurMinValDec16			,	
PurMinValJan17			,	
PurMinValFeb17			,	
PurMinValMar17			,	
PurMinValFirstFY16		,	
PurMinValSecondFY16		,	
PurMinValTotalFY16		,	
PurMinValQ1FY17			,	
PurMinValQ2FY17			,	
PurMinValQ3FY17			,	
PurMinValQ4FY17			,	
PurMinValFirstFY17		,	
PurMinValSecondFY17		,	
PurMinValTotalFY17		,	
PurMinValQ1FY18			,	
PurMinValQ2FY18			,	
PurMinValQ3FY18			,	
PurMinValQ4FY18			,	
PurMinValFirstFY18		,
PurMinValSecondFY18		,	
PurMinValTotalFY18		,
RMReqmtApr16          ,   
RMReqmtMay16          ,   
RMReqmtjun16			,	
RMReqmtjul16			,	
RMReqmtaug16			,	
RMReqmtsep16			,	
RMReqmtoct16			,	
RMReqmtNov16			,	
RMReqmtDec16			,	
RMReqmtJan17			,	
RMReqmtFeb17			,	
RMReqmtMar17			,	
RMReqmtFirstFY16		,	
RMReqmtSecondFY16		,	
RMReqmtTotalFY16		,	
RMReqmtQ1FY17			,	
RMReqmtQ2FY17			,	
RMReqmtQ3FY17			,	
RMReqmtQ4FY17			,	
RMReqmtFirstFY17		,	
RMReqmtSecondFY17		,	
RMReqmtTotalFY17		,	
RMReqmtQ1FY18			,	
RMReqmtQ2FY18			,	
RMReqmtQ3FY18			,	
RMReqmtQ4FY18			,	
RMReqmtFirstFY18		,	
RMReqmtSecondFY18		,	
RMReqmtTotalFY18		,

RMPurApr16          ,   
RMPurMay16          ,   
RMPurjun16			,	
RMPurjul16			,	
RMPuraug16			,	
RMPursep16			,	
RMPuroct16			,	
RMPurNov16			,	
RMPurDec16			,	
RMPurJan17			,	
RMPurFeb17			,	
RMPurMar17			,	
RMPurFirstFY16		,	
RMPurSecondFY16		,	
RMPurTotalFY16		,	
RMPurQ1FY17			,	
RMPurQ2FY17			,	
RMPurQ3FY17			,	
RMPurQ4FY17			,	
RMPurFirstFY17		,	
RMPurSecondFY17		,	
RMPurTotalFY17		,	
RMPurQ1FY18			,	
RMPurQ2FY18			,	
RMPurQ3FY18			,	
RMPurQ4FY18			,	
RMPurFirstFY18		,	
RMPurSecondFY18		,	
RMPurTotalFY18		
	)
Values
(
@CustomerName	     ,
@ModelCode			 ,
@CarName			 ,
@SOP				 ,
@ProductType		 ,
@FGPartNo			 ,
@PartName			 ,
@PartNo				 ,
 @Classification,
 @Category,
 @Supplier,
 @Location,
 @Material,
 @Tyre2Supplier,
 @Remarks,
@Status	    ,

@PurApr16          ,   
@PurMay16          ,   
@Purjun16			,	
@Purjul16			,	
@Puraug16			,	
@Pursep16			,	
@Puroct16			,	
@PurNov16			,	
@PurDec16			,	
@PurJan17			,	
@PurFeb17			,	
@PurMar17			,	
@PurFirstFY16,	
@PurSecondFY16 ,	
 @PurFirstFY16 + @PurSecondFY16,	
@PurQ1FY17			,	
@PurQ2FY17			,	
@PurQ3FY17			,	
@PurQ4FY17			,	
@PurFirstFY17  ,	
@PurSecondFY17,
@PurFirstFY17 + @PurSecondFY17 ,	
@PurQ1FY18			,	
@PurQ2FY18			,	
@PurQ3FY18			,	
@PurQ4FY18			,	
@PurFirstFY18,
@PurSecondFY18,
@PurFirstFY18 + @PurSecondFY18,

-- PurQty * UnitPrice
@PurApr16 * @UnitPrice ,   
@PurMay16 * @UnitPrice,   
@Purjun16 * @UnitPrice			,	
@Purjul16 * @UnitPrice			,	
@Puraug16 * @UnitPrice			,	
@Pursep16 * @UnitPrice			,	
@Puroct16 * @UnitPrice			,	
@PurNov16 * @UnitPrice			,	
@PurDec16 * @UnitPrice			,	
@PurJan17 * @UnitPrice			,	
@PurFeb17 * @UnitPrice			,	
@PurMar17 * @UnitPrice			,	
@PurMinValFirstFY16,	
@PurMinValSecondFY16 ,	
 @PurMinValFirstFY16 + @PurMinValSecondFY16,	
@PurQ1FY17 * @UnitPrice		,	
@PurQ2FY17 * @UnitPrice			,	
@PurQ3FY17 * @UnitPrice			,	
@PurQ4FY17 * @UnitPrice			,	
@PurMinValFirstFY17  ,	
@PurMinValSecondFY17,
@PurMinValFirstFY17 + @PurMinValSecondFY17 ,	
@PurQ1FY18 * @UnitPrice			,	
@PurQ2FY18 * @UnitPrice			,	
@PurQ3FY18 * @UnitPrice		,	
@PurQ4FY18 * @UnitPrice			,	
@PurMinValFirstFY18,
@PurMinValSecondFY17,
@PurMinValFirstFY18 + @PurMinValSecondFY17,

@RMReqmtApr16          ,   
@RMReqmtMay16          ,   
@RMReqmtjun16			,	
@RMReqmtjul16			,	
@RMReqmtaug16			,	
@RMReqmtsep16			,	
@RMReqmtoct16			,	
@RMReqmtNov16			,	
@RMReqmtDec16			,	
@RMReqmtJan17			,	
@RMReqmtFeb17			,	
@RMReqmtMar17			,	
@RMReqmtFirstFY16,	
@RMReqmtSecondFY16 ,	
 @RMReqmtFirstFY16 + @RMReqmtSecondFY16,	
@RMReqmtQ1FY17			,	
@RMReqmtQ2FY17			,	
@RMReqmtQ3FY17			,	
@RMReqmtQ4FY17			,	
@RMReqmtFirstFY17  ,	
@RMReqmtSecondFY17,
@RMReqmtFirstFY17 + @RMReqmtSecondFY17 ,	
@RMReqmtQ1FY18			,	
@RMReqmtQ2FY18			,	
@RMReqmtQ3FY18			,	
@RMReqmtQ4FY18			,	
@RMReqmtFirstFY18,
@RMReqmtSecondFY18,
@RMReqmtFirstFY18 + @RMReqmtSecondFY18,

---RMPur
@RMReqmtApr16 * @UnitPrice ,   
@RMReqmtMay16 * @UnitPrice,   
@RMReqmtjun16 * @UnitPrice			,	
@RMReqmtjul16 * @UnitPrice			,	
@RMReqmtaug16 * @UnitPrice			,	
@RMReqmtsep16 * @UnitPrice			,	
@RMReqmtoct16 * @UnitPrice			,	
@RMReqmtNov16 * @UnitPrice			,	
@RMReqmtDec16 * @UnitPrice			,	
@RMReqmtJan17 * @UnitPrice			,	
@RMReqmtFeb17 * @UnitPrice			,	
@RMReqmtMar17 * @UnitPrice			,	
@RMPurFirstFY16,	
@RMPurSecondFY16 ,	
 @RMPurFirstFY16 + @RMPurSecondFY16,	
@RMReqmtQ1FY17 * @UnitPrice		,	
@RMReqmtQ2FY17 * @UnitPrice			,	
@RMReqmtQ3FY17 * @UnitPrice			,	
@RMReqmtQ4FY17 * @UnitPrice			,	
@RMPurFirstFY17  ,	
@RMPurSecondFY17,
@RMPurFirstFY17 + @RMPurSecondFY17 ,	
@RMReqmtQ1FY18 * @UnitPrice			,	
@RMReqmtQ2FY18 * @UnitPrice			,	
@RMReqmtQ3FY18 * @UnitPrice		,	
@RMReqmtQ4FY18 * @UnitPrice			,	
@RMPurFirstFY18,
@RMPurSecondFY18,
@RMPurFirstFY18 + @PurSecondFY18
	
)
      END
      END
 
      --DELETE
    IF @Action = 'DELETE'
      BEGIN
            DELETE FROM PurchaseDept
            WHERE PurchaseId = @PurchaseId --and SelectedTypeID=@SelectedTypeID
      END
END

GO

CREATE PROCEDURE [dbo].[SP_ExportData]
	-- Add the parameters for the stored procedure here
	@partNo nvarchar(50)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select *,'Design' from dbo.Design where PartNo=@partNo;
	select *,'PeDept' from PeDept where PartNo=@partNo;
	select *,'PcDept' from PcDept where PartNo=@partNo;
	select *,'BPCosting' from BPCosting where PartNo=@partNo;
	select *,'PurchaseDept' from PurchaseDept where PartNo=@partNo;
	
END

GO

SET ANSI_PADDING OFF
GO


