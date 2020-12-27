use [„‘—Ê⁄ «·„⁄Âœ «· ﬁ«‰Ì ··Õ«”Ê»]
go
create procedure InsertTBLS
@STID int output,
@STName varchar (30),
@STNameMother varchar (30),
@STNameFather varchar (30),
@STLastName varchar (30),
@STSectionity varchar (45),
@STStudyYear varchar (35) ,
@STBirthdy date ,
@STPhoneNumber int ,
@STEmail varchar (100) ,
@STPassword varchar (max) ,
@STIDManeger int 
as
insert into TBlStudents (STName,STNameMother,STNameFather,STLastName,STSectionity,STStudyYear,STBirthdy,STPhoneNumber,STEmail,STPassword,STIDManeger)
values (@STName,@STNameMother,@STNameFather,@STLastName,@STSectionity,@STStudyYear,@STBirthdy,@STPhoneNumber,@STEmail,@STPassword,@STIDManeger);
set @STID=@@IDENTITY
go
create procedure InsertTBLM
@MID int output,
@MName varchar (100),
@MIDPost int ,
@MEmail varchar (100),
@MPassword varchar (max) 
as
insert into TBLManeger(MName,MIDPost,MEmail,MPassword)
values (@MName,@MIDPost,@MEmail,@MPassword);
set @MID=@@IDENTITY
go
create procedure InsertTBLP
@PID int output,
@PDescription varchar (max)
as
insert into TBLPost(PDescription)
values (@PDescription);
set @PID=@@IDENTITY
go
create procedure InsertTBLSub
@SBID int output,
@SBName varchar (30),
@SBStudyYear varchar (35),
@SBSectionity varchar (45),
@SBDescriptio varchar (max) ,
@SBTeachName varchar (100)
as
insert into TBLSubject(SBName,[SBStudy Year],SBSectionity,SBDescriptio,SBTeachName)
values (@SBName,@SBStudyYear,@SBSectionity,@SBDescriptio,@SBTeachName);
set @SBID=@@IDENTITY
go
create procedure InsertTBLComents
@CMID int output,
@CMComment varchar (max) ,
@CMIDStudent int,
@CMIDPost int 
as
insert into TBLComments(CMComment,CMIDStudent,CMIDPost)
values (@CMComment,@CMIDStudent ,@CMIDPost);
set @CMID =@@IDENTITY
go