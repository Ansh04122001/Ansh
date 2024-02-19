USE [New]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2/19/2024 11:29:19 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[Depts]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[Employees]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[Projects]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[Tasks]    Script Date: 2/19/2024 11:29:20 AM ******/
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
/****** Object:  Table [dbo].[Times]    Script Date: 2/19/2024 11:29:20 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Times](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NOT NULL,
	[ProjectName] [nvarchar](max) NOT NULL,
	[TaskName] [nvarchar](max) NOT NULL,
	[DayOfWeek] [nvarchar](max) NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
 CONSTRAINT [PK_Times] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserProfiles]    Script Date: 2/19/2024 11:29:20 AM ******/
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
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20240216114416_Time', N'8.0.1')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'a90db794-2241-451e-ba08-4622ccefc54d', N'admin', N'ADMIN', N'd53aa7a7-cac0-454c-a6a8-fe0266d527e5')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'e9da5ee0-ae15-4c3b-b25c-2a5837303135', N'user', N'USER', N'0f1040d5-e0f8-4274-b839-b1a6cc1244b5')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'69a29608-c01e-4ecd-bf56-ef44e8496200', N'a90db794-2241-451e-ba08-4622ccefc54d')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ad70798d-3d11-48cd-abc8-3b1aba7f1586', N'e9da5ee0-ae15-4c3b-b25c-2a5837303135')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'b9649a4d-bd28-4231-b4e0-cc446c8c3a12', N'e9da5ee0-ae15-4c3b-b25c-2a5837303135')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ce50e674-d34d-4700-ab6a-a75487662a6f', N'e9da5ee0-ae15-4c3b-b25c-2a5837303135')
GO
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'69a29608-c01e-4ecd-bf56-ef44e8496200', N'Harsh', N'Bhargava', NULL, N'Hr', N'HR', N'Hr@gmail.com', N'HR@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEC+nLo/j8gLo6wm9dtBK4D6S0hyzH8hctR2ZX1QkgA9qo5umvfugFpJdym98GO7/aQ==', N'IVTL6WR6VEIHEPI2AYOHFQ2IMMF64DYX', N'bff75e05-dbcf-437c-b3f4-3c65b09e2711', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ad70798d-3d11-48cd-abc8-3b1aba7f1586', N'Badal', N'Yadav', NULL, N'Badal', N'BADAL', N'Badal@gmail.com', N'BADAL@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEJL2BHgipu9lAEFwQN6bYHAMGr3Giaoc20ctUAy4FodcM01r0+9KAvjTycO0kTzmYA==', N'PA63ICBOQPTQ5X4Y5TSKRKLMJMJQOCYZ', N'94a06847-7229-4c3d-8209-1a7f01332e3c', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'b9649a4d-bd28-4231-b4e0-cc446c8c3a12', N'Ansh', N'Bhargava', NULL, N'Ansh', N'ANSH', N'Ansh@gmail.com', N'ANSH@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEKAbFdmwdPeoA3OoPzTi6wBhb9FERMo8aP17wxqFCwqiJNWdC6AdN+A9Xn/6OGj0SA==', N'BRWRGCQMMHFEKNPRIFXOTBZS5JCBIDPU', N'97288876-3712-430f-a168-cca26bb56ed3', NULL, 1, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [FirstName], [LastName], [ProfilePicture], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'ce50e674-d34d-4700-ab6a-a75487662a6f', N'Ansh', N'Bhargava', NULL, N'AnshBhargava', N'ANSHBHARGAVA', N'anshbhargava8@gmail.com', N'ANSHBHARGAVA8@GMAIL.COM', 1, N'AQAAAAIAAYagAAAAEH162UcJtegUhVJpRL2NrHOBgy8eZuPwiMNSeqMVB+bWMXz3WI+oyGMBj2Iay9DGIg==', N'VVVOSYC6UKUR4SSCBN3NYEICDT5QR3JS', N'c5026598-7b7c-4394-bb88-df806e98f22a', NULL, 1, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Depts] ON 

