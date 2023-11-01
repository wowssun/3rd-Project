-- 멤버  
-- 비번 : 1234
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('abc', '가나다', '$2a$12$9coqF.XYMTvO5VgZF6XvJ..sUl06fiEmtmRQEzGJe2hz7Sf7GODma', '010-0000-0000', 'abc@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);
-- 비번 : 5678
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('def', '라마바', '$2a$12$9bC8MJcr2wUyKWXmD0U6fOv4Ee15Pi0V9/h3/OTnpWpKB3klRFqbq', '010-1111-1111', 'def@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-17', 'YYYY-MM-DD'));
--비번 : 9012
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('ghi', '사아자', '$2a$12$50wv6lpXxCxwCzZ8QaySSeKucQYMnF49HPB5RkN8bwgLMjlk8Kt5i', '010-2222-2222', 'ghi@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);
--비번 : 3456
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('jkl', '차카타', '$2a$12$79k0/o3rASVGPlJV15KTnedJ3b6GVmS0ComgHcmlarkia4kCZvKIi', '010-3333-3333', 'jkl@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-18', 'YYYY-MM-DD'));
--비번 : 1111
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('admin', '관리자', '$2a$12$Ivoa6NrXT1g7BHQ1iaiw9uAbjE7IQvHobQcY9SEVlZDKHaXUZt.pG', '010-3333-3333', 'jkl@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-18', 'YYYY-MM-DD'));

-- 권한
INSERT INTO AUTH (mid, authority)
VALUES ('abc', 'ROLE_USER');
INSERT INTO AUTH (mid, authority)
VALUES ('def', 'ROLE_LOCK');
INSERT INTO AUTH (mid, authority)
VALUES ('ghi', 'ROLE_ARTIST');
INSERT INTO AUTH (mid, authority)
VALUES ('jkl', 'ROLE_LOCK');
INSERT INTO AUTH (mid, authority)
VALUES ('admin', 'ROLE_ADMIN');



-- 작품
INSERT INTO art (ano, mid, artist, artname, genre, asize, intro, artimg)
VALUES (SEQ_ART_ANO.nextval, 'abc', '가나다', '가나다라', '드로잉', '100x100', '이 작품은 예시 작품입니다.', '0.jpeg');

INSERT INTO art (ano, mid, artist, artname, genre, asize, intro, artimg)
VALUES (SEQ_ART_ANO.nextval, 'ghi', '사아자', '마바사아', '페인팅', '120x80', '이 작품은 예시 작품입니다.', '1.jpeg');

INSERT INTO art (ano, mid, artist, artname, genre, asize, intro, artimg)
VALUES (SEQ_ART_ANO.nextval, 'mno', '파하아', '자차카타', '스케치', '90x90', '이 작품은 예시 작품입니다.', '2.jpeg');

INSERT INTO art (ano, mid, artist, artname, genre, asize, intro, artimg)
VALUES (SEQ_ART_ANO.nextval, 'pqr', '타파하', '타파하하', '콜라주', '70x120', '이 작품은 예시 작품입니다.', '3.jpeg');

INSERT INTO art (ano, mid, artist, artname, genre, asize, intro, artimg)
VALUES (SEQ_ART_ANO.nextval, 'vwx', '파라마', '파하하하', '믹스드미디어', '150x100', '이 작품은 예시 작품입니다.', '4.jpeg');

-- 펀딩 --
INSERT INTO fund (fno, mid, fundname, pr, targetprice, totalprice, partcpntcnt, startdate, enddate)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'abc', 'Fund 1', 'Description for Fund 1', 10000, 100000, 10, TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-20', 'YYYY-MM-DD'));

INSERT INTO fund (fno, mid, fundname, pr, targetprice, totalprice, partcpntcnt, startdate, enddate)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'ghi', 'Fund 2', 'Description for Fund 2', 15000, 200000, 20, TO_DATE('2023-10-17', 'YYYY-MM-DD'), TO_DATE('2023-10-22', 'YYYY-MM-DD'));

INSERT INTO fund (fno, mid, fundname, pr, targetprice, totalprice, partcpntcnt, startdate, enddate)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'abc', 'Fund 3', 'Description for Fund 3', 20000, 300000, 30, TO_DATE('2023-10-18', 'YYYY-MM-DD'), TO_DATE('2023-10-23', 'YYYY-MM-DD'));

