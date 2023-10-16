-- 멤버  
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('abc', '가나다', '1234', '010-0000-0000', 'abc@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('def', '라마바', '5678', '010-1111-1111', 'def@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-17', 'YYYY-MM-DD'));
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('ghi', '사아자', '9012', '010-2222-2222', 'ghi@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('jkl', '차카타', '3456', '010-3333-3333', 'jkl@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-18', 'YYYY-MM-DD'));
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('mno', '파하아', '7890', '010-4444-4444', 'mno@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('pqr', '타파하', '2345', '010-5555-5555', 'pqr@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('stu', '카타바', '6789', '010-6666-6666', 'stu@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-19', 'YYYY-MM-DD'));
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('vwx', '파라마', '1234', '010-7777-7777', 'vwx@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('yz1', '아카바', '5678', '010-8888-8888', 'yz1@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);
INSERT INTO A_MEMBER (mid, name, pw, phone, email, join_date, stop_date)
VALUES ('234', '타나하', '9012', '010-9999-9999', '234@gmail.com', TO_DATE('2023-10-16', 'YYYY-MM-DD'), NULL);

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
VALUES ('mno', 'ROLE_USER');
INSERT INTO AUTH (mid, authority)
VALUES ('pqr', 'ROLE_ARTIST');
INSERT INTO AUTH (mid, authority)
VALUES ('stu', 'ROLE_LOCK');
INSERT INTO AUTH (mid, authority)
VALUES ('vwx', 'ROLE_USER');
INSERT INTO AUTH (mid, authority)
VALUES ('yz1', 'ROLE_ARTIST');
INSERT INTO AUTH (mid, authority)
VALUES ('234', 'ROLE_USER');


-- 작품
INSERT INTO art (ano, mid, artist, art_name, genre, a_size, intro, art_img)
VALUES (SEQ_ART_ANO.nextval, 'abc', '가나다', '가나다라', '드로잉', '100x100', '이 작품은 예시 작품입니다.', '0.jpeg');

INSERT INTO art (ano, mid, artist, art_name, genre, a_size, intro, art_img)
VALUES (SEQ_ART_ANO.nextval, 'ghi', '사아자', '마바사아', '페인팅', '120x80', '이 작품은 예시 작품입니다.', '1.jpeg');

INSERT INTO art (ano, mid, artist, art_name, genre, a_size, intro, art_img)
VALUES (SEQ_ART_ANO.nextval, 'mno', '파하아', '자차카타', '스케치', '90x90', '이 작품은 예시 작품입니다.', '2.jpeg');

INSERT INTO art (ano, mid, artist, art_name, genre, a_size, intro, art_img)
VALUES (SEQ_ART_ANO.nextval, 'pqr', '타파하', '타파하하', '콜라주', '70x120', '이 작품은 예시 작품입니다.', '3.jpeg');

INSERT INTO art (ano, mid, artist, art_name, genre, a_size, intro, art_img)
VALUES (SEQ_ART_ANO.nextval, 'vwx', '파라마', '파하하하', '믹스드미디어', '150x100', '이 작품은 예시 작품입니다.', '4.jpeg');

-- 펀딩 --
INSERT INTO fund (fno, mid, fund_name, pr, target_price, total_price, partcpnt_cnt, start_date, end_date)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'abc', 'Fund 1', 'Description for Fund 1', 10000, 100000, 10, TO_DATE('2023-10-16', 'YYYY-MM-DD'), TO_DATE('2023-10-20', 'YYYY-MM-DD'));

INSERT INTO fund (fno, mid, fund_name, pr, target_price, total_price, partcpnt_cnt, start_date, end_date)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'ghi', 'Fund 2', 'Description for Fund 2', 15000, 200000, 20, TO_DATE('2023-10-17', 'YYYY-MM-DD'), TO_DATE('2023-10-22', 'YYYY-MM-DD'));

INSERT INTO fund (fno, mid, fund_name, pr, target_price, total_price, partcpnt_cnt, start_date, end_date)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'mno', 'Fund 3', 'Description for Fund 3', 20000, 300000, 30, TO_DATE('2023-10-18', 'YYYY-MM-DD'), TO_DATE('2023-10-23', 'YYYY-MM-DD'));

INSERT INTO fund (fno, mid, fund_name, pr, target_price, total_price, partcpnt_cnt, start_date, end_date)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'pqr', 'Fund 4', 'Description for Fund 4', 25000, 400000, 40, TO_DATE('2023-10-19', 'YYYY-MM-DD'), TO_DATE('2023-10-24', 'YYYY-MM-DD'));

INSERT INTO fund (fno, mid, fund_name, pr, target_price, total_price, partcpnt_cnt, start_date, end_date)
VALUES (SEQ_FUND_FNO.NEXTVAL, 'vwx', 'Fund 5', 'Description for Fund 5', 30000, 500000, 50, TO_DATE('2023-10-20', 'YYYY-MM-DD'), TO_DATE('2023-10-25', 'YYYY-MM-DD'));

-- 펀딩결제 --
INSERT INTO fpay (fpno, mid, fno, amount,pay_date)
VALUES (SEQ_FPAY_FPNO.NEXTVAL, 'abc', 1, 5000, SYSDATE);

INSERT INTO fpay (fpno, mid, fno, amount,pay_date)
VALUES (SEQ_FPAY_FPNO.NEXTVAL, 'abc', 2, 7000, SYSDATE);

INSERT INTO fpay (fpno, mid, fno, amount,pay_date)
VALUES (SEQ_FPAY_FPNO.NEXTVAL, 'ghi', 3, 5000, SYSDATE);

INSERT INTO fpay (fpno, mid, fno, amount,pay_date)
VALUES(SEQ_FPAY_FPNO.NEXTVAL, 'ghi', 4, 9000, SYSDATE);

INSERT INTO fpay (fpno, mid, fno, amount,pay_date)
VALUES (SEQ_FPAY_FPNO.NEXTVAL, 'mno', 5, 10000, SYSDATE);

-- 원데이 클래스 --
insert into oneclass values(seq_class_cno.nextval, 'aaa', 'aaa', 'aaa',
                            TO_DATE('2023-10-05', 'YYYY-MM-DD'),
                            TO_TIMESTAMP('2023-10-05 12:20:11', 'YYYY-MM-DD HH24:MI:SS'), 3, 60);
insert into class_attach values(3, 'aaa', 'aaa', 'aaa');
insert into class_req values(SEQ_CLASS_REQ_reqno.nextval, 3, 'aaa');
insert into review values(seq_review_rno.nextval, 3, 'aaa', 'aaa', '2023-10-05');


