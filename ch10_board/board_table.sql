CREATE SEQUENCE SEQ_BOARD NOCACHE;

CREATE TABLE board (
	num	number PRIMARY KEY,
	name varchar2(20) NOT NULL,
	subject varchar2(50) NOT NULL,
	content	varchar2(4000) NOT NULL,
	pos	number,
	ref	number,
	depth number,
	regdate	date,
	pass varchar2(15) NOT NULL,
	ip varchar2(15),
	count number default 0
);

insert into board values(SEQ_BOARD.NEXTVAL, '김민수', '제목1', '내용1', 0, SEQ_BOARD.CURRVAL, 0, '2025-07-01', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '이서연', '제목2', '내용2', 0, SEQ_BOARD.CURRVAL, 0, '2025-07-05', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '박지훈', '제목3', '내용3', 0, SEQ_BOARD.CURRVAL, 0, '2025-07-12', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '최유진', '제목4', '내용4', 0, SEQ_BOARD.CURRVAL, 0, '2025-08-14', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '정우성', '제목5', '내용5', 0, SEQ_BOARD.CURRVAL, 0, '2025-08-25', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '한지민', '제목6', '내용6', 0, SEQ_BOARD.CURRVAL, 0, '2025-08-04', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '오지훈', '제목7', '내용7', 0, SEQ_BOARD.CURRVAL, 0, '2025-09-15', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '서현진', '제목8', '내용8', 0, SEQ_BOARD.CURRVAL, 0, '2025-09-28', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '강동원', '제목9', '내용9', 0, SEQ_BOARD.CURRVAL, 0, '2025-10-08', '1234', '0:0:0:0:0:0:0:1', default);
insert into board values(SEQ_BOARD.NEXTVAL, '윤아름', '제목10', '내용10', 0, SEQ_BOARD.CURRVAL, 0, '2025-10-11', '1234', '0:0:0:0:0:0:0:1', default);

commit;