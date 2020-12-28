use [„‘—Ê⁄ «·„⁄Âœ «· ﬁ«‰Ì ··Õ«”Ê»]
go
create procedure DeleteTBLS
@STID int
as
delete from TBlStudents where STID =@STID
go
create procedure DeleteTBLM
@MID int
as
delete from TBLManeger where MID =@MID
go
create procedure DeleteTBLP
@PID int
as
delete from TBLPost where PID =@PID
go
create procedure DeleteTBLSub
@SBID int
as
delete from TBLSubject where SBID =@SBID
go
create procedure DeleteTBLC
@CMID int
as
delete from TBLComments where CMID =@CMID
go
create procedure DeleteTBLSectionity
@SCID int
as
delete from TBLSectionity where SCID =@SCID
go