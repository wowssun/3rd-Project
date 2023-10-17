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


