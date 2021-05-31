--------------------------------------------------------
--  파일이 생성됨 - 월요일-5월-31-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_BOARD
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_BOARD"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_COM
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_COM"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_FREE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_FREE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_GALL
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_GALL"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_IMG
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_IMG"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_NOTICE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_NOTICE"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_PET
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_PET"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_QNA
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_QNA"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_RESERVE
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_RESERVE"  MINVALUE 100 MAXVALUE 100000 INCREMENT BY 1 START WITH 100 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Sequence SEQUENCE_REVIEW
--------------------------------------------------------

   CREATE SEQUENCE  "SEQUENCE_REVIEW"  MINVALUE 1 MAXVALUE 100000 INCREMENT BY 1 START WITH 21 CACHE 20 NOORDER  NOCYCLE ;
--------------------------------------------------------
--  DDL for Table COM
--------------------------------------------------------

  CREATE TABLE "COM" 
   (	"COM_NO" NUMBER(11,0), 
	"GALL_NO" NUMBER(11,0), 
	"COM_CONTENT" VARCHAR2(2000 BYTE), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"BOARD_WRDAY" TIMESTAMP (6)
   ) ;

   COMMENT ON COLUMN "COM"."COM_NO" IS '댓글번호';
   COMMENT ON COLUMN "COM"."GALL_NO" IS '갤러리글번호';
   COMMENT ON COLUMN "COM"."COM_CONTENT" IS '댓글내용';
   COMMENT ON COLUMN "COM"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "COM"."BOARD_WRDAY" IS '작성일';
   COMMENT ON TABLE "COM"  IS '댓글';
--------------------------------------------------------
--  DDL for Table FREE
--------------------------------------------------------

  CREATE TABLE "FREE" 
   (	"FREE_NO" NUMBER(11,0), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"FREE_TITLE" VARCHAR2(100 BYTE), 
	"FREE_CONTENT" VARCHAR2(2000 BYTE), 
	"FREE_WRDAY" TIMESTAMP (6), 
	"FREE_MODAY" TIMESTAMP (6), 
	"FREE_READCOUNT" NUMBER(11,0), 
	"FREE_ISSHOW" CHAR(1 BYTE) DEFAULT 'Y'
   ) ;

   COMMENT ON COLUMN "FREE"."FREE_NO" IS '자유글번호';
   COMMENT ON COLUMN "FREE"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "FREE"."FREE_TITLE" IS '글제목';
   COMMENT ON COLUMN "FREE"."FREE_CONTENT" IS '글내용';
   COMMENT ON COLUMN "FREE"."FREE_WRDAY" IS '작성일';
   COMMENT ON COLUMN "FREE"."FREE_MODAY" IS '수정일';
   COMMENT ON COLUMN "FREE"."FREE_READCOUNT" IS '조회수';
   COMMENT ON COLUMN "FREE"."FREE_ISSHOW" IS '조회가능여부';
   COMMENT ON TABLE "FREE"  IS '자유게시판';
--------------------------------------------------------
--  DDL for Table GALL
--------------------------------------------------------

  CREATE TABLE "GALL" 
   (	"GALL_NO" NUMBER(11,0), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"GALL_TITLE" VARCHAR2(100 BYTE), 
	"GALL_CONTENT" VARCHAR2(2000 BYTE), 
	"GALL_WRDAY" TIMESTAMP (6), 
	"GALL_MODAY" TIMESTAMP (6), 
	"GALL_READCOUNT" NUMBER(11,0), 
	"GALL_ISSHOW" CHAR(1 BYTE) DEFAULT 'Y'
   ) ;

   COMMENT ON COLUMN "GALL"."GALL_NO" IS '갤러리글번호';
   COMMENT ON COLUMN "GALL"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "GALL"."GALL_TITLE" IS '글제목';
   COMMENT ON COLUMN "GALL"."GALL_CONTENT" IS '글내용';
   COMMENT ON COLUMN "GALL"."GALL_WRDAY" IS '작성일';
   COMMENT ON COLUMN "GALL"."GALL_MODAY" IS '수정일';
   COMMENT ON COLUMN "GALL"."GALL_READCOUNT" IS '조회수';
   COMMENT ON COLUMN "GALL"."GALL_ISSHOW" IS '조회가능여부';
   COMMENT ON TABLE "GALL"  IS '갤러리';
--------------------------------------------------------
--  DDL for Table IMG
--------------------------------------------------------

  CREATE TABLE "IMG" 
   (	"IMG_NO" NUMBER(11,0), 
	"GALL_NO" NUMBER(11,0), 
	"IMG_OLD" VARCHAR2(150 BYTE), 
	"IMG_NEW" VARCHAR2(150 BYTE)
   ) ;

   COMMENT ON COLUMN "IMG"."IMG_NO" IS '이미지번호';
   COMMENT ON COLUMN "IMG"."GALL_NO" IS '갤러리글번호';
   COMMENT ON COLUMN "IMG"."IMG_OLD" IS '사용자업로드';
   COMMENT ON COLUMN "IMG"."IMG_NEW" IS '서버업로드';
   COMMENT ON TABLE "IMG"  IS '이미지';