INSERT INTO fund (fno, mid, fundname, pr, targetprice, totalprice, partcpntcnt, startdate, enddate)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'ghi', 'Fund 4', 'Description for Fund 4', 25000, 400000, 40, TO_DATE('2023-10-19', 'YYYY-MM-DD'), TO_DATE('2023-10-24', 'YYYY-MM-DD'));

INSERT INTO fund (fno, mid, fundname, pr, targetprice, totalprice, partcpntcnt, startdate, enddate)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'ghi', 'Fund 5', 'Description for Fund 5', 30000, 500000, 50, TO_DATE('2023-10-20', 'YYYY-MM-DD'), TO_DATE('2023-10-25', 'YYYY-MM-DD'));

-- 펀딩결제 --
INSERT INTO fpay (fpno, mid, fno, amount, paydate)
VALUES (SEQ_FPAY_FPNO.NEXTVAL, 'abc', 1, 5000, SYSDATE);

INSERT INTO fpay (fpno, mid, fno, amount, paydate)
VALUES (SEQ_FPAY_FPNO.NEXTVAL, 'abc', 2, 7000, SYSDATE);

INSERT INTO fpay (fpno, mid, fno, amount, paydate)
VALUES (SEQ_FPAY_FPNO.NEXTVAL, 'ghi', 3, 5000, SYSDATE);

INSERT INTO fpay (fpno, mid, fno, amount, paydate)
VALUES(SEQ_FPAY_FPNO.NEXTVAL, 'ghi', 4, 9000, SYSDATE);

INSERT INTO fpay (fpno, mid, fno, amount, paydate)
VALUES (SEQ_FPAY_FPNO.NEXTVAL, 'mno', 5, 10000, SYSDATE);


-- 원데이 클래스 --
insert into oneclass values(seq_class_cno.nextval, 'aaa', 'aaa', 'aaa',
                            TO_DATE('2023-10-05', 'YYYY-MM-DD'),
                            TO_TIMESTAMP('2023-10-05 12:20:11', 'YYYY-MM-DD HH24:MI:SS'), 3, 60);
insert into class_attach values(3, 'aaa', 'aaa', 'aaa');
insert into class_req values(SEQ_CLASS_REQ_reqno.nextval, 3, 'aaa');
insert into review values(seq_review_rno.nextval, 3, 'aaa', 'aaa', '2023-10-05');

