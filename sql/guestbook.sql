select * from tab;

drop sequence seq_emaillist;
create sequence seq_emaillist
start with 1
INCREMENT by 1;
desc emaillist;
select * from EMAILLIST;

--insert �ϱ�
insert into EMAILLIST VALUES(seq_emaillist.nextval,'����','��','vlftkak2@naver.com',sysdate);
insert into EMAILLIST VALUES(seq_emaillist.nextval,'�Ѹ�','��','dully@naver.com',sysdate);

select * from emaillist;

--List ��������
select no,first_name,last_name,email,to_char(reg_date,'yyyy"��"-mm"��"-dd"��"') from EMAILLIST;

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
insert into guestbook VALUES(seq_guestbook.nextval,'������','123','�ȳ��ϼ��� �������Դϴ�.',sysdate);
insert into guestbook VALUES(seq_guestbook.nextval,'�ֺּ�','123','�ȳ��ϼ��� �ֺּ��Դϴ�.',sysdate);
insert into guestbook VALUES(seq_guestbook.nextval,'�����','123','�ȳ��ϼ��� ������Դϴ�.',sysdate);
insert into guestbook VALUES(seq_guestbook.nextval,'ȫ�浿','123','�ȳ��ϼ��� ȫ�浿 �Դϴ�.',sysdate);
delete from guestbook;
commit;
desc guestbook;

