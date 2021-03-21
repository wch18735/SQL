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
select * from EMP;

/* Alter */
alter table EMP
    rename to NEW_EMP;
    
alter table NEW_EMP
    add (age number(2) default 1);
    
select * from USER_OBJECTS where OBJECT_TYPE='TABLE';

alter table NEW_EMP
    modify (ename varchar2(40) not null);
    
alter table NEW_EMP
    drop column age;
    
alter table NEW_EMP /* 칼럼명 변경은 alter table ~ rename column ~ to ~ 로 바꿀 수 있음*/
    rename to EMP;
    
select * from EMP;

/* Drop */
drop table EMP;
drop table EMP cascade constraint; /* 제약사항 모두 삭제 */

/* 뷰 생성과 삭제 */
create view T_EMP as
    select * from EMP;
select * from T_EMP;
drop view T_EMP;