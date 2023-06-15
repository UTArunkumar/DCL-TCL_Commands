--TCL commands
create table Empolyee(Id int primary key not null ,Name varchar(20),Age int, Salary int,Work varchar(50));

begin transaction
insert into Empolyee values
(1,'Arjun',36,42561,'Designer'),
(2,'Dhos',32,76536,'frontend'),
(3,'Seran',24,23456,'backend'),
(4,'Sesan',22,32142,'Developer');
commit

begin transaction
update Empolyee set 
Name = 'Sanjay',Age = 22,Salary = 24532,Work ='Fullstake'
where id = 3;
commit


begin transaction;
rollback;

begin transaction
save transaction del;


begin transaction
delete from Empolyee where id=1;
save transaction del1;

begin transaction 
delete from Empolyee where id=2;
save transaction del2;


begin transaction 
delete from Empolyee where id=3;
save transaction del3;

begin transaction 
delete from Empolyee where id=4;
save transaction del4;

--begin transaction 
--Truncate table Empolyee;
--save transaction del4;

rollback transaction del1;
select * from Empolyee




--DCL commands
create login arun with password='1997'

create user kumar for login arun

grant select on Empolyee to kumar

revoke select on Empolyee from kumar











