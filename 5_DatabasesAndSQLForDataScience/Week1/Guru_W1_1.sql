drop table instructor;
create table instructor(ins_id integer primary key not null,lastname varchar(10),firstname varchar(10),city varchar(10),country char(2));
insert into instructor values('1','Ahuja','Rav','Toronto','CA');

--delete from instructor where ins_id='2';
insert into instructor values('2','Chong','Raul','Toronto','CA'),('3','Vasudevan','Hima','Chicago','US');
select * from instructor;
select firstname, lastname, country from instructor where city='Toronto';
update instructor set city='Markham' where firstname = 'Rav';
delete from instructor where firstname='Raul';
select * from instructor;