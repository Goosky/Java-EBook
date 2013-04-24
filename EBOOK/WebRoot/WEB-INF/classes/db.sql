create database ebook;
use ebook;
#用户
create table  USER
(
       USERNAME          VARCHAR(50) not null,
       PASSWORD          VARCHAR(100)，
       ADMIN              VARCHAR(20)
);
alter  table USER
       add constraint PK_USERNAME primary key (USERNAME);
#图书
create table  BOOK
(
       BOOKNAME          VARCHAR(100) not null,
       AUTHOR            VARCHAR(100),
       CLASS             VARCHAR(30),
       PUBLISHDATE       VARCHAR(50),
       DESCRIPTION       text,
       DISCUSSIONTITLE   VARCHAR(50),
       DISCUSSIONDATE    DATETIME,
       DISCUSSION        LONGTEXT,
       USERNAME          VARCHAR(50)
);
alter  table BOOK
       add constraint PK_BOOKNAME primary key (BOOKNAME);
alter  table BOOK
       add constraint FK_BOOK_USERNAME foreign key (USERNAME)
       references USER(USERNAME);
#图书分类
create table  BOOKCLASS
(
       CLASS             VARCHAR(50),
       USERNAME          VARCHAR(50)
);
alter  table BOOKCLASS
       add constraint FK_BOOKCLASS_USERNAME foreign key (USERNAME)
       references USER(USERNAME);
#图书评论
create table  BOOKDISCUSSION
(
       BOOKNAME          VARCHAR(100),
       DISCUSSIONTITLE   VARCHAR(100),       
       DISCUSSIONDATE    DATETIME,
       DISCUSSCONTENT    LONGTEXT,
       USERNAME         VARCHAR(50)
);
#存储过程
#deletedicussion
#call deletedicussion(BNAME VARCHAR(100),UNAME VARCHAR(50))
BEGIN
delete from bookdiscussion where username =  username and bookname = bname;
END
#deletebook
#call deletebook(bclass varchar(50),uname varchar(50))
begin
declare  bname varchar(100);
select bookname into bname from book where class = bclass and username = uname;
delete from bookdiscussion where username = username and bookname = bname;
delete from book where class = bclass and username = uname;
end
#deleteuser
#call deleteuser(user varchar(50))
begin
delete from bookdiscussion where username = user;
delete from book where username = user;
delete from bookclass where username = user;
delete from user where username = user;
end