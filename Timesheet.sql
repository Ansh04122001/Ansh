USE [New]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NOT NULL,
	[LastName] [nvarchar](max) NOT NULL,
	[ProfilePicture] [nvarchar](max) NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Depts]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Depts](
	[DeptId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
	[Timestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Depts] PRIMARY KEY CLUSTERED 
(
	[DeptId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employees]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[EmployeeId] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](max) NOT NULL,
	[EmployeeEmail] [nvarchar](max) NOT NULL,
	[EmployeeContact] [nvarchar](max) NOT NULL,
	[EmployeeDesignation] [nvarchar](max) NOT NULL,
	[EmployeeDOJ] [datetime2](7) NULL,
	[EmployeeAddress] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
	[Password] [nvarchar](max) NOT NULL,
	[EmployeeProfile] [nvarchar](max) NULL,
 CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED 
(
	[EmployeeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProjectId] [int] IDENTITY(1,1) NOT NULL,
	[ProjectName] [nvarchar](max) NOT NULL,
	[Timestamp] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProjectId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tasks]    Script Date: 2/5/2024 5:07:40 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tasks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentName] [nvarchar](max) NOT NULL,
	[EmployeeList] [nvarchar](max) NOT NULL,
	[ProjectName] [nvarchar](max) NOT NULL,
	[TaskPriority] [nvarchar](max) NOT NULL,
	[TaskTitle] [nvarchar](max) NOT NULL,
	[TaskDescription] [nvarchar](max) NOT NULL,
	[TaskEndDate] [datetime2](7) NOT NULL,
	[TaskAassignDate] [datetime2](7) NOT NULL,
	[TaskStatus] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Tasks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 2/5/2024 5:07:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserProfiles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProfileImage] [nvarchar](max) NULL,
	[FullName] [nvarchar](max) NOT NULL,
	[About] [nvarchar](max) NOT NULL,
	[Company] [nvarchar](max) NOT NULL,
	[Job] [nvarchar](max) NOT NULL,
	[Country] [nvarchar](max) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Twitter] [nvarchar](max) NOT NULL,
	[Facebook] [nvarchar](max) NOT NULL,
	[Instagram] [nvarchar](max) NOT NULL,
	[Linkedin] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserProfiles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240125070153_Init', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240125070631_Dept', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240125070920_Emp', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240125071136_Task', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240125071231_User', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240131065033_task', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240204064112_Project', N'8.0.1')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240204122345_Task', N'8.0.1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a90db794-2241-451e-ba08-4622ccefc54d', N'admin', N'ADMIN', N'd53aa7a7-cac0-454c-a6a8-fe0266d527e5')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e9da5ee0-ae15-4c3b-b25c-2a5837303135', N'user', N'USER', N'0f1040d5-e0f8-4274-b839-b1a6cc1244b5')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'0b21704a-7a05-4548-9b83-eacf8f0ecda3', N'a90db794-2241-451e-ba08-4622ccefc54d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'69a29608-c01e-4ecd-bf56-ef44e8496200', N'a90db794-2241-451e-ba08-4622ccefc54d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'31cdfdac-af46-4d91-a904-06639408fbeb', N'e9da5ee0-ae15-4c3b-b25c-2a5837303135')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'9bf0b346-3144-4e34-945f-b2e70e891d63', N'e9da5ee0-ae15-4c3b-b25c-2a5837303135')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'a866b333-2382-4316-9e78-d10140fcf195', N'e9da5ee0-ae15-4c3b-b25c-2a5837303135')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'0b21704a-7a05-4548-9b83-eacf8f0ecda3', N'Tanya', N'Bhargava', NULL, N'Tanya', N'TANYA', N'Tanya@gmail.com', N'TANYA@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEB8FWr6d/5xv/CAbyZk9Org2iffsKEN3t0zDEdS0sSKr+wKWiA5TxyYCmL3bkPHKEA==', N'TRRURTSEHPG2GD43HA5U2DYFZFWDE7A3', N'a0148657-a46f-45fb-a4ab-c673fa621b33', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'31cdfdac-af46-4d91-a904-06639408fbeb', N'Hitesh', N'Chahar', NULL, N'Hitesh', N'HITESH', N'Hitesh@gmail.com', N'HITESH@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBZw5hgwMCpzELn7wRfHA9c0T0AzF7K0g5ir/bMHdHjFKHvNeemPLkpKByjnSpSC4w==', N'O3GL23EONO4TXL3BY6FAY3ZEF657N63F', N'dc79e0ae-ccdd-4d81-a882-ecb2e955e4cf', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'466357c7-6d16-447f-8958-9ef2478e1c79', N'Tarun', N'Yadav', NULL, N'Tarun', N'TARUN', N'tarun@gmail.com', N'TARUN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEIegudCiZ6US60+isLkQoLe5bzapTxSjxeDJP9G5fsdNQ7wpGtZ5kyQ+CnSck73ghA==', N'NH7EO6LU4AXLONR6M5REODJD2PUMIU6L', N'38e2e1e5-e085-4048-bd17-7e9baa551603', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'69a29608-c01e-4ecd-bf56-ef44e8496200', N'Harsh', N'Bhargava', NULL, N'Hr', N'HR', N'Hr@gmail.com', N'HR@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBZl1kVLXaXoTemWJbGoYxc/NnDJ18ytG3g8Xp/UFpMZMYpTDRxQbiyiYtFfz2y6/A==', N'5OER3YVWL64XR5JVUA2RFTAPK3FD6RVU', N'33da644d-08c1-417f-b749-73e7c35980ec', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'9bf0b346-3144-4e34-945f-b2e70e891d63', N'Badal', N'Yadav', NULL, N'Badal', N'BADAL', N'Badal@gmail.com', N'BADAL@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEBYLcEyHKpioECXFep5YcySAtwT1rPwXYc0r2GEGnQMdjTnKMQkeAGWKH6MMplyHGQ==', N'FSR5H46CEUAEAV773UJBL2ENYZMT5HMP', N'2c95ac97-4e50-4d5c-a33e-634b21fabbca', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'a866b333-2382-4316-9e78-d10140fcf195', N'Ansh', N'Bhargava', NULL, N'Ansh', N'ANSH', N'Ansh@gmail.com', N'ANSH@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEIrmn/Dy/GEUbFLOW/dPgE3/31swwkI+KxhXnwToxLGj/+lFl8Iqi1uCgcmUq8zYFQ==', N'BDJVXQOEQA7VHET7C3NJKKCD3XSZNUOC', N'eeac3243-b036-4125-8e1f-f5e08975ad8c', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'bc6d9c8d-f0ba-4cac-a049-092cec12a98d', N'Ansh', N'Bhargava', NULL, N'Admin', N'ADMIN', N'Admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEHET5EkY5BcH/IHxmtEqRyxly1Q7dBBE8UgWeIXr6gOI8zEHQCs7vaR0COOBsrnb0A==', N'AMUXIDI3IDBM6ZAWW4XIDNAI3OQKYIAS', N'3cad9107-6f98-4d2f-9eb8-0072e5e13e70', NULL, 1, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Depts] ON 

