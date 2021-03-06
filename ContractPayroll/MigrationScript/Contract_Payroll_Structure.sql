USE [ATTENDANCE]
GO
/****** Object:  Table [dbo].[Cont_DailyOth]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_DailyOth](
	[PayPeriod] [int] NOT NULL,
	[EmpUnqID] [nvarchar](10) NOT NULL,
	[tDate] [date] NOT NULL,
	[SrNo] [int] NOT NULL,
	[LeaveTyp] [nvarchar](3) NULL,
	[ABPR] [varchar](1) NOT NULL,
	[WrkHrs] [float] NOT NULL,
	[TpaHrs] [float] NOT NULL,
	[CBasic] [float] NOT NULL,
	[DaysPay] [int] NOT NULL,
	[Cal_Basic] [float] NOT NULL,
	[TpaAmt] [float] NOT NULL,
	[CostCode] [varchar](50) NULL,
	[CoCommRate] [float] NOT NULL,
	[CoCommAmt] [float] NOT NULL,
	[WODays] [int] NOT NULL,
	[CoCommWORate] [float] NOT NULL,
	[CoCommWOAmt] [float] NOT NULL,
	[AddDt] [datetime] NULL,
	[AddId] [varchar](50) NULL,
	[UpdDt] [datetime] NULL,
	[UpdId] [varchar](50) NULL,
 CONSTRAINT [PK_Cont_DailyOth] PRIMARY KEY CLUSTERED 
(
	[PayPeriod] ASC,
	[EmpUnqID] ASC,
	[tDate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_MastBasic]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_MastBasic](
	[PayPeriod] [int] NOT NULL,
	[EmpUnqID] [nvarchar](10) NOT NULL,
	[SrNo] [int] NOT NULL,
	[FromDt] [date] NULL,
	[ToDt] [date] NULL,
	[cBasic] [float] NULL,
	[AddDt] [datetime] NULL,
	[Addid] [nvarchar](50) NULL,
	[UpdDt] [datetime] NULL,
	[UpdId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cont_MastBasic] PRIMARY KEY CLUSTERED 
(
	[PayPeriod] ASC,
	[EmpUnqID] ASC,
	[SrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_MastEmp]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_MastEmp](
	[PayPeriod] [int] NOT NULL,
	[EmpUnqID] [nvarchar](10) NOT NULL,
	[EmpName] [nvarchar](100) NULL,
	[FatherName] [nvarchar](100) NULL,
	[BirthDt] [date] NULL,
	[JoinDt] [date] NULL,
	[Gender] [char](1) NOT NULL,
	[UnitCode] [nvarchar](3) NULL,
	[UnitDesc] [nvarchar](100) NULL,
	[DeptCode] [nvarchar](3) NULL,
	[DeptDesc] [varchar](100) NULL,
	[StatCode] [nvarchar](3) NULL,
	[StatDesc] [varchar](100) NULL,
	[DesgCode] [nvarchar](3) NULL,
	[DesgDesc] [varchar](100) NULL,
	[GradeCode] [nvarchar](3) NULL,
	[GradeDesc] [varchar](100) NULL,
	[CatCode] [nvarchar](3) NULL,
	[CatDesc] [varchar](100) NULL,
	[ContCode] [nvarchar](3) NULL,
	[ContDesc] [nvarchar](100) NULL,
	[ESINo] [varchar](100) NULL,
	[PFNo] [varchar](50) NULL,
	[Active] [bit] NOT NULL,
	[PFFlg] [bit] NOT NULL,
	[PTaxFlg] [bit] NOT NULL,
	[ESIFlg] [bit] NOT NULL,
	[LWFFlg] [bit] NOT NULL,
	[DeathFlg] [bit] NOT NULL,
	[CBasic] [float] NOT NULL,
	[LeftDt] [date] NULL,
	[AddDt] [datetime] NULL,
	[Addid] [varchar](50) NULL,
	[UpdDt] [datetime] NULL,
	[UpdID] [varchar](50) NULL,
 CONSTRAINT [PK_Cont_MastEmp] PRIMARY KEY CLUSTERED 
(
	[PayPeriod] ASC,
	[EmpUnqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_MastFrm]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_MastFrm](
	[FormID] [int] NOT NULL,
	[SeqID] [int] NOT NULL,
	[FormName] [varchar](50) NOT NULL,
	[MenuName] [varchar](50) NULL,
	[FormDesc] [varchar](50) NULL,
	[SPRightsFlg] [bit] NOT NULL,
 CONSTRAINT [PK_Cont_FrmMast] PRIMARY KEY CLUSTERED 
(
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_MastPayPeriod]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_MastPayPeriod](
	[PayPeriod] [int] NOT NULL,
	[PayDesc] [varchar](100) NOT NULL,
	[FromDt] [date] NOT NULL,
	[ToDt] [date] NOT NULL,
	[isLocked] [bit] NOT NULL,
	[AddDt] [datetime] NULL,
	[Addid] [varchar](50) NULL,
	[UpdDt] [datetime] NULL,
	[UpdID] [varchar](50) NULL,
 CONSTRAINT [PK_Cont_MastPayPeriod] PRIMARY KEY CLUSTERED 
(
	[PayPeriod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_MastUser]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_MastUser](
	[UserID] [nvarchar](50) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[pass] [varchar](100) NULL,
	[Active] [bit] NOT NULL,
	[isAdmin] [bit] NOT NULL,
	[adddt] [smalldatetime] NULL,
	[addid] [nvarchar](10) NULL,
	[upddt] [smalldatetime] NULL,
	[updid] [nvarchar](10) NULL,
 CONSTRAINT [PK_Cont_UserMast] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_MthlyAtn]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_MthlyAtn](
	[PayPeriod] [int] NOT NULL,
	[EmpUnqID] [nvarchar](10) NOT NULL,
	[SrNo] [int] NOT NULL,
	[CostCode] [varchar](50) NULL,
	[Adj_Basic] [float] NOT NULL,
	[Adj_TPAHrs] [float] NOT NULL,
	[Adj_TPAAmt]  AS (([ADJ_Basic]/(8))*[ADJ_TPAHrs]),
	[Adj_DaysPay] [float] NOT NULL,
	[Adj_DaysPayAmt]  AS ([ADJ_Basic]*[ADJ_DaysPay]),
	[Adj_Amt] [float] NOT NULL,
	[Adj_Remarks] [varchar](100) NULL,
	[Cal_Basic] [float] NOT NULL,
	[Cal_DaysPay] [float] NOT NULL,
	[Cal_WODays] [float] NOT NULL,
	[Cal_TpaHrs] [float] NOT NULL,
	[Cal_TpaAmt] [float] NOT NULL,
	[Tot_DaysPay] [float] NOT NULL,
	[Tot_EarnBasic] [float] NOT NULL,
	[Tot_TpaHrs] [float] NOT NULL,
	[Tot_TpaAmt] [float] NOT NULL,
	[Tot_Earnings] [float] NOT NULL,
	[Cal_PF] [float] NOT NULL,
	[Cal_EPF] [float] NOT NULL,
	[Cal_EPS] [float] NOT NULL,
	[CoCommRate] [float] NOT NULL,
	[Adj_CoCommDays] [float] NOT NULL,
	[Cal_CoCommDays] [float] NOT NULL,
	[Cal_CoWoCommDays] [float] NOT NULL,
	[Tot_CoCommDays] [float] NOT NULL,
	[Adj_CoCommAmt] [float] NOT NULL,
	[Cal_CoCommAmt] [float] NOT NULL,
	[Cal_CoCommWoAmt] [float] NOT NULL,
	[Cal_CoCommPFAmt] [float] NOT NULL,
	[Tot_CoCommAmt] [float] NOT NULL,
	[Cal_CoServTaxAmt] [float] NOT NULL,
	[Cal_CoEduTaxAmt] [float] NOT NULL,
	[Cal_CoServTax25Amt] [float] NOT NULL,
	[Cal_CoEduTax25Amt] [float] NOT NULL,
	[AddDt] [datetime] NULL,
	[AddID] [varchar](50) NULL,
	[UpdDt] [datetime] NULL,
	[UpdID] [varchar](50) NULL,
 CONSTRAINT [PK_Cont_MthlyAtn] PRIMARY KEY CLUSTERED 
(
	[PayPeriod] ASC,
	[EmpUnqID] ASC,
	[SrNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_MthlyDed]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_MthlyDed](
	[PayPeriod] [int] NOT NULL,
	[EmpUnqID] [nvarchar](10) NOT NULL,
	[DedCode] [nvarchar](50) NOT NULL,
	[Amount] [float] NOT NULL,
	[AddDt] [datetime] NOT NULL,
	[AddID] [nvarchar](50) NOT NULL,
	[UpdDt] [datetime] NULL,
	[UpdId] [nvarchar](50) NULL,
 CONSTRAINT [PK_Cont_MthlyDed] PRIMARY KEY CLUSTERED 
(
	[PayPeriod] ASC,
	[EmpUnqID] ASC,
	[DedCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_MthlyPay]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_MthlyPay](
	[PayPeriod] [int] NOT NULL,
	[EmpUnqID] [nvarchar](10) NOT NULL,
	[CostCode] [nvarchar](50) NULL,
	[Adj_TPAHrs] [float] NOT NULL,
	[Adj_TPAAmt] [float] NOT NULL,
	[Adj_DaysPay] [float] NOT NULL,
	[Adj_DaysPayAmt] [float] NOT NULL,
	[Adj_Amt] [float] NOT NULL,
	[Cal_Basic] [float] NOT NULL,
	[Cal_DaysPay] [float] NOT NULL,
	[Cal_WODays] [float] NOT NULL,
	[Cal_TpaHrs] [float] NOT NULL,
	[Cal_TpaAmt] [float] NOT NULL,
	[Tot_DaysPay] [float] NOT NULL,
	[Tot_EarnBasic] [float] NOT NULL,
	[Tot_EarnBasicRoundOff] [float] NOT NULL,
	[Tot_TpaHrs] [float] NOT NULL,
	[Tot_TpaAmt] [float] NOT NULL,
	[Tot_TpaRoundoff] [float] NOT NULL,
	[Tot_Earnings] [float] NOT NULL,
	[Tot_EarningsRoundoff] [float] NOT NULL,
	[Ded_PF] [float] NOT NULL,
	[Ded_PF_Roundoff] [float] NOT NULL,
	[Cal_EPF] [float] NOT NULL,
	[Cal_EPS] [float] NOT NULL,
	[Ded_ESI] [float] NOT NULL,
	[Ded_LWF] [float] NOT NULL,
	[Ded_DeathFund] [float] NOT NULL,
	[Ded_Other] [float] NOT NULL,
	[Ded_Mess] [float] NOT NULL,
	[Ded_PTax] [float] NOT NULL,
	[Tot_Ded] [float] NOT NULL,
	[NetPay_RoundOff] [float] NOT NULL,
	[NetPay] [float] NOT NULL,
	[Tot_CoCommDays] [float] NOT NULL,
	[Tot_CoCommAmt] [float] NOT NULL,
	[Tot_CoCommPFAmt] [float] NOT NULL,
	[Tot_CoComm] [float] NOT NULL,
	[Tot_CoServTax] [float] NOT NULL,
	[Tot_CoEduTax] [float] NOT NULL,
	[Tot_CoServTax25] [float] NOT NULL,
	[Tot_CoEduTax25] [float] NOT NULL,
	[AddDt] [datetime] NULL,
	[AddID] [varchar](50) NULL,
	[UpdDt] [datetime] NULL,
	[UpdID] [varchar](50) NULL,
 CONSTRAINT [PK_Cont_MthlyPay] PRIMARY KEY CLUSTERED 
(
	[PayPeriod] ASC,
	[EmpUnqID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_ParaMast]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_ParaMast](
	[PayPeriod] [int] NOT NULL,
	[ParaCode] [nvarchar](30) NOT NULL,
	[ParaDesc] [nvarchar](200) NOT NULL,
	[RsPer] [char](1) NULL,
	[PValue] [numeric](18, 2) NULL,
	[FSlab] [numeric](18, 0) NULL,
	[TSlab] [numeric](18, 0) NULL,
	[BCFLG] [bit] NOT NULL,
	[AppFlg] [bit] NOT NULL,
	[AddDt] [datetime] NULL,
	[AddID] [varchar](50) NULL,
	[UpdDt] [datetime] NULL,
	[UpdID] [varchar](50) NULL,
 CONSTRAINT [PK_Cont_ParaMast] PRIMARY KEY CLUSTERED 
(
	[PayPeriod] ASC,
	[ParaCode] ASC,
	[ParaDesc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_Reports]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_Reports](
	[ReportID] [int] NOT NULL,
	[ReportName] [nvarchar](255) NULL,
	[ReportSQL] [text] NULL,
	[ReportType] [varchar](10) NULL,
 CONSTRAINT [PK_Cont_Reports] PRIMARY KEY CLUSTERED 
(
	[ReportID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Cont_UserRights]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cont_UserRights](
	[UserID] [nvarchar](10) NOT NULL,
	[FormID] [int] NOT NULL,
	[Add1] [bit] NOT NULL,
	[Update1] [bit] NOT NULL,
	[Delete1] [bit] NOT NULL,
	[View1] [bit] NOT NULL,
	[Adddt] [smalldatetime] NULL,
	[AddID] [nvarchar](10) NULL,
	[UpdDT] [smalldatetime] NULL,
	[UpdID] [nvarchar](10) NULL,
 CONSTRAINT [PK_Cont_UserRights_1] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC,
	[FormID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_SrNo]  DEFAULT ((0)) FOR [SrNo]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_ABPR]  DEFAULT ('A') FOR [ABPR]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Table_1_TPA]  DEFAULT ((0)) FOR [TpaHrs]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_CBASIC]  DEFAULT ((0)) FOR [CBasic]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_DAYSPAY]  DEFAULT ((0)) FOR [DaysPay]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_Cal_Basic]  DEFAULT ((0)) FOR [Cal_Basic]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Table_1_TPAAMT]  DEFAULT ((0)) FOR [TpaAmt]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_COCOMM]  DEFAULT ((0)) FOR [CoCommRate]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_CoCommAmt]  DEFAULT ((0)) FOR [CoCommAmt]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Table_1_WODAYS]  DEFAULT ((0)) FOR [WODays]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_CoCommWORate]  DEFAULT ((0)) FOR [CoCommWORate]
GO
ALTER TABLE [dbo].[Cont_DailyOth] ADD  CONSTRAINT [DF_Cont_DailyOth_CoCommWOAmt]  DEFAULT ((0)) FOR [CoCommWOAmt]
GO
ALTER TABLE [dbo].[Cont_MastEmp] ADD  CONSTRAINT [DF_Cont_MastEmp_Gender]  DEFAULT ('M') FOR [Gender]
GO
ALTER TABLE [dbo].[Cont_MastEmp] ADD  CONSTRAINT [DF_Cont_MastEmp_Active]  DEFAULT ((0)) FOR [Active]
GO
ALTER TABLE [dbo].[Cont_MastEmp] ADD  CONSTRAINT [DF_Cont_MastEmp_PFFlg]  DEFAULT ((1)) FOR [PFFlg]
GO
ALTER TABLE [dbo].[Cont_MastEmp] ADD  CONSTRAINT [DF_Cont_MastEmp_PTaxFlg]  DEFAULT ((1)) FOR [PTaxFlg]
GO
ALTER TABLE [dbo].[Cont_MastEmp] ADD  CONSTRAINT [DF_Cont_MastEmp_ESIFlg]  DEFAULT ((1)) FOR [ESIFlg]
GO
ALTER TABLE [dbo].[Cont_MastEmp] ADD  CONSTRAINT [DF_Cont_MastEmp_LWFFlg]  DEFAULT ((1)) FOR [LWFFlg]
GO
ALTER TABLE [dbo].[Cont_MastEmp] ADD  CONSTRAINT [DF_Cont_MastEmp_DeathFlg]  DEFAULT ((1)) FOR [DeathFlg]
GO
ALTER TABLE [dbo].[Cont_MastEmp] ADD  CONSTRAINT [DF_Cont_MastEmp_CBasic]  DEFAULT ((0)) FOR [CBasic]
GO
ALTER TABLE [dbo].[Cont_MastFrm] ADD  CONSTRAINT [DF_Cont_MastFrm_SPRightsFlg]  DEFAULT ((0)) FOR [SPRightsFlg]
GO
ALTER TABLE [dbo].[Cont_MastPayPeriod] ADD  CONSTRAINT [DF_Cont_MastPayPeriod_isLocked]  DEFAULT ((0)) FOR [isLocked]
GO
ALTER TABLE [dbo].[Cont_MastUser] ADD  CONSTRAINT [DF_Cont_MastUser_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Cont_MastUser] ADD  CONSTRAINT [DF_Cont_MastUser_isAdmin]  DEFAULT ((0)) FOR [isAdmin]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_ADJ_Basic]  DEFAULT ((0)) FOR [Adj_Basic]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_ADJ_TPAHrs]  DEFAULT ((0)) FOR [Adj_TPAHrs]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_ADJ_DaysPay]  DEFAULT ((0)) FOR [Adj_DaysPay]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_ADJ_Amt]  DEFAULT ((0)) FOR [Adj_Amt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_CalBasic]  DEFAULT ((0)) FOR [Cal_Basic]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_DaysPay]  DEFAULT ((0)) FOR [Cal_DaysPay]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_WODays]  DEFAULT ((0)) FOR [Cal_WODays]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_TpaHrs]  DEFAULT ((0)) FOR [Cal_TpaHrs]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_TpaAmt]  DEFAULT ((0)) FOR [Cal_TpaAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Tot_DaysPay]  DEFAULT ((0)) FOR [Tot_DaysPay]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Tot_EarnBasic]  DEFAULT ((0)) FOR [Tot_EarnBasic]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Tot_TpaHrs]  DEFAULT ((0)) FOR [Tot_TpaHrs]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Tot_TpaAmt]  DEFAULT ((0)) FOR [Tot_TpaAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Tot_Earnings]  DEFAULT ((0)) FOR [Tot_Earnings]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_PF]  DEFAULT ((0)) FOR [Cal_PF]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_EPF]  DEFAULT ((0)) FOR [Cal_EPF]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_EPS]  DEFAULT ((0)) FOR [Cal_EPS]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_CoCommRate]  DEFAULT ((0)) FOR [CoCommRate]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Adj_CoCommDays]  DEFAULT ((0)) FOR [Adj_CoCommDays]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoCommDays]  DEFAULT ((0)) FOR [Cal_CoCommDays]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoWoCommDays]  DEFAULT ((0)) FOR [Cal_CoWoCommDays]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Tot_CoCommDays]  DEFAULT ((0)) FOR [Tot_CoCommDays]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Adj_CoCommAmt]  DEFAULT ((0)) FOR [Adj_CoCommAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoComm]  DEFAULT ((0)) FOR [Cal_CoCommAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoWoComm]  DEFAULT ((0)) FOR [Cal_CoCommWoAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoCommPFAmt]  DEFAULT ((0)) FOR [Cal_CoCommPFAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Tot_CoCommAmt]  DEFAULT ((0)) FOR [Tot_CoCommAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoServTaxAmt]  DEFAULT ((0)) FOR [Cal_CoServTaxAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoEduTaxAmt]  DEFAULT ((0)) FOR [Cal_CoEduTaxAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoServTax25Amt]  DEFAULT ((0)) FOR [Cal_CoServTax25Amt]
GO
ALTER TABLE [dbo].[Cont_MthlyAtn] ADD  CONSTRAINT [DF_Cont_MthlyAtn_Cal_CoEduTax25Amt]  DEFAULT ((0)) FOR [Cal_CoEduTax25Amt]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_ADJ_TPAHrs]  DEFAULT ((0)) FOR [Adj_TPAHrs]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Adj_TPAAmt]  DEFAULT ((0)) FOR [Adj_TPAAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_ADJ_DaysPay]  DEFAULT ((0)) FOR [Adj_DaysPay]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Adj_DaysPayAmt]  DEFAULT ((0)) FOR [Adj_DaysPayAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_ADJ_Amt]  DEFAULT ((0)) FOR [Adj_Amt]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_CalBasic]  DEFAULT ((0)) FOR [Cal_Basic]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_DaysPay]  DEFAULT ((0)) FOR [Cal_DaysPay]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_WODays]  DEFAULT ((0)) FOR [Cal_WODays]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_TpaHrs]  DEFAULT ((0)) FOR [Cal_TpaHrs]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_TpaAmt]  DEFAULT ((0)) FOR [Cal_TpaAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_DaysPay]  DEFAULT ((0)) FOR [Tot_DaysPay]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_EarnBasic]  DEFAULT ((0)) FOR [Tot_EarnBasic]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_EarnBasicRoundOff]  DEFAULT ((0)) FOR [Tot_EarnBasicRoundOff]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_TpaHrs]  DEFAULT ((0)) FOR [Tot_TpaHrs]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_TpaAmt]  DEFAULT ((0)) FOR [Tot_TpaAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_TpaRoundoff]  DEFAULT ((0)) FOR [Tot_TpaRoundoff]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_Earnings]  DEFAULT ((0)) FOR [Tot_Earnings]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_EarningsRoundoff]  DEFAULT ((0)) FOR [Tot_EarningsRoundoff]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_PF]  DEFAULT ((0)) FOR [Ded_PF]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Ded_PF_Roundoff]  DEFAULT ((0)) FOR [Ded_PF_Roundoff]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_EPF]  DEFAULT ((0)) FOR [Cal_EPF]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_EPS]  DEFAULT ((0)) FOR [Cal_EPS]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_ESI]  DEFAULT ((0)) FOR [Ded_ESI]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_LWF]  DEFAULT ((0)) FOR [Ded_LWF]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Ded_DeathFund]  DEFAULT ((0)) FOR [Ded_DeathFund]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Del_OtherDed]  DEFAULT ((0)) FOR [Ded_Other]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Ded_Mess]  DEFAULT ((0)) FOR [Ded_Mess]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Ded_PTax]  DEFAULT ((0)) FOR [Ded_PTax]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_Ded]  DEFAULT ((0)) FOR [Tot_Ded]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_NetPay_RoundOff]  DEFAULT ((0)) FOR [NetPay_RoundOff]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_NetPay]  DEFAULT ((0)) FOR [NetPay]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_CoCommDays]  DEFAULT ((0)) FOR [Tot_CoCommDays]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_CoComm]  DEFAULT ((0)) FOR [Tot_CoCommAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_CoCommPFAmt]  DEFAULT ((0)) FOR [Tot_CoCommPFAmt]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_CoComm]  DEFAULT ((0)) FOR [Tot_CoComm]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_CoServTax]  DEFAULT ((0)) FOR [Tot_CoServTax]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_CoEduTax]  DEFAULT ((0)) FOR [Tot_CoEduTax]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Tot_CoServTax25]  DEFAULT ((0)) FOR [Tot_CoServTax25]
GO
ALTER TABLE [dbo].[Cont_MthlyPay] ADD  CONSTRAINT [DF_Cont_MthlyPay_Cal_CoEduTax25]  DEFAULT ((0)) FOR [Tot_CoEduTax25]
GO
ALTER TABLE [dbo].[Cont_ParaMast] ADD  CONSTRAINT [DF_Cont_ParaMast_BCFLG]  DEFAULT ((0)) FOR [BCFLG]
GO
ALTER TABLE [dbo].[Cont_ParaMast] ADD  CONSTRAINT [DF_Cont_ParaMast_AppFlg]  DEFAULT ((1)) FOR [AppFlg]
GO
ALTER TABLE [dbo].[Cont_UserRights] ADD  CONSTRAINT [DF_Cont_UserRights_Add1]  DEFAULT ((0)) FOR [Add1]
GO
ALTER TABLE [dbo].[Cont_UserRights] ADD  CONSTRAINT [DF_Cont_UserRights_Update1]  DEFAULT ((0)) FOR [Update1]
GO
ALTER TABLE [dbo].[Cont_UserRights] ADD  CONSTRAINT [DF_Cont_UserRights_Delete1]  DEFAULT ((0)) FOR [Delete1]
GO
ALTER TABLE [dbo].[Cont_UserRights] ADD  CONSTRAINT [DF_Cont_UserRights_View1]  DEFAULT ((0)) FOR [View1]
GO
/****** Object:  StoredProcedure [dbo].[sp_Cont_AttdSumm]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Cont_AttdSumm] 
	-- Add the parameters for the stored procedure here
	@payperiod int = 0,
	@ContCode varchar(20) = ' '
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF OBJECT_ID('temptest', 'U') IS NOT NULL
	  DROP TABLE temptest; 

	DECLARE @cols NVARCHAR (MAX)
	declare @fromdt as date
	declare @todt as date

	select @fromdt = FromDt from cont_MastPayPeriod where PayPeriod = @payperiod
	select @todt = Todt from cont_MastPayPeriod where PayPeriod = @payperiod


SELECT @cols = COALESCE (@cols + ',[' + CONVERT(NVARCHAR(2),day([date])) + ']', 
               '[' + CONVERT(NVARCHAR(2), day([date])) + ']')
               FROM    (SELECT date from dbo.F_TABLE_DATE(@fromdt  ,@todt)) PV  
               ORDER BY [date]

DECLARE @query NVARCHAR(MAX)

if(RTrim(@ContCode) = '')
begin

set @query =	'select * into temptest from 
				(SELECT a.PayPeriod,e.ContCode,e.DeptDesc,e.StatDesc,day(a.tDate) as t1date,isnull(count(*),0) as ABPR
				FROM Cont_DailyOth a, Cont_MastEmp e
				where a.PayPeriod = e.PayPeriod
				and a.EmpUnqID = e.EmpUnqID
				and a.ABPR = ''P''
				and a.PayPeriod = ' + convert(nvarchar,@payperiod) + '
				group by 
				a.tDate,a.PayPeriod,e.ContCode,e.DeptDesc,e.StatDesc

				) as x
				PIVOT (    
						SUM(ABPR)
						FOR [t1date] in (' + @cols + ')
		
						) as y'
end
else
begin
set @query =	'select * into temptest from 
				(SELECT a.PayPeriod,e.ContCode,e.DeptDesc,e.StatDesc,day(a.tDate) as t1date,isnull(count(*),0) as ABPR
				FROM Cont_DailyOth a, Cont_MastEmp e
				where a.PayPeriod = e.PayPeriod
				and a.EmpUnqID = e.EmpUnqID
				and a.ABPR = ''P''
				and a.PayPeriod = ' + convert(nvarchar,@payperiod) + '
				and e.ContCode = ''' + @ContCode + '''
				group by 
				a.tDate,a.PayPeriod,e.ContCode,e.DeptDesc,e.StatDesc

				) as x
				PIVOT (    
						SUM(ABPR)
						FOR [t1date] in (' + @cols + ')
		
						) as y'
end

EXEC SP_EXECUTESQL @query

declare @days as nvarchar(2)

	DECLARE MainCur CURSOR LOCAL DYNAMIC FOR  SELECT   CONVERT(NVARCHAR(2),day([date]))  FROM dbo.F_TABLE_DATE(@fromdt  ,@todt)
	OPEN MainCur  
	FETCH NEXT FROM MainCur INTO @days
	
	WHILE @@FETCH_STATUS = 0  
	BEGIN
		set @query = 'update temptest set [' + @days + '] = 0 where [' + @days + '] is null';
		EXEC SP_EXECUTESQL @query


	FETCH NEXT FROM MainCur INTO @days
	END 
	CLOSE MainCur
	DEALLOCATE MainCur
	


select * from temptest
drop table temptest

    
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Cont_DailyChkList]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Cont_DailyChkList] 
	-- Add the parameters for the stored procedure here
	@payperiod int = 0
	,@ContCode varchar(10) = ''
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	IF OBJECT_ID('temptest', 'U') IS NOT NULL
	  DROP TABLE temptest; 

	DECLARE @cols NVARCHAR (MAX)
	declare @fromdt as date
	declare @todt as date

	select @fromdt = FromDt from cont_MastPayPeriod where PayPeriod = @payperiod
	select @todt = Todt from cont_MastPayPeriod where PayPeriod = @payperiod


SELECT @cols = COALESCE (@cols + ',[' + CONVERT(NVARCHAR(2),day([date])) + ']', 
               '[' + CONVERT(NVARCHAR(2), day([date])) + ']')
               FROM    (SELECT date from dbo.F_TABLE_DATE(@fromdt  ,@todt)) PV  
               ORDER BY [date]

DECLARE @query NVARCHAR(MAX)

if(RTrim(@ContCode) = '')
begin

set @query =	'select * into temptest from 
				(SELECT a.PayPeriod,e.ContCode,a.EmpUnqID,e.EmpName,e.DeptDesc,e.StatDesc,e.DesgDesc,day(a.tDate) as t1date,isnull(Max(ABPR + Convert(varchar,TPAHrs)),''A'') as ABPR
				FROM Cont_DailyOth a, Cont_MastEmp e
				where a.PayPeriod = e.PayPeriod
				and a.EmpUnqID = e.EmpUnqID
				and a.PayPeriod = ' + convert(nvarchar,@payperiod) + '
				group by 
				a.PayPeriod,e.ContCode,a.EmpUnqID,e.EmpName,e.DeptDesc,e.StatDesc,e.DesgDesc,a.tDate

				) as x
				PIVOT (    
						MAX(ABPR)
						FOR [t1date] in (' + @cols + ')
		
						) as y'
end
else
begin
set @query =	'select * into temptest from 
				(SELECT a.PayPeriod,e.ContCode,a.EmpUnqID,e.EmpName,e.DeptDesc,e.StatDesc,e.DesgDesc,day(a.tDate) as t1date,isnull(Max(ABPR + Convert(varchar,TPAHrs)),''A'') as ABPR
				FROM Cont_DailyOth a, Cont_MastEmp e
				where a.PayPeriod = e.PayPeriod
				and a.EmpUnqID = e.EmpUnqID
				and a.PayPeriod = ' + convert(nvarchar,@payperiod) + '
				and e.ContCode = ''' + @ContCode + '''
				group by 
				a.PayPeriod,e.ContCode,a.EmpUnqID,e.EmpName,e.DeptDesc,e.StatDesc,e.DesgDesc,a.tDate

				) as x
				PIVOT (    
						MAX(ABPR)
						FOR [t1date] in (' + @cols + ')
		
						) as y'
end

EXEC (@query)
ALTER TABLE temptest ADD TotDays float Default 0;

ALTER TABLE temptest ADD TotTpaHrs float Default 0;

declare @totday float
declare @totot float

declare @EmpUnqID varchar(10)
declare @Outer_loop int
	

	DECLARE MainCur CURSOR LOCAL FOR  SELECT  EmpUnqID  FROM temptest Where PayPeriod = @payperiod order by EmpUnqID
	OPEN MainCur  
	FETCH NEXT FROM MainCur INTO @EmpUnqID	
	SET @Outer_loop = @@FETCH_STATUS
	WHILE @Outer_loop = 0
	BEGIN
		set @totday = 0;
		set @totot = 0;
		select @totday = sum(dayspay), @totot = Sum(TpaHrs) from Cont_DailyOth where PayPeriod = @payperiod and EmpUnqID = @EmpUnqID and Dayspay > 0 group by PayPeriod,EmpUnqID
		update temptest set TotDays = @totday, TotTpaHrs = @totot where PayPeriod = @payperiod and EmpUnqID = @EmpUnqID;

	FETCH NEXT FROM MainCur INTO @EmpUnqID
	SET @Outer_loop = @@FETCH_STATUS
	END 
	CLOSE MainCur
	DEALLOCATE MainCur


select * from temptest Order by EmpUnqID

drop table temptest

    
END

GO
/****** Object:  StoredProcedure [dbo].[sp_Cont_MthlySalTPARegister]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Cont_MthlySalTPARegister]
	-- Add the parameters for the stored procedure here
	@PayPeriod int
	,@ContCode varchar(200) 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@ContCode is null OR @ContCode = '')
	begin

		SELECT       
		a.PayPeriod, a.EmpUnqID, a.Adj_TPAHrs, a.Adj_TPAAmt, a.Adj_DaysPay, a.Adj_DaysPayAmt, a.Adj_Amt, a.Cal_Basic, 
		a.Cal_DaysPay, a.Cal_WODays, a.Cal_TpaHrs, a.Cal_TpaAmt, a.Tot_DaysPay, a.Tot_EarnBasic, 
		a.Tot_EarnBasicRoundOff, a.Tot_TpaHrs, a.Tot_TpaAmt, a.Tot_TpaRoundoff, a.Tot_Earnings, a.Tot_EarningsRoundoff, 
		a.Ded_PF, a.Ded_PF_Roundoff, a.Cal_EPF, a.Cal_EPS, a.Ded_ESI, a.Ded_LWF, a.Ded_DeathFund, a.Ded_Other, a.Ded_Mess, 
		a.Ded_PTax, a.Tot_Ded, a.NetPay_RoundOff, a.NetPay, a.Tot_CoCommDays, a.Tot_CoCommAmt, a.Tot_CoCommPFAmt, 
		a.Tot_CoComm, a.Tot_CoServTax, a.Tot_CoEduTax,
		b.CBasic,b.ContCode, b.DeptCode, b.DeptDesc, b.StatCode, b.StatDesc, b.DesgCode, b.DesgDesc, b.GradeCode, b.GradeDesc, 
		b.CatCode, b.CatDesc,b.UnitCode, b.UnitDesc, b.ContDesc, b.EmpName, b.FatherName, b.JoinDt, b.BirthDt,
		c.FromDt, c.ToDt, c.PayDesc
		FROM            Cont_MthlyPay AS a INNER JOIN
								 Cont_MastEmp AS b ON a.PayPeriod = b.PayPeriod AND a.EmpUnqID = b.EmpUnqID INNER JOIN
								 Cont_MastPayPeriod AS c ON a.PayPeriod = c.PayPeriod
		WHERE        (a.PayPeriod = @PayPeriod)
	end
	else
	begin
			SELECT       
			a.PayPeriod, a.EmpUnqID, a.Adj_TPAHrs, a.Adj_TPAAmt, a.Adj_DaysPay, a.Adj_DaysPayAmt, a.Adj_Amt, a.Cal_Basic, 
			a.Cal_DaysPay, a.Cal_WODays, a.Cal_TpaHrs, a.Cal_TpaAmt, a.Tot_DaysPay, a.Tot_EarnBasic, 
			a.Tot_EarnBasicRoundOff, a.Tot_TpaHrs, a.Tot_TpaAmt, a.Tot_TpaRoundoff, a.Tot_Earnings, a.Tot_EarningsRoundoff, 
			a.Ded_PF, a.Ded_PF_Roundoff, a.Cal_EPF, a.Cal_EPS, a.Ded_ESI, a.Ded_LWF, a.Ded_DeathFund, a.Ded_Other, a.Ded_Mess, 
			a.Ded_PTax, a.Tot_Ded, a.NetPay_RoundOff, a.NetPay, a.Tot_CoCommDays, a.Tot_CoCommAmt, a.Tot_CoCommPFAmt, 
			a.Tot_CoComm, a.Tot_CoServTax, a.Tot_CoEduTax,
			b.CBasic,b.ContCode, b.DeptCode, b.DeptDesc, b.StatCode, b.StatDesc, b.DesgCode, b.DesgDesc, b.GradeCode, b.GradeDesc, 
			b.CatCode, b.CatDesc,b.UnitCode, b.UnitDesc, b.ContDesc, b.EmpName, b.FatherName, b.JoinDt, b.BirthDt,
			c.FromDt, c.ToDt, c.PayDesc
			FROM            Cont_MthlyPay AS a INNER JOIN
									 Cont_MastEmp AS b ON a.PayPeriod = b.PayPeriod AND a.EmpUnqID = b.EmpUnqID INNER JOIN
									 Cont_MastPayPeriod AS c ON a.PayPeriod = c.PayPeriod
			WHERE        (a.PayPeriod = @PayPeriod)
			and b.ContCode = @ContCode
	end

END

GO
/****** Object:  StoredProcedure [dbo].[sp_Cont_SunSumm]    Script Date: 26/03/2018 16:41:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_Cont_SunSumm] 
	-- Add the parameters for the stored procedure here
	@payperiod int = 0
	,@ContCode varchar(10) = ' '
	AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	Create Table #TempTb 
	(
		PayPeriod int not null,
		EmpUnqID varchar(10) not null,
		ContCode varchar(10) ,
		EmpName varchar(100),
		CostCode varchar(12),
		DeptCode varchar(3),
		DeptDesc varchar(100),
		StatCode varchar(3),
		StatDesc varchar(100),
		DesgDesc varchar(100),
		
		d1 varchar(5),
		d2 varchar(5),
		d3 varchar(5),
		d4 varchar(5),
		d5 varchar(5),
		TotDays int,
		TotTPAHrs int,
		TotBasic float,
		TotTpaAmt float,
	
	 CONSTRAINT [PK_TempTb] PRIMARY KEY CLUSTERED 
	(
		[PayPeriod] ASC,
		[EmpUnqID] ASC
	
	)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
	) ON [PRIMARY]


if(Rtrim(@ContCode) = '')
begin

	insert into #TempTb (PayPeriod,EmpUnqID,TotDays,TotTPAHrs,TotBasic,TotTpaAmt,CostCode) 
		SELECT  PayPeriod,EmpUnqID, Sum(WODays) as TotDays,sum(tpaHrs) as TotTpaHrs,Sum(CBasic) as TotBasic, Sum(TpaAmt) as TotTpaAmt, Max(CostCode) as CostCode from Cont_DailyOth where PayPeriod = @payperiod and WODays > 0
		group by PayPeriod,EmpUnqID
end
else
begin

	insert into #TempTb (PayPeriod,EmpUnqID,TotDays,TotTPAHrs,TotBasic,TotTpaAmt,CostCode) 
		SELECT  a.PayPeriod,a.EmpUnqID, Sum(WODays) as TotDays,sum(tpaHrs) as TotTpaHrs,Sum(a.CBasic) as TotBasic, Sum(TpaAmt) as TotTpaAmt, Max(CostCode) as CostCode 
		from Cont_DailyOth a left outer join Cont_MastEmp e on a.EmpUnqID = e.EmpUnqID
		and a.PayPeriod = e.PayPeriod
		 where a.PayPeriod = @payperiod and WODays > 0 and e.ContCode = @ContCode
		group by a.PayPeriod,a.EmpUnqID
end

	update a
		set a.EmpName = e.EmpName,
			a.ContCode = e.ContCode,			
			a.DeptCode = e.DeptCode,			
			a.DeptDesc = e.DeptDesc,
			a.StatCode = e.StatCode,
			a.StatDesc = e.StatDesc,
			a.DesgDesc = e.DesgDesc			
		from #TempTb a, Cont_MastEmp e
		where a.PayPeriod = e.PayPeriod
		and a.EmpUnqID = e.EmpUnqID;
	
	declare @EmpUnqID varchar(12)
	declare @Outer_loop int
	declare @inner_loop int
	
	declare @abpr varchar(1)
	declare @tpahrs varchar(5)
	declare @day int
	declare @query nvarchar(max)

	DECLARE MainCur CURSOR LOCAL FOR  SELECT  EmpUnqID  FROM #TempTb Where PayPeriod = @payperiod order by EmpUnqID
	OPEN MainCur  
	FETCH NEXT FROM MainCur INTO @EmpUnqID	
	SET @Outer_loop = @@FETCH_STATUS
	WHILE @Outer_loop = 0
	BEGIN
		set @day = 0
		Declare c_2 CURSOR FOR Select ABPR,Convert(varchar(5),TPAHrs) as TpaHrs From Cont_DailyOth WHERE PayPeriod = @payperiod and EmpUnqID = @EmpUnqID and ABPR = 'S'
		   OPEN c_2
		   FETCH NEXT FROM c_2 INTO @abpr,@tpahrs
		Set @inner_loop = @@FETCH_STATUS
		WHILE @Inner_loop = 0
		BEGIN
			set @day = @day + 1;
			set @query = 'Update #TempTb set d' + convert(varchar,@day) + '=''' + @abpr+@tpahrs + ''' where PayPeriod =' + Convert(varchar,@payperiod) + ' and EmpUnqID =''' + @EmpUnqID + '''';   
			EXEC (@query)

			FETCH NEXT FROM c_2 into @abpr,@tpahrs
			Set @inner_loop = @@FETCH_STATUS
		END
		CLOSE c_2
		DEALLOCATE c_2

	FETCH NEXT FROM MainCur INTO @EmpUnqID
	SET @Outer_loop = @@FETCH_STATUS
	END 
	CLOSE MainCur
	DEALLOCATE MainCur
	
	update #TempTb set d1 = 'A' where d1 is null;
	update #TempTb set d2 = 'A' where d2 is null;
	update #TempTb set d3 = 'A' where d3 is null;
	update #TempTb set d4 = 'A' where d4 is null;
	update #TempTb set d5 = 'A' where d5 is null;


select * from #TempTb
drop table #TempTb

    
END

GO
