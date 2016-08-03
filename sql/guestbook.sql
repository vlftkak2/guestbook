select * from tab;

drop sequence seq_emaillist;
create sequence seq_emaillist
start with 1
INCREMENT by 1;
desc emaillist;
select * from EMAILLIST;

--insert 하기
insert into EMAILLIST VALUES(seq_emaillist.nextval,'형민','최','vlftkak2@naver.com',sysdate);
insert into EMAILLIST VALUES(seq_emaillist.nextval,'둘리','고','dully@naver.com',sysdate);

select * from emaillist;

--List 가져오기
select no,first_name,last_name,email,to_char(reg_date,'yyyy"년"-mm"월"-dd"일"') from EMAILLIST;

commit;
drop table guestlist;
desc guestbook;

drop sequence seq_guestbook;
create sequence seq_guestbook
start with 1
INCREMENT by 1;
desc emaillist;
select * from guestbook;
select no,name,password,introduction,to_char(reg_date,'yyyy-mm-dd') from guestbook;
insert into guestbook VALUES(seq_guestbook.nextval,'최형민','123','안녕하세요 최형민입니다.',sysdate);
insert into guestbook VALUES(seq_guestbook.nextval,'최솔빈','123','안녕하세요 최솔빈입니다.',sysdate);
insert into guestbook VALUES(seq_guestbook.nextval,'김망두','123','안녕하세요 김망두입니다.',sysdate);
insert into guestbook VALUES(seq_guestbook.nextval,'홍길동','123','안녕하세요 홍길동 입니다.',sysdate);
delete from guestbook;
commit;
desc guestbook;