-- 경매
Insert into AUC (ANO,MID,ARTNAME,ARTIST,STARTDATE,ENDDATE,PAYDATE,PRICEC,PRICEE,INTRO,ARTIMG,CONDITION,PAYSTATEMENT,BUYER,PRICES) values (21,'abc','가나다라','가나다',to_date('23/10/22','RR/MM/DD'),to_date('23/10/18','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),0,300000,'이 작품은 예시 작품입니다.','0.jpeg','경매완료','결제중','test1',0);
Insert into AUC (ANO,MID,ARTNAME,ARTIST,STARTDATE,ENDDATE,PAYDATE,PRICEC,PRICEE,INTRO,ARTIMG,CONDITION,PAYSTATEMENT,BUYER,PRICES) values (9,'abc','ABCD','가나다',to_date('23/10/17','RR/MM/DD'),to_date('23/10/21','RR/MM/DD'),to_date('23/11/04','RR/MM/DD'),555000,1000,'두번째 예시','5.jpg','경매완료','결제중','test1',null);
Insert into AUC (ANO,MID,ARTNAME,ARTIST,STARTDATE,ENDDATE,PAYDATE,PRICEC,PRICEE,INTRO,ARTIMG,CONDITION,PAYSTATEMENT,BUYER,PRICES) values (22,'abc','바보','배고프다',to_date('23/10/22','RR/MM/DD'),to_date('23/10/24','RR/MM/DD'),to_date('23/11/07','RR/MM/DD'),2200,1000,'두번째 예시','5.jpg','경매완료','결제중','test2',2420);
Insert into AUC (ANO,MID,ARTNAME,ARTIST,STARTDATE,ENDDATE,PAYDATE,PRICEC,PRICEE,INTRO,ARTIMG,CONDITION,PAYSTATEMENT,BUYER,PRICES) values (43,'abc','ABCD','가나다',to_date('23/10/30','RR/MM/DD'),to_date('23/10/31','RR/MM/DD'),null,1111,1111,'수정 테스트','5.jpg','경매중','결제 미완료',null,1111);
Insert into AUC (ANO,MID,ARTNAME,ARTIST,STARTDATE,ENDDATE,PAYDATE,PRICEC,PRICEE,INTRO,ARTIMG,CONDITION,PAYSTATEMENT,BUYER,PRICES) values (30,'abc','ㄴㄴㄴㄴ','222',to_date('23/10/18','RR/MM/DD'),to_date('23/10/24','RR/MM/DD'),to_date('23/11/07','RR/MM/DD'),7332,6666,'이 작품은 예시 작품입니다.','0.jpeg','경매완료','결제중','test3',8065.86);
Insert into AUC (ANO,MID,ARTNAME,ARTIST,STARTDATE,ENDDATE,PAYDATE,PRICEC,PRICEE,INTRO,ARTIMG,CONDITION,PAYSTATEMENT,BUYER,PRICES) values (41,'ghi','마바사아','사아자',to_date('23/10/26','RR/MM/DD'),to_date('23/11/01','RR/MM/DD'),null,1100,1000,'이 작품은 예시 작품입니다.','1.jpeg','경매중','결제 미완료','test1',1210);

-- 입찰
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (3,'test1',9,0,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (4,'test1',9,0,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (5,'test1',9,0,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (6,'test1',9,0,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (7,'test1',9,0,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (8,'test1',9,0,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (9,'test1',9,2222222,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (11,'test1',9,2000,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (12,'test1',9,0,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (13,'test1',9,55000,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (14,'test1',9,555000,555000,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (15,'test1',22,2000,2200,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (16,'test1',22,2000,2200,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (17,'test2',22,2200,2200,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (18,'test2',21,0,0,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (19,'test3',21,0,0,to_date('23/10/19','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (20,'test3',30,6666,7332,to_date('23/10/23','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (21,'test3',30,7332,7332,to_date('23/10/26','RR/MM/DD'),null,null);
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (23,'test5',41,1000,1100,to_date('23/10/30','RR/MM/DD'),'마바사아','1.jpeg');
Insert into BID (BNO,MID,ANO,PRICEB,PRICEC,BIDDATE,ARTNAME,ARTIMG) values (24,'test1',41,1100,1100,to_date('23/10/30','RR/MM/DD'),'마바사아','1.jpeg');

-- 문의
Insert into INQ (RNO,MID,TITLE,DETAIL,ANSWER,WRITEDATE,UPDATEDATE,ANSWERDATE) values (3,'test1','수정 테스트','수정 테스트 내용','답변 수정 테스트',to_date('23/10/20','RR/MM/DD'),to_date('23/10/06','RR/MM/DD'),to_date('23/10/14','RR/MM/DD'));
Insert into INQ (RNO,MID,TITLE,DETAIL,ANSWER,WRITEDATE,UPDATEDATE,ANSWERDATE) values (4,'test1','배고프다','테스트','제발 테스트 바껴라',to_date('23/10/20','RR/MM/DD'),to_date('23/10/23','RR/MM/DD'),to_date('23/10/23','RR/MM/DD'));
Insert into INQ (RNO,MID,TITLE,DETAIL,ANSWER,WRITEDATE,UPDATEDATE,ANSWERDATE) values (5,'test1','페이징 테스트','잘되야겠지?','굿굿',to_date('23/10/23','RR/MM/DD'),to_date('23/10/21','RR/MM/DD'),to_date('23/10/12','RR/MM/DD'));
Insert into INQ (RNO,MID,TITLE,DETAIL,ANSWER,WRITEDATE,UPDATEDATE,ANSWERDATE) values (6,'test100','css 테스트','css 테스트','답변 수정',to_date('23/10/30','RR/MM/DD'),to_date('23/10/30','RR/MM/DD'),to_date('23/10/30','RR/MM/DD'));
Insert into INQ (RNO,MID,TITLE,DETAIL,ANSWER,WRITEDATE,UPDATEDATE,ANSWERDATE) values (7,'test100','답변완료 잘 나오나요','테스트 중',null,to_date('23/10/30','RR/MM/DD'),null,null);

-- 경매결제
Insert into PAY (PNO,ANO,PRICE,PAYDATE) values (3,22,2200,to_date('23/10/25','RR/MM/DD'));
Insert into PAY (PNO,ANO,PRICE,PAYDATE) values (4,30,6666,to_date('23/10/25','RR/MM/DD'));








