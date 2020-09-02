CREATE TABLE POST (
	POST1 CHAR(3) ,
	POST2 CHAR(3),
	ADDR VARCHAR(60) NOT NULL,
	CONSTRAINT pk_post PRIMARY KEY(POST1,POST2));
	
DESC post;

DROP TABLE member;

CREATE TABLE member(
id int(4) PRIMARY KEY ,
name VARCHAR(10) NOT NULL,
SEX CHAR(1),
JUMIN1 CHAR(6) ,
JUMIN2 CHAR(7) ,
TEL   VARCHAR(15),
POST1 CHAR(3) ,
POST2 CHAR(3),
ADDR VARCHAR(60)
);

ALTER TABLE member ADD CONSTRAINT uk_jumin UNIQUE (JUMIN1, JUMIN2);
ALTER TABLE member ADD CONSTRAINT fk_POST FOREIGN KEY (POST1, POST2) REFERENCES POST(POST1, POST2);
