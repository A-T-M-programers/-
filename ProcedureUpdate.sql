use [„‘—Ê⁄ «·„⁄Âœ «· ﬁ«‰Ì ··Õ«”Ê»]
go
create procedure UpdateTBLS
@STID int,
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
UPDATE TBlStudents 
set STName = @STName,
STNameMother = @STNameMother,
STNameFather = @STNameFather,
STLastName = @STLastName,
STSectionity = @STSectionity,
STStudyYear = @STStudyYear,
STBirthdy = @STBirthdy,
STPhoneNumber = @STPhoneNumber,
STEmail = @STEmail,
STPassword = @STPassword,
STIDManeger = @STIDManeger
where STID = @STID
go
create procedure UpdateTBLM
@MID int ,
@MName varchar (100),
@MIDPost int ,
@MEmail varchar (100),
@MPassword varchar (max) 
as
UPDATE TBLManeger 
set MName = @MName,
MIDPost = @MIDPost,
MEmail = @MEmail,
MPassword = @MPassword
where MID = @MID
go
create procedure UpdateTBLP
@PID int ,
@PDescription varchar (max)
as
UPDATE TBLPost
set PDescription = @PDescription
where PID = @PID
go
create procedure UpdateTBLSub
@SBID int ,
@SBName varchar (30),
@SBStudyYear varchar (35),
@SBSectionity varchar (45),
@SBDescriptio varchar (max) ,
@SBTeachName varchar (100)
as
UPDATE TBLSubject
set SBName = @SBName,
[SBStudy Year] = @SBStudyYear,
SBSectionity = @SBSectionity,
SBDescriptio = @SBDescriptio,
SBTeachName = @SBTeachName
where SBID = @SBID
go
create procedure UPDATETBLComents
@CMID int ,
@CMComment varchar (max) ,
@CMIDStudent int,
@CMIDPost int 
as
UPDATE TBLComments 
set CMComment = @CMComment,
CMIDStudent = @CMIDStudent,
CMIDPost = @CMIDPost
where CMID = @CMID 
go