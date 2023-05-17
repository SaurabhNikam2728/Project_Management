create database Project_management_System;


use Project_management_System;


create table emp(
empid int primary key,
ename varchar(10),
exp int ,
qualification varchar(10),
role varchar(10)
);


create table emp_project(
teamid int primary key,
pid int,
empid int,
status varchar(20),
conctraints fk_proj foreign key (pid) references project_manager(pid)
on update cascade 
on delete set null,
conctraints fk_emp foreign key (empid) references project_manager(empid)
on update cascade 
on delete set null,
);


create table project_manager(
pid int ,
pname varchar(20),
mgrid int ,
mname varchar(20),
duration date,
status varchar(20),
description varchar(30),
primary key(pid,mgrid)
);


create table tasks(
taskid inr primary key,
pid int,
empid int,
status varchar(10),
comments varchar(20),
conctraints fk_proj foreign key (pid) references project_manager(pid)
on update cascade 
on delete set null,
conctraints fk_emp foreign key (empid) references project_manager(empid)
on update cascade 
on delete set null
);


