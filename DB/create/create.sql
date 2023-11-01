/* -----------------------------시스템 계정----------------------- */

--- 계정 생성 ---
CREATE USER artAuction IDENTIFIED BY 1111;

--- 권한 부여---
GRANT CONNECT, RESOURCE, DBA TO artAuction;
GRANT CREATE ANY JOB TO artAuction;

-- 스케줄러러
GRANT CREATE ANY JOB TO artAuction;

/* -------------------------------------------------- */

/* Create Sequences */

CREATE SEQUENCE SEQ_ART_ano INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_AUC_ano INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_BID_bno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_FREE_frno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_CLASS_cno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_CLASS_REQ_reqno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_FPAY_fpno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_FUND_fno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_INQ_rno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_ONECLASS_cno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_PAY_pno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REPLY_rpno INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REQUEST_reque_no INCREMENT BY 1 START WITH 1;
CREATE SEQUENCE SEQ_REVIEW_rno INCREMENT BY 1 START WITH 1;



/* Create Tables */

CREATE TABLE ART
(
	ano number NOT NULL,
	mid varchar2(20) NOT NULL,
	artist varchar2(20) NOT NULL,
	artname varchar2(100) NOT NULL,
	genre varchar2(50) NOT NULL,
	asize varchar2(50) NOT NULL,
	intro varchar2(2000) NOT NULL,
	artimg varchar2(1000) NOT NULL,
	PRIMARY KEY (ano)
);


CREATE TABLE ARTIST
(
	mid varchar2(20) NOT NULL,
	major varchar2(20) NOT NULL,
	introduce varchar2(4000) NOT NULL,
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
	authority varchar2(20) DEFAULT 'ROLE_USER' NOT NULL,
	PRIMARY KEY (mid)
);

