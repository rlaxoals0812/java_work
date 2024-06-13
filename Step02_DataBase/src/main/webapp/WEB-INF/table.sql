-- 방명록 글을 저장할 테이블
create table board_guest(
	num number primary key,
	writer varchar2(30),
	content varchar2(100) not null,
	pwd varchar2(30) not null,
	regdate date
	);
-- 방명록 글번호를 얻어낼 시퀀스
create sequence board_guest_seq;