INSERT [dbo].[Depts] ([DeptId], [DepartmentName], [Timestamp]) VALUES (1, N'Asp.Net ', CAST(N'2024-02-14T11:40:43.8121016' AS DateTime2))
INSERT [dbo].[Depts] ([DeptId], [DepartmentName], [Timestamp]) VALUES (2, N'Java.Developer', CAST(N'2024-02-15T10:54:56.1676386' AS DateTime2))
INSERT [dbo].[Depts] ([DeptId], [DepartmentName], [Timestamp]) VALUES (1002, N'Sap.Developer', CAST(N'2024-02-17T18:34:32.4680711' AS DateTime2))
INSERT [dbo].[Depts] ([DeptId], [DepartmentName], [Timestamp]) VALUES (1003, N'Php.Developer', CAST(N'2024-02-17T18:36:10.2469067' AS DateTime2))
INSERT [dbo].[Depts] ([DeptId], [DepartmentName], [Timestamp]) VALUES (1004, N'android.Developer', CAST(N'2024-02-17T18:36:46.0445763' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Depts] OFF
GO
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeDesignation], [EmployeeDOJ], [EmployeeAddress], [Description], [DepartmentName], [Password], [EmployeeProfile]) VALUES (1, N'AnshBhargava', N'anshbhargava8@gmail.com', N'9650117960', N'Asp.net Developer', CAST(N'2023-12-28T00:00:00.0000000' AS DateTime2), N'Noida-62', N'Hi Ansh', N'Asp.Net ', N'Anshbh04@', N'/EmpImages/e8c5ed5d-c5d2-468d-af10-4366fe98c405_images (1).png')
INSERT [dbo].[Employees] ([EmployeeId], [EmployeeName], [EmployeeEmail], [EmployeeContact], [EmployeeDesignation], [EmployeeDOJ], [EmployeeAddress], [Description], [DepartmentName], [Password], [EmployeeProfile]) VALUES (2, N'Ansh', N'Ansh@gmail.com', N'9871895196', N'Asp.net Developer', CAST(N'2023-12-28T00:00:00.0000000' AS DateTime2), N'Noida-62', N'Hi Ansh', N'Asp.Net ', N'Anshbh04@', N'/EmpImages/b747aa9d-0159-4a95-a663-8a9bf9b0c245_images (1).png')
SET IDENTITY_INSERT [dbo].[Employees] OFF
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Timestamp]) VALUES (1, N'Admin', CAST(N'2024-02-14T11:48:08.4461089' AS DateTime2))
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Timestamp]) VALUES (2, N'SuperYatra', CAST(N'2024-02-16T12:10:48.9882380' AS DateTime2))
INSERT [dbo].[Projects] ([ProjectId], [ProjectName], [Timestamp]) VALUES (3, N'SuperYatra web', CAST(N'2024-02-16T23:15:49.3155162' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Tasks] ON 

INSERT [dbo].[Tasks] ([Id], [DepartmentName], [EmployeeList], [ProjectName], [TaskPriority], [TaskTitle], [TaskDescription], [TaskEndDate], [TaskAassignDate], [TaskStatus]) VALUES (1, N'Asp.Net ', N'1', N'Admin', N'urgent', N'Timesheet Admin Dashboard', N'Timesheet Admin Dashboard', CAST(N'2024-02-16T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-14T00:00:00.0000000' AS DateTime2), N'0')
INSERT [dbo].[Tasks] ([Id], [DepartmentName], [EmployeeList], [ProjectName], [TaskPriority], [TaskTitle], [TaskDescription], [TaskEndDate], [TaskAassignDate], [TaskStatus]) VALUES (2, N'Asp.Net ', N'2', N'Admin', N'urgent', N'Timesheet Admin Dashboard', N'Timesheet Admin Dashboard', CAST(N'2024-02-17T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-14T00:00:00.0000000' AS DateTime2), N'1')
INSERT [dbo].[Tasks] ([Id], [DepartmentName], [EmployeeList], [ProjectName], [TaskPriority], [TaskTitle], [TaskDescription], [TaskEndDate], [TaskAassignDate], [TaskStatus]) VALUES (1002, N'Asp.Net ', N'2', N'SuperYatra', N'medium', N'SuperYatra Crm', N'SuperYatra Crm', CAST(N'2024-02-17T00:00:00.0000000' AS DateTime2), CAST(N'2024-02-16T00:00:00.0000000' AS DateTime2), N'0')
SET IDENTITY_INSERT [dbo].[Tasks] OFF
GO
SET IDENTITY_INSERT [dbo].[Times] ON 

INSERT [dbo].[Times] ([ID], [UserName], [ProjectName], [TaskName], [DayOfWeek], [StartTime], [EndTime]) VALUES (1, N'Ansh', N'Admin', N'Timesheet Admin Dashboard', N'Friday', CAST(N'17:30:00' AS Time), CAST(N'17:30:00' AS Time))
INSERT [dbo].[Times] ([ID], [UserName], [ProjectName], [TaskName], [DayOfWeek], [StartTime], [EndTime]) VALUES (2, N'Ansh', N'SuperYatra', N'SuperYatra Crm', N'Saturday', CAST(N'17:32:00' AS Time), CAST(N'18:32:00' AS Time))
SET IDENTITY_INSERT [dbo].[Times] OFF
GO
SET IDENTITY_INSERT [dbo].[UserProfiles] ON 

INSERT [dbo].[UserProfiles] ([Id], [ProfileImage], [FullName], [About], [Company], [Job], [Country], [Address], [Phone], [Email], [Twitter], [Facebook], [Instagram], [Linkedin]) VALUES (1, N'/images/fe11ed76-831b-42be-abb6-30e9ce252e46_images (1).png', N'Hr', N'Hi Hr', N'Razorse software pvt ltd', N'Asp.net developer', N'India', N'Vaishali', N'9650117960', N'anshbhargava8@gmail.com', N'https://twitter.com/#', N'https://facebook.com/#', N'https://instagram.com/#', N'https://linkedin.com/#')
INSERT [dbo].[UserProfiles] ([Id], [ProfileImage], [FullName], [About], [Company], [Job], [Country], [Address], [Phone], [Email], [Twitter], [Facebook], [Instagram], [Linkedin]) VALUES (2, N'/images/23cacee1-ec0b-4f7d-85f8-0799369bd867_images (1).png', N'Ansh', N'hi Ansh', N'Razorse software pvt ltd', N'Asp.net developer', N'India', N'Vaishali', N'9650117960', N'Ansh@gmail.com', N'https://twitter.com/#', N'https://facebook.com/#', N'https://instagram.com/#', N'https://linkedin.com/#')
INSERT [dbo].[UserProfiles] ([Id], [ProfileImage], [FullName], [About], [Company], [Job], [Country], [Address], [Phone], [Email], [Twitter], [Facebook], [Instagram], [Linkedin]) VALUES (3, N'/images/82e4752b-bc64-4eb6-be81-c7013a5c890a_images (1).png', N'AnshBhargava', N'Hi Ansh Bhargava', N'Razorse software pvt ltd', N'ASp.net developer', N'India', N'Vaishali', N'9650117960', N'Anshbhargava8@gmail.com', N'https://twitter.com/#', N'https://facebook.com/#', N'https://instagram.com/#', N'https://linkedin.com/#')
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
/****** Object:  StoredProcedure [dbo].[GetTasks]    Script Date: 2/19/2024 11:29:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetTasks]
    @FullName NVARCHAR(255)
    
   
AS
BEGIN
    -- Create a temporary table to hold the result set
    CREATE TABLE #Tasks
    (

        
        
        ProjectName NVARCHAR(255)
    )

    -- Insert the results of the SELECT query into the temporary table
    INSERT INTO #Tasks (  ProjectName)
    SELECT 
        
       
       
        T.ProjectName
    FROM 
        Tasks T
    JOIN 
        Employees E ON E.EmployeeId = T.EmployeeList
    JOIN 
        UserProfiles U ON E.EmployeeName = U.FullName
    WHERE 
        U.FullName = @FullName;



    -- Select from the temporary table to return the result set
    SELECT * FROM #Tasks;

    -- Drop the temporary table after use
    DROP TABLE #Tasks;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetTasksForEmployee]    Script Date: 2/19/2024 11:29:21 AM ******/
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