--------------------------------------------------------
--  DDL for Table MEM
--------------------------------------------------------

  CREATE TABLE "MEM" 
   (	"MEM_ID" VARCHAR2(30 BYTE), 
	"MEM_PW" VARCHAR2(30 BYTE), 
	"MEM_NAME" VARCHAR2(30 BYTE), 
	"MEM_BIRTH" DATE, 
	"MEM_CALL" VARCHAR2(50 BYTE), 
	"MEM_ADRRESS" VARCHAR2(100 BYTE), 
	"MEM_EMAIL" VARCHAR2(50 BYTE), 
	"MEM_GRADE" VARCHAR2(20 BYTE) DEFAULT '일반'
   ) ;

   COMMENT ON COLUMN "MEM"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "MEM"."MEM_PW" IS '비밀번호';
   COMMENT ON COLUMN "MEM"."MEM_NAME" IS '회원이름';
   COMMENT ON COLUMN "MEM"."MEM_BIRTH" IS '생년월일';
   COMMENT ON COLUMN "MEM"."MEM_CALL" IS '연락처';
   COMMENT ON COLUMN "MEM"."MEM_ADRRESS" IS '주소';
   COMMENT ON COLUMN "MEM"."MEM_EMAIL" IS '이메일';
   COMMENT ON COLUMN "MEM"."MEM_GRADE" IS '회원등급';
   COMMENT ON TABLE "MEM"  IS '회원';
--------------------------------------------------------
--  DDL for Table NOTICE
--------------------------------------------------------

  CREATE TABLE "NOTICE" 
   (	"NOTICE_NO" NUMBER(11,0), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"NOTICE_TITLE" VARCHAR2(100 BYTE), 
	"NOTICE_CONTENT" VARCHAR2(2000 BYTE), 
	"NOTICE_WRDAY" TIMESTAMP (6), 
	"NOTICE_MODAY" TIMESTAMP (6), 
	"NOTICE_READCOUNT" NUMBER(11,0)
   ) ;

   COMMENT ON COLUMN "NOTICE"."NOTICE_NO" IS '공지사항글번호';
   COMMENT ON COLUMN "NOTICE"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "NOTICE"."NOTICE_TITLE" IS '글제목';
   COMMENT ON COLUMN "NOTICE"."NOTICE_CONTENT" IS '글내용';
   COMMENT ON COLUMN "NOTICE"."NOTICE_WRDAY" IS '작성일';
   COMMENT ON COLUMN "NOTICE"."NOTICE_MODAY" IS '수정일';
   COMMENT ON COLUMN "NOTICE"."NOTICE_READCOUNT" IS '조회수';
   COMMENT ON TABLE "NOTICE"  IS '공지사항';
--------------------------------------------------------
--  DDL for Table PET
--------------------------------------------------------

  CREATE TABLE "PET" 
   (	"PET_NO" NUMBER(11,0), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"PET_NAME" VARCHAR2(50 BYTE), 
	"PET_BIRTH" DATE, 
	"PET_WEIGHT" NUMBER(5,0), 
	"PET_NEUTER" VARCHAR2(20 BYTE), 
	"PET_MEDICAL" VARCHAR2(20 BYTE), 
	"PET_MEMO" VARCHAR2(1000 BYTE), 
	"PET_IMG" VARCHAR2(1000 BYTE)
   ) ;

   COMMENT ON COLUMN "PET"."PET_NO" IS '애완동물번호';
   COMMENT ON COLUMN "PET"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "PET"."PET_NAME" IS '애완동물이름';
   COMMENT ON COLUMN "PET"."PET_BIRTH" IS '애완생년월일';
   COMMENT ON COLUMN "PET"."PET_WEIGHT" IS '체중';
   COMMENT ON COLUMN "PET"."PET_NEUTER" IS '중성화여부';
   COMMENT ON COLUMN "PET"."PET_MEDICAL" IS '종합접종여부';
   COMMENT ON COLUMN "PET"."PET_MEMO" IS 'MEMO';
   COMMENT ON COLUMN "PET"."PET_IMG" IS '사진';
   COMMENT ON TABLE "PET"  IS '애완동물';
