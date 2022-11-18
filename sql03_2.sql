create table test(name varchar(50), point INT);

insert into test values ("김지훈",100);
insert into test values ("김도연",80);

CREATE TABLE notice(
	NO INT PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(200) NOT NULL,
	content VARCHAR(1000),
	regdate DATETIME DEFAULT NOW(),
	visited INT DEFAULT 0
);

DESC notice;

create table USER(
	id varchar(12) primary key not null,
	pw varchar(200) not null,
	name varchar(50) not null,
	point int default 0,
	grade varchar(200),
	visted int default 0,
	tel varchar(14) not null,
	addr varchar(500) not null,
	email varchar(100) not null,
	birth varchar(200),
	regDate DATETIME DEFAULT now()
);

insert into user values ("admin","1234","관리자","ㅁㄴㅇ","010-1004-1004",now(),0,0,0);

select * from user;

UPDATE user SET grade="A" WHERE id="admin";

CREATE TABLE pic(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),
	picname VARCHAR(150)
);

ALTER TABLE pic ADD COLUMN pos INT default 1; 

CREATE TABLE tour(
	no INT PRIMARY KEY AUTO_INCREMENT,
	tourno VARCHAR(20),	-- 카테고리 타입 - 마지막 레코드의 no+1
	cate VARCHAR(20),
	place VARCHAR(100),
	comment1 VARCHAR(1000),
	comment2 VARCHAR(1000)
);

ALTER TABLE tour ADD COLUMN addr VARCHAR(200);
