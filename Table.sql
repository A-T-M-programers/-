use [„‘—Ê⁄ «·„⁄Âœ «· ﬁ«‰Ì ··Õ«”Ê»]
go
create table [TBlStudents] 
(
[STID] int identity primary key not null,
[STName] varchar (30) not null ,
[STNameMother] varchar (30) , 
[STNameFather] varchar (30),
[STLastName] varchar (30),
[STSectionity] varchar (45) not null,
[STStudyYear] varchar (35) not null,
[STBirthdy] date not null,
[STPhoneNumber] int ,
[STEmail] varchar (100) not null,
[STPassword] varchar (max) not null,
[STIDManeger] int foreign key references [TBLManeger]([MID]) on delete cascade
) 
go
create table [TBLManeger]
(
[MID] int identity primary key not null,
[MName] varchar (100) not null,
[MIDPost] int foreign key references [TBLPost]([PID]) on delete cascade,
[MEmail] varchar (100) not null,
[MPassword] varchar (max) not null
)
go
create table [TBLPost]
(
[PID] int identity primary key not null,
[PDescription] varchar (max) not null
)
go
create table [TBLSubject]
(
[SBID] int identity primary key not null,
[SBName] varchar (30) not null,
[SBStudy Year] varchar (35) not null,
[SBSectionity] varchar (45) not null,
[SBDescriptio] varchar (max) ,
[SBTeachName] varchar (100)not null
)
go
create table [TBLST_SB]
(
[ST_SBIDStudent] int foreign key references [TBLStudents]([STID]),
[ST_SBIDSubject] int foreign key references [TBLSubject]([SBID])
)
go
create table [TBLPhoneNumber]
(
[PNIDStudent] int foreign key references [TBLStudents]([STID]),
[PNPhoneNumber] int not null
)
go
create table [TBLComments]
(
[CMID] int identity primary key,
[CMComment] varchar (max) not null,
[CMIDStudent] int foreign key references [TBLStudents]([STID]),
[CMIDPost] int foreign key references [TBLPost]([PID]) 
)
go

