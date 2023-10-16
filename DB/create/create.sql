/* Create Sequences */

CREATE SEQUENCE SEQ_ART_ano INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_AUC_ano INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_BID_bno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_BOARD_bono INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_CLASS_cno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_CLASS_REQ_reqno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_FPAY_fpno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_FUND_fno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_INQ_rno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ONECLASS_cno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_PAY_pno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REPLY_rno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REQUEST_reque_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REVIEW_rno INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE ART
(
	ano number NOT NULL,
	mid varchar2(20) NOT NULL,
	artist varchar2(20) NOT NULL,
	art_name varchar2(100) NOT NULL,
	genre varchar2(50) NOT NULL,
	a_size varchar2(50) NOT NULL,
	intro varchar2(2000) NOT NULL,
	art_img varchar2(100) NOT NULL,
	PRIMARY KEY (ano)
);


CREATE TABLE ARTIST
(
	mid varchar2(20) NOT NULL,
	major varchar2(20) NOT NULL,
	introduce varchar2(4000),
	career varchar2(4000) NOT NULL,
	photo varchar2(30) NOT NULL,
	PRIMARY KEY (mid)
);


CREATE TABLE AUC
(
	ano number NOT NULL,
	aid varchar2(20) NOT NULL,
	mid varchar2(20),
	artname varchar2(20) NOT NULL,
	artist varchar2(20) NOT NULL,
	startdate date DEFAULT SYSDATE NOT NULL,
	enddate date NOT NULL,
	payDate date,
	cprice number NOT NULL,
	eprice number,
	intro varchar2(200) NOT NULL,
	artimage varchar2(200) NOT NULL,
	condition varchar2(200) DEFAULT '경매중' NOT NULL,
	paystatement varchar2(200) DEFAULT '결제 미완료' NOT NULL,
	PRIMARY KEY (ano)
);


CREATE TABLE AUTH
(
	mid varchar2(20) NOT NULL,
	authority varchar2(20) NOT NULL,
	PRIMARY KEY (mid)
);


CREATE TABLE A_MEMBER
(
	mid varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	pw varchar2(30) NOT NULL,
	phone varchar2(30) NOT NULL,
	email varchar2(50) NOT NULL,
	join_date date DEFAULT SYSDATE NOT NULL,
	stop_date date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (mid)
);


CREATE TABLE BID
(
	bno number NOT NULL,
	mid varchar2(20) NOT NULL,
	ano number NOT NULL,
	priceB number NOT NULL,
	priceC number NOT NULL,
	paystatement date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (bno)
);


CREATE TABLE BOARD
(
	bono number NOT NULL,
	mid varchar2(20) NOT NULL,
	title varchar2(100) NOT NULL,
	content varchar2(4000) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	update_date date DEFAULT SYSDATE,
	hit number DEFAULT 0 NOT NULL,
	reply_cnt number DEFAULT 0 NOT NULL,
	PRIMARY KEY (bono)
);


CREATE TABLE BOARDATTACH
(
	uuid varchar2(100) NOT NULL,
	bono number NOT NULL,
	upfolder varchar2(200),
	image char NOT NULL,
	PRIMARY KEY (uuid)
);


CREATE TABLE CLASS_ATTACH
(
	cno number NOT NULL,
	uuid varchar2(100) NOT NULL,
	upfolder varchar2(200) NOT NULL,
	filename varchar2(100) NOT NULL,
	PRIMARY KEY (cno)
);


CREATE TABLE CLASS_REQ
(
	reqno number NOT NULL,
	cno number NOT NULL,
	mid varchar2(20) NOT NULL,
	PRIMARY KEY (reqno)
);


CREATE TABLE FPAY
(
	fpno number NOT NULL,
	mid varchar2(20) NOT NULL,
	fno number NOT NULL,
	amount number NOT NULL,
	pay_date date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (fpno)
);


