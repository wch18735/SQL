/* Create */
create table DEPT
(
    deptno varchar2(4) primary key,
    deptname varchar2(20)
);

insert into DEPT values('1000', '인사팀');
insert into DEPT values('1001', '총무부');

create table EMP(
    empno number(10),
    ename varchar2(20),
    sal number(10,2) default 0,
    deptno varchar2(4) not null,
    createdate date default sysdate,
    constraint e_pk primary key (empno),
    constraint d_pk foreign key (deptno)
                    references DEPT(deptno) on delete cascade
);

insert into EMP values(100, '임베스트', 1000, '1000', sysdate);
insert into EMP values(101, '을지문덕', 2000, '1001', sysdate);

delete from DEPT where deptno ='1000';

/* update */
update EMP set ename = '조조'
    where empno=100;
    
select * from EMP;

/* delete */
delete from EMP
    where empno=100;
