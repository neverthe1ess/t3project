﻿# 포팅 시 주의사항
- 로그인과 회원가입은 MSSQL 사용
- machine.config와 web.config를 반드시 수정 후 사용하기

# 데이터베이스 관련 추가사항
- ASPNET 데이터베이스 > TEACHER 테이블(teacher_id, teacher_name, teacher_description)
- teacher_id(int)가 PK, teacher_name(char) NOT NULL, teacher_description(varchar(1000)) 임
- auto_increment(ms-sql에서는 identity) 를 쓰려고 하였으나, 파일이름 및 delete 명령 수행시 과거값을 저장하는 문제가 발생하여 teacher_id는 파일명과 맞춰서 저장_

# 로그인 관련 DB 생성
visual_studio 2015~2022 developer command(관리자 권한으로 실행) > aspnet_regsql.exe > ASPNET 이름으로 생성 _


# 게시판 테이블 추가 SQL
```
IF OBJECT_ID('board', 'U') IS NOT NULL
	DROP TABLE board;

CREATE TABLE board(
	serial_no int IDENTITY(1,1) NOT NULL PRIMARY KEY,
	writer varchar(50) NOT NULL,
	password varchar(50) NOT NULL,
	title varchar(250) NOT NULL,
	message varchar(max) NULL,
	ref_id int NULL,
	inner_id int NULL,
	depth int NULL,
	read_count int NULL,
	del_flag char(1) NULL,
	reg_date datetime NULL
);
```
