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