CREATE TABLE FUND
(
	fno number NOT NULL,
	mid varchar2(20) NOT NULL,
	fund_name varchar2(100) NOT NULL,
	pr varchar2(4000) NOT NULL,
	target_price number DEFAULT 0 NOT NULL,
	total_price number DEFAULT 0 NOT NULL,
	partcpnt_cnt number DEFAULT 0 NOT NULL,
	start_date date NOT NULL,
	end_date date NOT NULL,
	PRIMARY KEY (fno)
);


CREATE TABLE INQ
(
	rno number NOT NULL,
	mid varchar2(20) NOT NULL,
	title varchar2(200) NOT NULL,
	detail varchar2(2000) NOT NULL,
	answer varchar2(2000) NOT NULL,
	writedate date DEFAULT SYSDATE NOT NULL,
	updatedate date,
	answerdate date,
	PRIMARY KEY (rno)
);


CREATE TABLE ONECLASS
(
	cno number NOT NULL,
	mid varchar2(20) NOT NULL,
	class_name varchar2(50) NOT NULL,
	class_info varchar2(4000) NOT NULL,
	class_date date NOT NULL,
	class_time date NOT NULL,
	people_num number NOT NULL,
	running_time number NOT NULL,
	PRIMARY KEY (cno)
);


CREATE TABLE PAY
(
	pno number NOT NULL,
	ano number NOT NULL,
	price number NOT NULL,
	payDate date NOT NULL,
	PRIMARY KEY (pno)
);


CREATE TABLE REPLY
(
	rno number NOT NULL,
	bono number NOT NULL,
	mid varchar2(20) NOT NULL,
	reply varchar2(1000) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	update_date date DEFAULT SYSDATE,
	PRIMARY KEY (rno)
);


CREATE TABLE REQUEST
(
	reque_no number NOT NULL,
	mid varchar2(20) NOT NULL,
	state varchar2(10) DEFAULT '대기' NOT NULL,
	request_date date DEFAULT SYSDATE,
	comple_date date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (reque_no)
);


CREATE TABLE REVIEW
(
	rno number NOT NULL,
	cno number NOT NULL,
	mid varchar2(20) NOT NULL,
	review_script varchar2(4000) NOT NULL,
	upload_date date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (rno)
);



/* Create Foreign Keys */

ALTER TABLE AUTH
	ADD FOREIGN KEY (mid)
	REFERENCES ARTIST (mid)
;


ALTER TABLE REPLY
	ADD FOREIGN KEY (mid)
	REFERENCES ARTIST (mid)
;


ALTER TABLE REQUEST
	ADD FOREIGN KEY (mid)
	REFERENCES ARTIST (mid)
;


ALTER TABLE BID
	ADD FOREIGN KEY (ano)
	REFERENCES AUC (ano)
;


ALTER TABLE PAY
	ADD FOREIGN KEY (ano)
	REFERENCES AUC (ano)
;


ALTER TABLE ART
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE ARTIST
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE AUC
	ADD FOREIGN KEY (aid)
	REFERENCES ART (mid)
;


ALTER TABLE BID
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE BOARD
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE CLASS_REQ
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE FPAY
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE FUND
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE INQ
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE ONECLASS
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
;


ALTER TABLE BOARDATTACH
	ADD FOREIGN KEY (bono)
	REFERENCES BOARD (bono)
;


ALTER TABLE REPLY
	ADD FOREIGN KEY (bono)
	REFERENCES BOARD (bono)
;


ALTER TABLE FPAY
	ADD FOREIGN KEY (fno)
	REFERENCES FUND (fno)
;


ALTER TABLE CLASS_ATTACH
	ADD FOREIGN KEY (cno)
	REFERENCES ONECLASS (cno)
;


ALTER TABLE CLASS_REQ
	ADD FOREIGN KEY (cno)
	REFERENCES ONECLASS (cno)
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (cno)
	REFERENCES ONECLASS (cno)
;