INSERT [dbo].[Depts] ([DeptId], [DepartmentName], [Timestamp]) VALUES (1, N'Asp.net', CAST(N'2024-01-25T13:30:04.2796311' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Depts] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeDesignation], [EmployeeDOJ], [EmployeeAddress], [Description], [DepartmentName], [Password], [EmployeeProfile]) VALUES (1, N'Ansh', N'Ansh@gmail.com', N'9650117960', N'Asp.net Developer', CAST(N'2023-12-28T00:00:00.0000000' AS DateTime2), N'Noida-62', N'Hi Ansh', N'Asp.net', N'Anshbh04@', N'/EmpImages/aa2c363f-5478-411e-b5a8-2c10367206c2_images (1).png')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeDesignation], [EmployeeDOJ], [EmployeeAddress], [Description], [DepartmentName], [Password], [EmployeeProfile]) VALUES (2, N'Badal', N'Badal@gmail.com', N'7683003531', N'Asp.net Developer', CAST(N'2024-02-01T00:00:00.0000000' AS DateTime2), N'Noida-62', N'Hi', N'Asp.net', N'Badal@123', N'/EmpImages/7508d7d4-75db-43e5-8940-1ad3be60b9e6_images (1).png')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Timestamp]) VALUES (1, N'SuperYatra', CAST(N'2024-02-04T17:33:05.4256118' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([Id], [DepartmentName], [EmployeeList], [ProjectName], [TaskPriority], [TaskTitle], [TaskDescription], [TaskEndDate], [TaskAassignDate], [TaskStatus]) VALUES (1, N'Asp.net', N'1', N'SuperYatra', N'medium', N'SuperYatra Crm', N'Insert in Lead ', CAST(N'2024-02-05T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-04T00:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[Tasks] ([Id], [DepartmentName], [EmployeeList], [ProjectName], [TaskPriority], [TaskTitle], [TaskDescription], [TaskEndDate], [TaskAassignDate], [TaskStatus]) VALUES (2, N'Asp.net', N'1', N'SuperYatra', N'low', N'SuperYatra Crm', N'Insert In Lead Department', CAST(N'2024-02-05T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-04T00:00:00.0000000' AS DateTime2), N'0')
INSERT [dbo].[Tasks] ([Id], [DepartmentName], [EmployeeList], [ProjectName], [TaskPriority], [TaskTitle], [TaskDescription], [TaskEndDate], [TaskAassignDate], [TaskStatus]) VALUES (1002, N'Asp.net', N'2', N'SuperYatra', N'low', N'SuperYatra', N' History wala', CAST(N'2024-02-06T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-05T00:00:00.0000000' AS DateTime2), N'0')
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfiles] ON 

INSERT [dbo].[UserProfiles] ([Id], [ProfileImage], [FullName], [About], [Company], [Job], [Country], [Address], [Phone], [Email], [Twitter], [Facebook], [Instagram], [Linkedin]) VALUES (1, N'/images/57ef44da-1490-472f-b161-5a33e5d4ab37_images (1).png', N'Hr', N'Hi Hr Of Razorse software pvt ltd', N'Razorse software pvt ltd', N'Asp.net developer', N'India', N'Noida -62', N'9650117960', N'Hr@gmail.com', N'https://twitter.com/#', N'https://facebook.com/#', N'https://instagram.com/#', N'https://linkedin.com/#')
INSERT [dbo].[UserProfiles] ([Id], [ProfileImage], [FullName], [About], [Company], [Job], [Country], [Address], [Phone], [Email], [Twitter], [Facebook], [Instagram], [Linkedin]) VALUES (2, N'/images/237b2d9a-9afc-4d2f-8198-0b5e2e985082_images (1).png', N'Ansh', N'Hi', N'Razosoft', N'Asp.net developer', N'India', N'Noida -62', N'9650117960', N'Ansh@gmail.com', N'https://twitter.com/#', N'https://facebook.com/#', N'https://instagram.com/#', N'https://linkedin.com/#')
INSERT [dbo].[UserProfiles] ([Id], [ProfileImage], [FullName], [About], [Company], [Job], [Country], [Address], [Phone], [Email], [Twitter], [Facebook], [Instagram], [Linkedin]) VALUES (1002, N'/images/d3f93aa4-1701-4725-8e64-fd2ff4efcdec_images (1).png', N'Badal', N'Hi', N'Razorse software pvt ltd', N'Asp.net developer', N'India', N'Noida -62', N'9650117960', N'Badal@gmail.com', N'https://twitter.com/#', N'https://facebook.com/#', N'https://instagram.com/#', N'https://linkedin.com/#')
SET IDENTITY_INSERT [dbo].[UserProfiles] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
/****** Object:  StoredProcedure [dbo].[GetTasksForEmployee]    Script Date: 2/5/2024 5:07:41 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTasksForEmployee]
    @FullName NVARCHAR(255),
    @InProgressTaskCount INT OUTPUT, -- Output parameter to hold the count of in-progress tasks
    @CompletedTaskCount INT OUTPUT, -- Output parameter to hold the count of completed tasks
    @TotalTaskCount INT OUTPUT -- Output parameter to hold the total count of tasks
AS
BEGIN
    -- Create a temporary table to hold the result set
    CREATE TABLE #TempTasks
    (
        DepartmentName NVARCHAR(255),
        EmployeeList NVARCHAR(255),
        TaskPriority NVARCHAR(50), -- Change TaskPriority datatype to NVARCHAR
        TaskTitle NVARCHAR(MAX),
        TaskDescription NVARCHAR(MAX),
        TaskEndDate DATETIME,
        TaskAassignDate DATETIME,
        EmployeeName NVARCHAR(255),
        EmployeeEmail NVARCHAR(255),
        TaskStatus NVARCHAR(50),
        Id INT,
        ProjectName NVARCHAR(255)
    )

    -- Insert the results of the SELECT query into the temporary table
    INSERT INTO #TempTasks (DepartmentName, EmployeeList, TaskPriority, TaskTitle, TaskDescription, TaskEndDate, TaskAassignDate, EmployeeName, EmployeeEmail, TaskStatus, Id, ProjectName)
    SELECT 
        T.DepartmentName,
        T.EmployeeList,
        CONVERT(NVARCHAR(50), T.TaskPriority), -- Convert TaskPriority to NVARCHAR
        T.TaskTitle,
        T.TaskDescription,
        T.TaskEndDate,
        T.TaskAassignDate,
        E.EmployeeName,
        E.EmployeeEmail,
        T.TaskStatus,
        T.id,
        T.ProjectName
    FROM 
        Tasks T
    JOIN 
        Employees E ON E.EmployeeId = T.EmployeeList
    JOIN 
        UserProfiles U ON E.EmployeeName = U.FullName
    WHERE 
        U.FullName = @FullName;

    -- Count in-progress tasks
    SELECT @InProgressTaskCount = COUNT(*) FROM #TempTasks WHERE TaskStatus = '0';

    -- Count completed tasks
    SELECT @CompletedTaskCount = COUNT(*) FROM #TempTasks WHERE TaskStatus = '1';

    -- Total task count
    SELECT @TotalTaskCount = COUNT(*) FROM #TempTasks;

    -- Select from the temporary table to return the result set
    SELECT * FROM #TempTasks;

    -- Drop the temporary table after use
    DROP TABLE #TempTasks;
END;
GO
