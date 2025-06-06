/****** Object:  Database [Walmart]    Script Date: 15-04-2025 14:11:20 ******/
CREATE DATABASE [Walmart]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Walmart_Main', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Walmart_Main.mdf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB ), 
 FILEGROUP [Walmart_Secondary]  DEFAULT
( NAME = N'Walmart_Secondary', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Walmart_Secondary.ndf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Walmart_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\Walmart_Log.ldf' , SIZE = 10240KB , MAXSIZE = 20480KB , FILEGROWTH = 1024KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [Walmart] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Walmart].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Walmart] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Walmart] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Walmart] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Walmart] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Walmart] SET ARITHABORT OFF 
GO
ALTER DATABASE [Walmart] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Walmart] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Walmart] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Walmart] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Walmart] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Walmart] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Walmart] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Walmart] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Walmart] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Walmart] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Walmart] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Walmart] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Walmart] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Walmart] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Walmart] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Walmart] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Walmart] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Walmart] SET RECOVERY FULL 
GO
ALTER DATABASE [Walmart] SET  MULTI_USER 
GO
ALTER DATABASE [Walmart] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Walmart] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Walmart] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Walmart] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Walmart] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Walmart] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'Walmart', N'ON'
GO
ALTER DATABASE [Walmart] SET QUERY_STORE = ON
GO
ALTER DATABASE [Walmart] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
/****** Object:  Table [dbo].[Bank]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bank](
	[Bank_ID] [int] NOT NULL,
	[Bank_Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Bank_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Brand_ID] [int] NOT NULL,
	[Brand_Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Brand_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Category_ID] [int] NOT NULL,
	[Category_Name] [nvarchar](100) NULL,
	[Parent_Category_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer_ID] [int] NOT NULL,
	[First_Name] [nvarchar](200) NULL,
	[Last_Name] [nvarchar](200) NULL,
	[Email_ID] [nvarchar](200) NULL,
	[Phone_No] [nvarchar](15) NULL,
	[Shipping_Address] [nvarchar](255) NULL,
	[Billing_Address] [nvarchar](255) NULL,
	[Password] [nvarchar](100) NULL,
	[Loyalty_Rating] [decimal](3, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Customer_Order]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Order](
	[Customer_Order_ID] [int] NOT NULL,
	[Customer_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Order_Date] [date] NULL,
	[Customer_Shipping_ID] [int] NOT NULL,
	[Mode_Of_Payment] [nvarchar](50) NULL,
	[Customer_Transaction_ID] [int] NOT NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Customer_Shipping]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Shipping](
	[Customer_Shipping_ID] [int] NOT NULL,
	[Customer_Order_ID] [int] NOT NULL,
	[Shipping_Method] [nvarchar](100) NULL,
	[Shipping_Date] [date] NULL,
	[Shipping_Cost] [decimal](10, 2) NULL,
	[Tracking_No] [nvarchar](100) NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Shipping_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Customer_Transaction]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer_Transaction](
	[Customer_Transaction_ID] [int] NOT NULL,
	[Acc_NO] [nvarchar](20) NULL,
	[Bank_ID] [int] NOT NULL,
	[Transaction_Date] [date] NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Customer_Transaction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Department_ID] [int] NOT NULL,
	[Department_Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Department_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Designation]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Designation](
	[Designation_ID] [int] NOT NULL,
	[Post_Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Designation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[Employee_ID] [int] NOT NULL,
	[10th] [nvarchar](100) NULL,
	[10_Passing_Year] [int] NULL,
	[12th] [nvarchar](100) NULL,
	[12_Passing_Year] [int] NULL,
	[Graduation] [nvarchar](100) NULL,
	[G_Passing_Year] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Emergency]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emergency](
	[Emergency_ID] [int] NOT NULL,
	[First_Name] [nvarchar](200) NULL,
	[Last_Name] [nvarchar](200) NULL,
	[Phone_No] [nvarchar](15) NULL,
	[Address] [nvarchar](255) NULL,
	[Email] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[Emergency_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Emp_Bank]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Bank](
	[Emp_Bank_ID] [int] NOT NULL,
	[Acc_NO] [nvarchar](20) NULL,
	[Bank_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Emp_Bank_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Emp_Medical]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Emp_Medical](
	[Medical_ID] [int] NOT NULL,
	[Health_Status] [nvarchar](100) NULL,
	[Condition_Name] [nvarchar](100) NULL,
	[Emergency_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Medical_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Employee_ID] [int] NOT NULL,
	[Designation_ID] [int] NOT NULL,
	[Department_ID] [int] NOT NULL,
	[Parent_Category_ID] [int] NOT NULL,
	[Date_Of_Joining] [date] NULL,
	[Date_Of_Leaving] [date] NULL,
	[Salary] [decimal](10, 2) NULL,
	[Medical_ID] [int] NOT NULL,
	[Emp_Bank_ID] [int] NOT NULL,
	[Store_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Employee_Personal]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee_Personal](
	[Employee_ID] [int] NOT NULL,
	[First_Name] [nvarchar](200) NULL,
	[Last_Name] [nvarchar](200) NULL,
	[DOB] [date] NULL,
	[Email] [nvarchar](200) NULL,
	[Phone_No] [nvarchar](15) NULL,
	[Address] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Employee_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Inventory]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Inventory](
	[Product_ID] [int] NOT NULL,
	[Product_Quantity] [int] NULL,
	[Restock_Date] [date] NULL,
	[Supplier_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Order_Return]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order_Return](
	[Return_ID] [int] NOT NULL,
	[Customer_Order_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Return_Apply_Date] [date] NULL,
	[Return_PickUp_Date] [date] NULL,
	[Refund_Amount] [decimal](10, 2) NULL,
	[Refund_Date] [date] NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Return_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Parent_Category]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parent_Category](
	[Parent_Category_ID] [int] NOT NULL,
	[Parent_Category_Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Parent_Category_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Product_ID] [int] NOT NULL,
	[Product_Name] [nvarchar](100) NULL,
	[Description] [nvarchar](255) NULL,
	[Unit_Price] [decimal](10, 2) NULL,
	[Brand_ID] [int] NOT NULL,
	[Category_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Product_Rating] [decimal](3, 2) NULL,
	[ReviewCount] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Product_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Salary]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salary](
	[Designation_ID] [int] NOT NULL,
	[Basic_Pay] [decimal](10, 2) NULL,
	[DRA] [decimal](10, 2) NULL,
	[HRA] [decimal](10, 2) NULL,
	[Additional_Allowances] [decimal](10, 2) NULL,
	[Gross_Pay] [decimal](10, 2) NULL,
	[PF] [decimal](10, 2) NULL,
	[Net_Pay] [decimal](10, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Designation_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Store](
	[Store_ID] [int] NOT NULL,
	[Store_Name] [nvarchar](100) NULL,
	[Address] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[Store_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[Supplier_ID] [int] NOT NULL,
	[First_Name] [nvarchar](200) NULL,
	[Last_Name] [nvarchar](200) NULL,
	[Phone_No] [nvarchar](15) NULL,
	[Email_ID] [nvarchar](200) NULL,
	[Address] [nvarchar](255) NULL,
	[Supplier_Ratings] [decimal](3, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[Supplier_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Supplier_Order]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Order](
	[Supplier_Order_ID] [int] NOT NULL,
	[Product_ID] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Amount] [decimal](10, 2) NULL,
	[Order_Date] [date] NULL,
	[Supply_Date] [date] NULL,
	[Status] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Supplier_Order_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
/****** Object:  Table [dbo].[Supplier_Transaction]    Script Date: 15-04-2025 14:11:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier_Transaction](
	[Supplier_Transaction_ID] [int] NOT NULL,
	[Supplier_ID] [int] NOT NULL,
	[Acc_NO] [nvarchar](20) NULL,
	[Bank_ID] [int] NOT NULL,
	[Transaction_Date] [date] NULL,
	[Mode_Of_Payment] [nvarchar](50) NULL,
	[Status] [nvarchar](50) NULL,
	[Supplier_Order_ID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Supplier_Transaction_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [Walmart_Secondary]
) ON [Walmart_Secondary]
GO
ALTER TABLE [dbo].[Category]  WITH CHECK ADD FOREIGN KEY([Parent_Category_ID])
REFERENCES [dbo].[Parent_Category] ([Parent_Category_ID])
GO
ALTER TABLE [dbo].[Customer_Order]  WITH CHECK ADD FOREIGN KEY([Customer_ID])
REFERENCES [dbo].[Customer] ([Customer_ID])
GO
ALTER TABLE [dbo].[Customer_Order]  WITH CHECK ADD FOREIGN KEY([Customer_Shipping_ID])
REFERENCES [dbo].[Customer_Shipping] ([Customer_Shipping_ID])
GO
ALTER TABLE [dbo].[Customer_Order]  WITH CHECK ADD FOREIGN KEY([Customer_Transaction_ID])
REFERENCES [dbo].[Customer_Transaction] ([Customer_Transaction_ID])
GO
ALTER TABLE [dbo].[Customer_Order]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Customer_Transaction]  WITH CHECK ADD FOREIGN KEY([Bank_ID])
REFERENCES [dbo].[Bank] ([Bank_ID])
GO
ALTER TABLE [dbo].[Education]  WITH CHECK ADD FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employee] ([Employee_ID])
GO
ALTER TABLE [dbo].[Emp_Bank]  WITH CHECK ADD FOREIGN KEY([Bank_ID])
REFERENCES [dbo].[Bank] ([Bank_ID])
GO
ALTER TABLE [dbo].[Emp_Medical]  WITH CHECK ADD FOREIGN KEY([Emergency_ID])
REFERENCES [dbo].[Emergency] ([Emergency_ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Department_ID])
REFERENCES [dbo].[Department] ([Department_ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Designation_ID])
REFERENCES [dbo].[Designation] ([Designation_ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Emp_Bank_ID])
REFERENCES [dbo].[Emp_Bank] ([Emp_Bank_ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Medical_ID])
REFERENCES [dbo].[Emp_Medical] ([Medical_ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Parent_Category_ID])
REFERENCES [dbo].[Parent_Category] ([Parent_Category_ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([Store_ID])
REFERENCES [dbo].[Store] ([Store_ID])
GO
ALTER TABLE [dbo].[Employee_Personal]  WITH CHECK ADD FOREIGN KEY([Employee_ID])
REFERENCES [dbo].[Employee] ([Employee_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Inventory]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Order_Return]  WITH CHECK ADD FOREIGN KEY([Customer_Order_ID])
REFERENCES [dbo].[Customer_Order] ([Customer_Order_ID])
GO
ALTER TABLE [dbo].[Order_Return]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Brand_ID])
REFERENCES [dbo].[Brand] ([Brand_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Category_ID])
REFERENCES [dbo].[Category] ([Category_ID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Salary]  WITH CHECK ADD FOREIGN KEY([Designation_ID])
REFERENCES [dbo].[Designation] ([Designation_ID])
GO
ALTER TABLE [dbo].[Supplier_Order]  WITH CHECK ADD FOREIGN KEY([Product_ID])
REFERENCES [dbo].[Product] ([Product_ID])
GO
ALTER TABLE [dbo].[Supplier_Transaction]  WITH CHECK ADD FOREIGN KEY([Bank_ID])
REFERENCES [dbo].[Bank] ([Bank_ID])
GO
ALTER TABLE [dbo].[Supplier_Transaction]  WITH CHECK ADD FOREIGN KEY([Supplier_ID])
REFERENCES [dbo].[Supplier] ([Supplier_ID])
GO
ALTER TABLE [dbo].[Supplier_Transaction]  WITH CHECK ADD FOREIGN KEY([Supplier_Order_ID])
REFERENCES [dbo].[Supplier_Order] ([Supplier_Order_ID])
GO
ALTER DATABASE [Walmart] SET  READ_WRITE 
GO
