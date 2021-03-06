USE [AcmeDB]
GO
/****** Object:  Table [dbo].[Serialnumber]    Script Date: 26-05-2018 19:10:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Serialnumber](
	[Serialnumber] [uniqueidentifier] NOT NULL,
	[Counter] [int] NULL,
 CONSTRAINT [PK_Serialnumber_1] PRIMARY KEY CLUSTERED 
(
	[Serialnumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Submission]    Script Date: 26-05-2018 19:10:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Submission](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nchar](10) NULL,
	[LastName] [nchar](10) NULL,
	[Email] [nvarchar](50) NULL,
	[Age] [int] NULL,
	[Serialnumber] [uniqueidentifier] NULL,
	[DOB] [datetime] NULL,
 CONSTRAINT [PK_Submission] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'80a3bc85-8283-4a30-af73-04a4c2b273db', 0)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'2ce04a40-9128-422e-a440-05dd515a9685', 1)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'8e040c35-e34e-4b3c-a32f-07fcddaefd84', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'c87e065a-3afd-48e3-93ce-093dfbe59ddf', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'eff4372f-fab4-4161-a908-0bcc91534b0a', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'15e63081-32cb-4eff-8e90-0cbcd42f159c', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'0fbf023f-9cb9-46e5-8b78-0e820ec815cd', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'c752648a-398a-4f19-9519-11da79f34992', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'7d5895f2-9e8d-48a0-8b0b-130e055bd469', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'7c7baf1f-eaee-46b0-b06d-13ca344d147b', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'719822a0-c16d-4908-ad0c-140d27bff3da', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'dc399239-9971-41f2-b530-14da590ed641', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'aef9d390-473d-45e1-98ff-1a786510503a', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'b8d74829-03f0-4a50-87b4-1ee740ffee3f', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'83b8f26e-c68a-464a-a6db-2ab4da75a568', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'ffe712ae-3e84-4183-9204-2c3e72ff8dde', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'fd9eb298-05d3-49a5-acf0-2c8b18631dc4', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'579c66fa-cea1-4499-b81f-2e7a94ddb936', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'd5b46abb-1ae9-4e98-8eab-2f09aa28e016', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'6f05ef7b-2ac2-47a7-ab1b-2f58a06ccd2c', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'fdc02f64-a66b-45da-a0a6-2f6ce8c5c030', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'f58f26f3-a833-4878-8f95-315f4583048c', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'3044ce40-5ab5-4e47-a687-3348f608fb3e', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'dccf4696-3cec-46e5-bfe2-3786b9cb063f', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'b8f603f7-b4ef-4a08-b132-37dd064c633d', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'5cb00ed9-6aad-48c1-b5ff-3eabca74bb5b', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'7f459a03-cbe5-4fad-8fe5-412ff18b7bab', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'16b9cba8-eda9-4b73-947b-41d78083d20c', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'6ab02062-8927-4f2f-9c5c-49bb0d9c411f', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'2daa0039-0fa6-42ab-972a-4a9424167aec', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'051ea9ba-cc29-4de9-a840-504bb7548487', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'1810bc13-5d13-4b26-8880-521d55d54aba', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'63a4cad6-c193-4422-8f48-544ecb700bc2', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'd861c8fa-bd84-4466-b2c0-58630be54d4e', 0)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'a8d98f05-6867-47db-85b9-5c9221bef197', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'a02ce070-9803-4dac-8efd-5dcd62ebf12b', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'79749d6c-bee6-417e-be7c-601a7813e45d', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'449e22c6-bab9-4b31-afbd-6585cc57f36c', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'd624d16e-fca8-4671-ae56-679357bcd82e', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'40eeb423-8ad1-4bf4-aa7d-6a08ae8fdda1', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'a4fc7845-624e-447f-b466-6ca6a6953223', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'705363fe-260c-4459-aa58-6ed7a5062244', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'1583058b-ee01-4628-a6bd-7218ec61717b', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'18eabd58-6d37-4a69-aa96-775f6c4e6908', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'af83832b-770d-4fbf-9ec5-77b9d4b717e2', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'20e258d2-9ff3-44a6-980d-7c4ce00e46b3', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'ff55cbd4-2417-4c0e-becf-85c0b1c77a88', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'32d72cd2-91d5-45b0-a5d4-878c54d3206b', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'15f0451c-8dee-4683-92ac-885e64d36a0a', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'e6f786ec-9f72-486d-8342-88807e9774f4', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'0b414e10-f717-44a2-b704-8a4c8a7cfe45', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'075592ef-72c7-42c9-ba7a-8dc0528ec980', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'bcdaf103-39e9-4cb7-866b-8e1cabef1c16', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'177326b6-8658-49cb-9989-8e4546d46db4', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'cea935ae-c8cc-4fd2-822a-8e86503aefdf', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'9bef4c8e-0ee5-4a92-b805-90b041ead4ab', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'953c4f27-b876-444e-aec0-924512df8178', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'8ca91ade-fc03-4235-ba8c-96fff5168f04', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'a7879a4c-b8e4-4cbe-ac5c-9b0cf4ece1c7', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'dd810965-6425-40e7-8fb6-9b457864fb60', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'88696339-3df9-439d-8c3d-9b6cf6789a3e', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'4397a62a-82ea-43b8-ae1e-9c2f5400e1a6', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'0fb8f8ac-15b8-4a3c-8250-a239dc5abc6e', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'6fca71b6-9add-44fa-9cb3-a2dd02ff9282', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'f6f55307-77b3-4663-861e-a468f5709830', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'48a167a0-1e27-467d-bc37-a77106eb9e2e', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'bd50b2d9-b9fd-45b5-b2b1-aa7f33fce1ca', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'e3653105-203a-4461-8830-af9b5cc1ef9a', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'c7345615-8309-41b2-8f45-afe43e65e28b', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'd2dcca62-b064-4775-a863-b1a3201c4f80', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'508dc4b3-dd33-4a3d-9e9f-b20125df5cde', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'34e924c0-7977-4fa2-9d49-b383f08bedf4', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'd6d40f70-0147-487a-bbf2-bed12bfe819b', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'9ddf1ecf-0d8e-4262-b8bb-c07447584552', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'ed4e16fc-3ee5-43cd-a26f-c641a8253cb8', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'646e3a59-8cb9-4af9-a7e5-c6cbdf118caa', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'2a60ad20-a7f0-4aea-9540-ca509b0fd500', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'042a3efd-07b1-4bbc-908e-cc3dcd73f95a', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'184c900c-db57-43cd-8061-cc8b21916430', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'c28ed079-c390-49e7-ba6a-d547c6c7eec9', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'0ec1ef37-4313-425f-94a6-dc4e569b817a', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'8ff1ea83-b570-48a3-a597-dc886edf907f', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'915fd6e8-b026-4c1f-8713-e2c579c2afd6', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'1a3b3a07-0ae6-4ad0-9157-e53592cd83cb', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'47206eca-93ae-41f6-b208-e57071682db2', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'3f3e9f4f-7837-4689-a7e5-e65f19f1e451', 0)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'56a4d024-eb2d-4092-85d2-e70285a8f145', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'3835b301-3163-40f3-9387-e832717a2a98', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'57076c71-21ad-496f-9d1c-ea463b60bb72', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'0aafe876-cbab-4d26-8486-eb1577f058b1', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'adea5899-8b0b-44b0-b2fb-ebdaa413493a', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'04e4fa37-8a7b-4f8d-93a2-ec9b3d8e3210', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'b250eba1-2a2f-4de9-82e8-f4898224b0fa', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'e40f120c-cea6-4a34-8a79-f5e7471a2691', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'13d5bfe6-b0e3-4949-93a4-f628cda1c439', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'76c4dd22-083d-49dd-84cc-f64505bb8a28', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'7b0de43b-720e-4972-ab94-f812671697cd', 0)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'df62f9b4-1434-429a-bdc5-fa3d3173b20d', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'e92d6028-b2ec-4e95-954c-fb02184f9024', 2)
INSERT [dbo].[Serialnumber] ([Serialnumber], [Counter]) VALUES (N'df2615d7-edc9-434c-ada0-fda2c6937ddc', 0)
GO
SET IDENTITY_INSERT [dbo].[Submission] ON 

INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (91, N'Veena     ', N'Balakumar ', N'veena_balakumar@hotmail.dk', 26, N'3f3e9f4f-7837-4689-a7e5-e65f19f1e451', CAST(N'1991-10-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (92, N'Veena     ', N'Balakumar ', N'veena_balakumar@hotmail.dk', 26, N'3f3e9f4f-7837-4689-a7e5-e65f19f1e451', CAST(N'1991-10-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (93, N'Veena     ', N'Balakumar ', N'veena_balakumar@hotmail.dk', 26, N'7b0de43b-720e-4972-ab94-f812671697cd', CAST(N'1991-10-24 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (94, N'Test      ', N'Test      ', N'test@test.com', 30, N'7b0de43b-720e-4972-ab94-f812671697cd', CAST(N'1992-08-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (95, N'AnnaH     ', N'test      ', N'dsf@sdf.dk', 24, N'd861c8fa-bd84-4466-b2c0-58630be54d4e', CAST(N'1994-08-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (96, N'Anna      ', N'Balakumar ', N'annasmail@hej.dk', 55, N'd861c8fa-bd84-4466-b2c0-58630be54d4e', CAST(N'1990-08-06 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (97, N'AnnaH     ', N'dsfjkl    ', N'ba@test.dk', 23, N'df2615d7-edc9-434c-ada0-fda2c6937ddc', CAST(N'1994-08-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (98, N'AnnaH     ', N'df        ', N'annasmail@hej.dk', 18, N'df2615d7-edc9-434c-ada0-fda2c6937ddc', CAST(N'1996-07-16 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (99, N'MitNavn   ', N'LastNavn  ', N'email@email.dk', 18, N'80a3bc85-8283-4a30-af73-04a4c2b273db', CAST(N'1967-06-08 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (100, N'kh        ', N'kjh       ', N'annasmail@hej.dk', 78, N'80a3bc85-8283-4a30-af73-04a4c2b273db', CAST(N'1997-08-14 00:00:00.000' AS DateTime))
INSERT [dbo].[Submission] ([Id], [FirstName], [LastName], [Email], [Age], [Serialnumber], [DOB]) VALUES (101, N'dfijlk    ', N'lkjdsf    ', N'annasmail@hej.dk', 23, N'2ce04a40-9128-422e-a440-05dd515a9685', CAST(N'1991-08-14 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Submission] OFF