--------------------------------------------------------
--  DDL for Table QNA
--------------------------------------------------------

  CREATE TABLE "QNA" 
   (	"QNA_NO" NUMBER(11,0), 
	"QNA_RES" VARCHAR2(2000 BYTE), 
	"QNA_RES_CHECK" VARCHAR2(20 BYTE), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"QNA_TITLE" VARCHAR2(100 BYTE), 
	"QNA_CONTENT" VARCHAR2(2000 BYTE), 
	"QNA_WRDAY" TIMESTAMP (6), 
	"QNA_MODAY" TIMESTAMP (6), 
	"QNA_READCOUNT" NUMBER(11,0), 
	"QNA_ISSHOW" CHAR(1 BYTE) DEFAULT 'Y'
   ) ;

   COMMENT ON COLUMN "QNA"."QNA_NO" IS '질문글번호';
   COMMENT ON COLUMN "QNA"."QNA_RES" IS '답변내용';
   COMMENT ON COLUMN "QNA"."QNA_RES_CHECK" IS '답변상태';
   COMMENT ON COLUMN "QNA"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "QNA"."QNA_TITLE" IS '질문제목';
   COMMENT ON COLUMN "QNA"."QNA_CONTENT" IS '질문내용';
   COMMENT ON COLUMN "QNA"."QNA_WRDAY" IS '작성일';
   COMMENT ON COLUMN "QNA"."QNA_MODAY" IS '수정일';
   COMMENT ON COLUMN "QNA"."QNA_READCOUNT" IS '조회수';
   COMMENT ON COLUMN "QNA"."QNA_ISSHOW" IS '조회가능여부';
   COMMENT ON TABLE "QNA"  IS 'QnA';
--------------------------------------------------------
--  DDL for Table RESERVE
--------------------------------------------------------

  CREATE TABLE "RESERVE" 
   (	"RESERVE_NO" NUMBER(11,0), 
	"ROOM_NO" NUMBER(11,0), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"RESERVE_PRICE" NUMBER(10,0), 
	"RESERVE_METHOD" VARCHAR2(50 BYTE), 
	"RESERVE_PET_NUMBER" NUMBER(5,0), 
	"RESERVE_DAY" TIMESTAMP (6), 
	"RESERVE_PAY" VARCHAR2(30 BYTE) DEFAULT 'n', 
	"RESERVE_START" TIMESTAMP (6), 
	"RESERVE_END" TIMESTAMP (6), 
	"ROOM_USE" VARCHAR2(50 BYTE) DEFAULT '이용전'
   ) ;

   COMMENT ON COLUMN "RESERVE"."RESERVE_NO" IS '예약번호';
   COMMENT ON COLUMN "RESERVE"."ROOM_NO" IS '객실번호';
   COMMENT ON COLUMN "RESERVE"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "RESERVE"."RESERVE_PRICE" IS '금액';
   COMMENT ON COLUMN "RESERVE"."RESERVE_METHOD" IS '결제방법';
   COMMENT ON COLUMN "RESERVE"."RESERVE_PET_NUMBER" IS '애완동물투숙수';
   COMMENT ON COLUMN "RESERVE"."RESERVE_DAY" IS '예약신청일';
   COMMENT ON COLUMN "RESERVE"."RESERVE_PAY" IS '결제상태';
   COMMENT ON COLUMN "RESERVE"."RESERVE_START" IS '예약시작일';
   COMMENT ON COLUMN "RESERVE"."RESERVE_END" IS '예약종료일';
   COMMENT ON COLUMN "RESERVE"."ROOM_USE" IS '이용상태';
   COMMENT ON TABLE "RESERVE"  IS '예약';
--------------------------------------------------------
--  DDL for Table RESERVED
--------------------------------------------------------

  CREATE TABLE "RESERVED" 
   (	"ROOM_NO" NUMBER(11,0), 
	"RESERVE_NO" NUMBER(11,0), 
	"ROOM_NAME" VARCHAR2(50 BYTE), 
	"ROOM_CONDITION" VARCHAR2(10 BYTE) DEFAULT '예약', 
	"RESERVE_PERIOD" TIMESTAMP (6)
   ) ;

   COMMENT ON COLUMN "RESERVED"."ROOM_NO" IS '객실번호';
   COMMENT ON COLUMN "RESERVED"."RESERVE_NO" IS '예약번호';
   COMMENT ON COLUMN "RESERVED"."ROOM_NAME" IS '객실명';
   COMMENT ON COLUMN "RESERVED"."ROOM_CONDITION" IS '예약상태';
   COMMENT ON COLUMN "RESERVED"."RESERVE_PERIOD" IS '날짜';
   COMMENT ON TABLE "RESERVED"  IS '예약객실';