CREATE TABLE A_MEMBER
(
	mid varchar2(20) NOT NULL,
	name varchar2(20) NOT NULL,
	pw varchar2(100) NOT NULL,
	phone varchar2(30) NOT NULL,
	email varchar2(50) NOT NULL,
	join_date date DEFAULT SYSDATE NOT NULL,
	stop_date date DEFAULT NULL,
        enabled CHAR(1) DEFAULT '1',
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


CREATE TABLE FREE
(
	frno number NOT NULL,
	mid varchar2(20) NOT NULL,
	title varchar2(100) NOT NULL,
	content varchar2(4000) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	update_date date DEFAULT SYSDATE,
	hit number DEFAULT 0 NOT NULL,
	reply_cnt number DEFAULT 0 NOT NULL,
	PRIMARY KEY (frno)
);


CREATE TABLE FREEATTACH
(
	uuid varchar2(100) NOT NULL,
	frno number NOT NULL,
	upfolder varchar2(200),
	filename varchar2(100),
	image char NOT NULL,
	PRIMARY KEY (uuid)
);


CREATE TABLE CLASS_ATTACH
(
	cno number NOT NULL,
	uuid varchar2(100) NOT NULL,
	upfolder varchar2(200) NOT NULL,
	filename varchar2(100) NOT NULL,
	PRIMARY KEY (uuid)
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
	paydate date DEFAULT SYSDATE NOT NULL,
	PRIMARY KEY (fpno)
);


CREATE TABLE FUND
(
	fno number NOT NULL,
	mid varchar2(20) NOT NULL,
	fundname varchar2(100) NOT NULL,
	pr varchar2(4000) NOT NULL,
	targetprice number DEFAULT 0 NOT NULL,
	totalprice number DEFAULT 0 NOT NULL,
	partcpntcnt number DEFAULT 0 NOT NULL,
	startdate date NOT NULL,
	enddate date NOT NULL,
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
	class_date varchar2(30) NOT NULL,
	class_time varchar2(30) NOT NULL,
	people_num number NOT NULL,
	running_time number NOT NULL,
	class_img varchar2(200) DEFAULT 'default.png' NOT NULL,
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
	rpno number NOT NULL,
	frno number NOT NULL,
	mid varchar2(20) NOT NULL,
	reply varchar2(1000) NOT NULL,
	reg_date date DEFAULT SYSDATE NOT NULL,
	update_date date DEFAULT SYSDATE,
	PRIMARY KEY (rpno)
);


CREATE TABLE REQUEST
(
	reque_no number NOT NULL,
	mid varchar2(20) NOT NULL,
	state varchar2(10) DEFAULT '대기' NOT NULL,
	request_date date DEFAULT SYSDATE,
	comple_date date DEFAULT NULL,
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
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE REPLY
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE REQUEST
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE BID
	ADD FOREIGN KEY (ano)
	REFERENCES AUC (ano)
	ON DELETE CASCADE
;


ALTER TABLE PAY
	ADD FOREIGN KEY (ano)
	REFERENCES AUC (ano)
	ON DELETE CASCADE
;


ALTER TABLE ART
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE ARTIST
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE AUC
	ADD FOREIGN KEY (aid)
	REFERENCES ART (mid)
	ON DELETE CASCADE
;


ALTER TABLE BID
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE FREE
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE CLASS_REQ
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE FPAY
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE FUND
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE INQ
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE ONECLASS
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (mid)
	REFERENCES A_MEMBER (mid)
	ON DELETE CASCADE
;


ALTER TABLE FREEATTACH
	ADD FOREIGN KEY (frno)
	REFERENCES FREE (frno)
	ON DELETE CASCADE
;


ALTER TABLE REPLY
	ADD FOREIGN KEY (frno)
	REFERENCES FREE (frno)
	ON DELETE CASCADE
;


ALTER TABLE FPAY
	ADD FOREIGN KEY (fno)
	REFERENCES FUND (fno)
	ON DELETE CASCADE
;


ALTER TABLE CLASS_ATTACH
	ADD FOREIGN KEY (cno)
	REFERENCES ONECLASS (cno)
	ON DELETE CASCADE
;


ALTER TABLE CLASS_REQ
	ADD FOREIGN KEY (cno)
	REFERENCES ONECLASS (cno)
	ON DELETE CASCADE
;


ALTER TABLE REVIEW
	ADD FOREIGN KEY (cno)
	REFERENCES ONECLASS (cno)
	ON DELETE CASCADE
;


/* Create Trigger */

-- 지희

CREATE OR REPLACE TRIGGER update_totalprice_trigger
AFTER INSERT ON FPAY
FOR EACH ROW
BEGIN
    UPDATE fund
    SET TOTALPRICE = TOTALPRICE + :NEW.AMOUNT
    WHERE FNO = :NEW.FNO;
END;


-- 지헌

CREATE OR REPLACE TRIGGER "ARTAUCTION"."TRG_UPDATE_ANSWERDATE" 
BEFORE UPDATE OF ANSWER ON "ARTAUCTION"."INQ"
FOR EACH ROW
BEGIN
    IF :OLD.RNO = :NEW.RNO THEN -- RNO가 변경되지 않은 경우에만 업데이트
        :NEW.ANSWERDATE := SYSDATE;
    END IF;
END;
/
ALTER TRIGGER "ARTAUCTION"."TRG_UPDATE_ANSWERDATE" ENABLE;

 CREATE OR REPLACE TRIGGER "ARTAUCTION"."UPDATE_BID_PRICEC" 
AFTER UPDATE OF pricec ON auc
FOR EACH ROW
BEGIN
    UPDATE bid SET pricec = :new.pricec WHERE ano = :new.ano;
END;

/
ALTER TRIGGER "ARTAUCTION"."UPDATE_BID_PRICEC" ENABLE;


-- 스케줄러

BEGIN
  DBMS_SCHEDULER.CREATE_JOB (
    job_name        => 'AUC_UPDATE',
    job_type        => 'PLSQL_BLOCK',
    job_action      => 'BEGIN
                          DELETE FROM "ARTAUCTION"."AUC"
                          WHERE "ENDDATE" < SYSDATE AND BUYER IS NULL;

                          UPDATE "ARTAUCTION"."AUC"
                          SET "CONDITION" = CASE WHEN "ENDDATE" < SYSDATE THEN ''경매완료'' ELSE "CONDITION" END,
                              "PAYSTATEMENT" = CASE WHEN "ENDDATE" < SYSDATE THEN ''결제중'' ELSE "PAYSTATEMENT" END,
                              "PAYDATE" = CASE WHEN ("ENDDATE" < SYSDATE AND PAYDATE IS NULL) THEN ("ENDDATE"+14) ELSE PAYDATE END
                          WHERE BUYER IS NOT NULL;

                          COMMIT;
                        END;',
    start_date      => SYSTIMESTAMP,
    repeat_interval => 'FREQ=DAILY; BYHOUR=0; BYMINUTE=0; BYSECOND=0;',
    enabled         => TRUE,
    comments        => 'AUC Cleanup Job');
END;