--------------------------------------------------------
--  DDL for Table REVIEW
--------------------------------------------------------

  CREATE TABLE "REVIEW" 
   (	"REVIEW_NO" NUMBER(11,0), 
	"REVIEW_SCORE" NUMBER(5,0), 
	"RESERVE_NO" NUMBER(11,0), 
	"MEM_ID" VARCHAR2(30 BYTE), 
	"REVIEW_TITLE" VARCHAR2(100 BYTE), 
	"REVIEW_CONTENT" VARCHAR2(2000 BYTE), 
	"REVIEW_WRDAY" TIMESTAMP (6), 
	"REVIEW_READCOUNT" NUMBER(11,0), 
	"REVIEW_ISSHOW" CHAR(1 BYTE) DEFAULT 'Y'
   ) ;

   COMMENT ON COLUMN "REVIEW"."REVIEW_NO" IS '후기글번호';
   COMMENT ON COLUMN "REVIEW"."REVIEW_SCORE" IS '점수';
   COMMENT ON COLUMN "REVIEW"."RESERVE_NO" IS '예약번호';
   COMMENT ON COLUMN "REVIEW"."MEM_ID" IS '회원아이디';
   COMMENT ON COLUMN "REVIEW"."REVIEW_TITLE" IS '글제목';
   COMMENT ON COLUMN "REVIEW"."REVIEW_CONTENT" IS '글내용';
   COMMENT ON COLUMN "REVIEW"."REVIEW_WRDAY" IS '작성일';
   COMMENT ON COLUMN "REVIEW"."REVIEW_READCOUNT" IS '조회수';
   COMMENT ON COLUMN "REVIEW"."REVIEW_ISSHOW" IS '조회가능여부';
   COMMENT ON TABLE "REVIEW"  IS '후기게시판';
--------------------------------------------------------
--  DDL for Table ROOM
--------------------------------------------------------

  CREATE TABLE "ROOM" 
   (	"ROOM_NO" NUMBER(11,0), 
	"ROOM_NAME" VARCHAR2(50 BYTE), 
	"ROOM_PET_MAX" NUMBER(5,0), 
	"ROOM_STATUS" VARCHAR2(30 BYTE) DEFAULT '이용가능', 
	"ROOM_PRICE" NUMBER(10,0)
   ) ;

   COMMENT ON COLUMN "ROOM"."ROOM_NO" IS '객실번호';
   COMMENT ON COLUMN "ROOM"."ROOM_NAME" IS '객실명';
   COMMENT ON COLUMN "ROOM"."ROOM_PET_MAX" IS '객실최대투숙수';
   COMMENT ON COLUMN "ROOM"."ROOM_STATUS" IS '객실상태(고장,수리)';
   COMMENT ON COLUMN "ROOM"."ROOM_PRICE" IS '객실금액';
   COMMENT ON TABLE "ROOM"  IS '객실';
REM INSERTING into COM
SET DEFINE OFF;
REM INSERTING into FREE
SET DEFINE OFF;
Insert into FREE (FREE_NO,MEM_ID,FREE_TITLE,FREE_CONTENT,FREE_WRDAY,FREE_MODAY,FREE_READCOUNT,FREE_ISSHOW) values (1,'red','처음으로 글써봅니다.!!','안녕하세요',to_timestamp('21/03/15 06:24:40.399000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/15 06:24:40.399000000','RR/MM/DD HH24:MI:SSXFF'),0,'Y');
REM INSERTING into GALL
SET DEFINE OFF;
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (10,'red','반갑습니다','안녕하세요',to_timestamp('21/03/15 05:20:30.798000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/15 05:20:30.798000000','RR/MM/DD HH24:MI:SSXFF'),2,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (2,'red','tt','tt',to_timestamp('21/03/14 22:19:42.061000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:19:42.061000000','RR/MM/DD HH24:MI:SSXFF'),1,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (3,'red','tt','tt',to_timestamp('21/03/14 22:19:50.293000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:19:50.293000000','RR/MM/DD HH24:MI:SSXFF'),2,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (4,'red','tt','tt',to_timestamp('21/03/14 22:19:57.857000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:19:57.857000000','RR/MM/DD HH24:MI:SSXFF'),2,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (5,'red','tt','tt',to_timestamp('21/03/14 22:20:28.001000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:20:28.001000000','RR/MM/DD HH24:MI:SSXFF'),2,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (6,'red','tt','tt',to_timestamp('21/03/14 22:20:35.497000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:44:26.899000000','RR/MM/DD HH24:MI:SSXFF'),5,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (7,'red','tt','tt',to_timestamp('21/03/14 22:20:46.125000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:20:46.125000000','RR/MM/DD HH24:MI:SSXFF'),2,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (8,'red','tt','tt',to_timestamp('21/03/14 22:20:57.320000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:20:57.320000000','RR/MM/DD HH24:MI:SSXFF'),4,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (9,'red','ssss','sss',to_timestamp('21/03/14 22:28:59.333000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:28:59.333000000','RR/MM/DD HH24:MI:SSXFF'),5,'Y');
Insert into GALL (GALL_NO,MEM_ID,GALL_TITLE,GALL_CONTENT,GALL_WRDAY,GALL_MODAY,GALL_READCOUNT,GALL_ISSHOW) values (1,'red','테스트용22','test1',to_timestamp('21/03/14 22:11:14.411000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/14 22:11:14.411000000','RR/MM/DD HH24:MI:SSXFF'),2,'N');
REM INSERTING into IMG
SET DEFINE OFF;
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (12,10,'10.jpg','202103150520303.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (2,2,'2.jpg','202103142219423.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (3,3,'1.jpg','202103142219503.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (4,4,'4.jpg','202103142219573.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (5,5,'5.jpg','202103142220283.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (6,6,'4.jpg','202103142220353.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (7,7,'7.jpg','202103142220462.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (8,8,'4.jpg','202103142220573.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (9,9,'5.jpg','202103142228591.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (10,9,'4.jpg','202103142228592.jpg');
Insert into IMG (IMG_NO,GALL_NO,IMG_OLD,IMG_NEW) values (11,9,'4.jpg','202103142228593.jpg');
REM INSERTING into MEM
SET DEFINE OFF;
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('sea','1234','admin',to_date('00/01/01','RR/MM/DD'),'010-1111-1111','상암동','oooo@naver.com','관리자');
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('red','red123','김윤희',to_date('83/05/07','RR/MM/DD'),'010-5555-2222','민락동','red@gamil.com','일반');
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('purple','purple123','이숙희',to_date('63/10/02','RR/MM/DD'),'010-2222-4444','민락동','purple@naver.com','일반');
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('orange','orange123','김재희',to_date('89/04/08','RR/MM/DD'),'010-3232-3232','민락동','orange@gamil.com','일반');
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('yellow','yellow123','김철수',to_date('78/01/02','RR/MM/DD'),'010-4545-4545','민락동','yellow@naver.com','일반');
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('blue','blue123','박민수',to_date('98/12/22','RR/MM/DD'),'010-1100-1100','민락동','blue@nate.com','일반');
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('green','green123','홍채아',to_date('77/05/12','RR/MM/DD'),'010-2200-2200','민락동','green@naver.com','일반');
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('white','white123','김연아',to_date('99/12/23','RR/MM/DD'),'010-3300-3300','민락동','white@daum.net','일반');
Insert into MEM (MEM_ID,MEM_PW,MEM_NAME,MEM_BIRTH,MEM_CALL,MEM_ADRRESS,MEM_EMAIL,MEM_GRADE) values ('black','black123','박민재',to_date('68/08/08','RR/MM/DD'),'010-4400-4400','민락동','black@naver.com','일반');
REM INSERTING into NOTICE
SET DEFINE OFF;
REM INSERTING into PET
SET DEFINE OFF;
Insert into PET (PET_NO,MEM_ID,PET_NAME,PET_BIRTH,PET_WEIGHT,PET_NEUTER,PET_MEDICAL,PET_MEMO,PET_IMG) values (2,'red','cat',to_date('21/03/08','RR/MM/DD'),30,'아니오','해당없음',null,' ');
Insert into PET (PET_NO,MEM_ID,PET_NAME,PET_BIRTH,PET_WEIGHT,PET_NEUTER,PET_MEDICAL,PET_MEMO,PET_IMG) values (3,'red','cat',to_date('21/03/13','RR/MM/DD'),30,'아니오','해당없음',null,' ');
REM INSERTING into QNA
SET DEFINE OFF;
Insert into QNA (QNA_NO,QNA_RES,QNA_RES_CHECK,MEM_ID,QNA_TITLE,QNA_CONTENT,QNA_WRDAY,QNA_MODAY,QNA_READCOUNT,QNA_ISSHOW) values (1,null,null,'red','궁금한게 있습니다.','강아지 말고 고양이도 가능한가요?',to_timestamp('21/03/15 05:57:59.552000000','RR/MM/DD HH24:MI:SSXFF'),null,1,'Y');
Insert into QNA (QNA_NO,QNA_RES,QNA_RES_CHECK,MEM_ID,QNA_TITLE,QNA_CONTENT,QNA_WRDAY,QNA_MODAY,QNA_READCOUNT,QNA_ISSHOW) values (2,null,'답변완료','red','운영시간은 몇시까지인가요?','11시에 도착하는데 가능한지 알고싶습니다.',to_timestamp('21/03/15 06:02:10.363000000','RR/MM/DD HH24:MI:SSXFF'),null,6,'Y');
REM INSERTING into RESERVE
SET DEFINE OFF;
Insert into RESERVE (RESERVE_NO,ROOM_NO,MEM_ID,RESERVE_PRICE,RESERVE_METHOD,RESERVE_PET_NUMBER,RESERVE_DAY,RESERVE_PAY,RESERVE_START,RESERVE_END,ROOM_USE) values (3,7,'red',0,'card',2,to_timestamp('21/03/14 22:54:32.000000000','RR/MM/DD HH24:MI:SSXFF'),'결제전',to_timestamp('21/03/15 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/18 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'이용전');
Insert into RESERVE (RESERVE_NO,ROOM_NO,MEM_ID,RESERVE_PRICE,RESERVE_METHOD,RESERVE_PET_NUMBER,RESERVE_DAY,RESERVE_PAY,RESERVE_START,RESERVE_END,ROOM_USE) values (2,4,'red',120000,'actTrans',2,to_timestamp('21/03/14 22:05:33.000000000','RR/MM/DD HH24:MI:SSXFF'),'결제완료',to_timestamp('21/03/18 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/20 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'이용완료');
Insert into RESERVE (RESERVE_NO,ROOM_NO,MEM_ID,RESERVE_PRICE,RESERVE_METHOD,RESERVE_PET_NUMBER,RESERVE_DAY,RESERVE_PAY,RESERVE_START,RESERVE_END,ROOM_USE) values (1,1,'red',90000,'card',1,to_timestamp('21/03/14 22:04:36.000000000','RR/MM/DD HH24:MI:SSXFF'),'결제전',to_timestamp('21/03/16 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('21/03/19 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'),'이용중');
REM INSERTING into RESERVED
SET DEFINE OFF;
Insert into RESERVED (ROOM_NO,RESERVE_NO,ROOM_NAME,ROOM_CONDITION,RESERVE_PERIOD) values (7,3,'undefined','예약',to_timestamp('21/03/15 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into RESERVED (ROOM_NO,RESERVE_NO,ROOM_NAME,ROOM_CONDITION,RESERVE_PERIOD) values (7,3,'undefined','예약',to_timestamp('21/03/16 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into RESERVED (ROOM_NO,RESERVE_NO,ROOM_NAME,ROOM_CONDITION,RESERVE_PERIOD) values (7,3,'undefined','예약',to_timestamp('21/03/17 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into RESERVED (ROOM_NO,RESERVE_NO,ROOM_NAME,ROOM_CONDITION,RESERVE_PERIOD) values (4,2,'double','예약',to_timestamp('21/03/18 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into RESERVED (ROOM_NO,RESERVE_NO,ROOM_NAME,ROOM_CONDITION,RESERVE_PERIOD) values (4,2,'double','예약',to_timestamp('21/03/19 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into RESERVED (ROOM_NO,RESERVE_NO,ROOM_NAME,ROOM_CONDITION,RESERVE_PERIOD) values (1,1,'single','예약',to_timestamp('21/03/16 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into RESERVED (ROOM_NO,RESERVE_NO,ROOM_NAME,ROOM_CONDITION,RESERVE_PERIOD) values (1,1,'single','예약',to_timestamp('21/03/17 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
Insert into RESERVED (ROOM_NO,RESERVE_NO,ROOM_NAME,ROOM_CONDITION,RESERVE_PERIOD) values (1,1,'single','예약',to_timestamp('21/03/18 00:00:00.000000000','RR/MM/DD HH24:MI:SSXFF'));
REM INSERTING into REVIEW
SET DEFINE OFF;
Insert into REVIEW (REVIEW_NO,REVIEW_SCORE,RESERVE_NO,MEM_ID,REVIEW_TITLE,REVIEW_CONTENT,REVIEW_WRDAY,REVIEW_READCOUNT,REVIEW_ISSHOW) values (2,4,2,'red','재밌었습니다!','다음에 또 오고싶네요!!',to_timestamp('21/03/15 05:26:27.672000000','RR/MM/DD HH24:MI:SSXFF'),1,'Y');
REM INSERTING into ROOM
SET DEFINE OFF;
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (1,'single',1,'이용가능',30000);
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (2,'single',1,'이용가능',30000);
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (3,'single',1,'이용가능',30000);
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (4,'double',2,'이용가능',60000);
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (5,'double',2,'이용가능',60000);
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (6,'double',2,'이용가능',60000);
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (7,'triple',3,'이용가능',70000);
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (8,'triple',3,'이용가능',70000);
Insert into ROOM (ROOM_NO,ROOM_NAME,ROOM_PET_MAX,ROOM_STATUS,ROOM_PRICE) values (9,'triple',3,'이용가능',70000);
--------------------------------------------------------
--  DDL for Index COM_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "COM_NO_PK" ON "COM" ("COM_NO") 
  ;
--------------------------------------------------------
--  DDL for Index FREE_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "FREE_NO_PK" ON "FREE" ("FREE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index GALL_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "GALL_NO_PK" ON "GALL" ("GALL_NO") 
  ;
--------------------------------------------------------
--  DDL for Index MEM_ID_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "MEM_ID_PK" ON "MEM" ("MEM_ID") 
  ;
--------------------------------------------------------
--  DDL for Index NOTICE_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "NOTICE_NO_PK" ON "NOTICE" ("NOTICE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PET_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "PET_NO_PK" ON "PET" ("PET_NO") 
  ;
--------------------------------------------------------
--  DDL for Index PK_IMG
--------------------------------------------------------

  CREATE UNIQUE INDEX "PK_IMG" ON "IMG" ("IMG_NO") 
  ;
--------------------------------------------------------
--  DDL for Index QNA_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "QNA_NO_PK" ON "QNA" ("QNA_NO") 
  ;
--------------------------------------------------------
--  DDL for Index REVERVE_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVERVE_NO_PK" ON "RESERVE" ("RESERVE_NO") 
  ;
--------------------------------------------------------
--  DDL for Index REVIEW_NO_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "REVIEW_NO_PK" ON "REVIEW" ("REVIEW_NO") 
  ;
--------------------------------------------------------
--  DDL for Index ROOM_NAME_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "ROOM_NAME_PK" ON "ROOM" ("ROOM_NO") 
  ;
--------------------------------------------------------
--  Constraints for Table COM
--------------------------------------------------------

  ALTER TABLE "COM" ADD CONSTRAINT "COM_NO_PK" PRIMARY KEY ("COM_NO") ENABLE;
  ALTER TABLE "COM" MODIFY ("BOARD_WRDAY" NOT NULL ENABLE);
  ALTER TABLE "COM" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "COM" MODIFY ("GALL_NO" NOT NULL ENABLE);
  ALTER TABLE "COM" MODIFY ("COM_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table FREE
--------------------------------------------------------

  ALTER TABLE "FREE" ADD CONSTRAINT "FREE_NO_PK" PRIMARY KEY ("FREE_NO") ENABLE;
  ALTER TABLE "FREE" MODIFY ("FREE_WRDAY" NOT NULL ENABLE);
  ALTER TABLE "FREE" MODIFY ("FREE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "FREE" MODIFY ("FREE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "FREE" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "FREE" MODIFY ("FREE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table GALL
--------------------------------------------------------

  ALTER TABLE "GALL" ADD CONSTRAINT "GALL_NO_PK" PRIMARY KEY ("GALL_NO") ENABLE;
  ALTER TABLE "GALL" MODIFY ("GALL_WRDAY" NOT NULL ENABLE);
  ALTER TABLE "GALL" MODIFY ("GALL_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "GALL" MODIFY ("GALL_TITLE" NOT NULL ENABLE);
  ALTER TABLE "GALL" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "GALL" MODIFY ("GALL_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table IMG
--------------------------------------------------------

  ALTER TABLE "IMG" ADD CONSTRAINT "PK_IMG" PRIMARY KEY ("IMG_NO") ENABLE;
  ALTER TABLE "IMG" MODIFY ("GALL_NO" NOT NULL ENABLE);
  ALTER TABLE "IMG" MODIFY ("IMG_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table MEM
--------------------------------------------------------

  ALTER TABLE "MEM" ADD CONSTRAINT "MEM_ID_PK" PRIMARY KEY ("MEM_ID") ENABLE;
  ALTER TABLE "MEM" MODIFY ("MEM_GRADE" NOT NULL ENABLE);
  ALTER TABLE "MEM" MODIFY ("MEM_BIRTH" NOT NULL ENABLE);
  ALTER TABLE "MEM" MODIFY ("MEM_NAME" NOT NULL ENABLE);
  ALTER TABLE "MEM" MODIFY ("MEM_PW" NOT NULL ENABLE);
  ALTER TABLE "MEM" MODIFY ("MEM_ID" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table NOTICE
--------------------------------------------------------

  ALTER TABLE "NOTICE" ADD CONSTRAINT "NOTICE_NO_PK" PRIMARY KEY ("NOTICE_NO") ENABLE;
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_WRDAY" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_TITLE" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "NOTICE" MODIFY ("NOTICE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table PET
--------------------------------------------------------

  ALTER TABLE "PET" ADD CONSTRAINT "PET_NO_PK" PRIMARY KEY ("PET_NO") ENABLE;
  ALTER TABLE "PET" MODIFY ("PET_NAME" NOT NULL ENABLE);
  ALTER TABLE "PET" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "PET" MODIFY ("PET_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" ADD CONSTRAINT "QNA_NO_PK" PRIMARY KEY ("QNA_NO") ENABLE;
  ALTER TABLE "QNA" MODIFY ("QNA_WRDAY" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_TITLE" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "QNA" MODIFY ("QNA_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "RESERVE" ADD CONSTRAINT "REVERVE_NO_PK" PRIMARY KEY ("RESERVE_NO") ENABLE;
  ALTER TABLE "RESERVE" MODIFY ("ROOM_USE" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("RESERVE_END" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("RESERVE_START" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("RESERVE_DAY" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("RESERVE_PET_NUMBER" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("RESERVE_METHOD" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("RESERVE_PRICE" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("ROOM_NO" NOT NULL ENABLE);
  ALTER TABLE "RESERVE" MODIFY ("RESERVE_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table RESERVED
--------------------------------------------------------

  ALTER TABLE "RESERVED" MODIFY ("RESERVE_PERIOD" NOT NULL ENABLE);
  ALTER TABLE "RESERVED" MODIFY ("ROOM_NAME" NOT NULL ENABLE);
  ALTER TABLE "RESERVED" MODIFY ("RESERVE_NO" NOT NULL ENABLE);
  ALTER TABLE "RESERVED" MODIFY ("ROOM_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_NO_PK" PRIMARY KEY ("REVIEW_NO") ENABLE;
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_WRDAY" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_CONTENT" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_TITLE" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("MEM_ID" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("RESERVE_NO" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_SCORE" NOT NULL ENABLE);
  ALTER TABLE "REVIEW" MODIFY ("REVIEW_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Constraints for Table ROOM
--------------------------------------------------------

  ALTER TABLE "ROOM" ADD CONSTRAINT "ROOM_NAME_PK" PRIMARY KEY ("ROOM_NO") ENABLE;
  ALTER TABLE "ROOM" MODIFY ("ROOM_PRICE" NOT NULL ENABLE);
  ALTER TABLE "ROOM" MODIFY ("ROOM_STATUS" NOT NULL ENABLE);
  ALTER TABLE "ROOM" MODIFY ("ROOM_PET_MAX" NOT NULL ENABLE);
  ALTER TABLE "ROOM" MODIFY ("ROOM_NAME" NOT NULL ENABLE);
  ALTER TABLE "ROOM" MODIFY ("ROOM_NO" NOT NULL ENABLE);
--------------------------------------------------------
--  Ref Constraints for Table FREE
--------------------------------------------------------

  ALTER TABLE "FREE" ADD CONSTRAINT "FK_MEM_TO_FREE" FOREIGN KEY ("MEM_ID")
	  REFERENCES "MEM" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table GALL
--------------------------------------------------------

  ALTER TABLE "GALL" ADD CONSTRAINT "FK_MEM_TO_GALL" FOREIGN KEY ("MEM_ID")
	  REFERENCES "MEM" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table IMG
--------------------------------------------------------

  ALTER TABLE "IMG" ADD CONSTRAINT "FK_GALL_TO_IMG" FOREIGN KEY ("GALL_NO")
	  REFERENCES "GALL" ("GALL_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table PET
--------------------------------------------------------

  ALTER TABLE "PET" ADD CONSTRAINT "FK_MEM_TO_PET" FOREIGN KEY ("MEM_ID")
	  REFERENCES "MEM" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table QNA
--------------------------------------------------------

  ALTER TABLE "QNA" ADD CONSTRAINT "FK_MEM_TO_QNA" FOREIGN KEY ("MEM_ID")
	  REFERENCES "MEM" ("MEM_ID") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVE
--------------------------------------------------------

  ALTER TABLE "RESERVE" ADD CONSTRAINT "FK_MEM_TO_RESERVE" FOREIGN KEY ("MEM_ID")
	  REFERENCES "MEM" ("MEM_ID") ENABLE;
  ALTER TABLE "RESERVE" ADD CONSTRAINT "FK_ROOM_TO_RESERVE" FOREIGN KEY ("ROOM_NO")
	  REFERENCES "ROOM" ("ROOM_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table RESERVED
--------------------------------------------------------

  ALTER TABLE "RESERVED" ADD CONSTRAINT "FK_RESERVE_TO_RESERVED" FOREIGN KEY ("RESERVE_NO")
	  REFERENCES "RESERVE" ("RESERVE_NO") ENABLE;
  ALTER TABLE "RESERVED" ADD CONSTRAINT "FK_ROOM_TO_RESERVED" FOREIGN KEY ("ROOM_NO")
	  REFERENCES "ROOM" ("ROOM_NO") ENABLE;
--------------------------------------------------------
--  Ref Constraints for Table REVIEW
--------------------------------------------------------

  ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_MEM_TO_REVIEW" FOREIGN KEY ("MEM_ID")
	  REFERENCES "MEM" ("MEM_ID") ENABLE;
  ALTER TABLE "REVIEW" ADD CONSTRAINT "FK_RESERVE_TO_REVIEW" FOREIGN KEY ("RESERVE_NO")
	  REFERENCES "RESERVE" ("RESERVE_NO") ENABLE;
