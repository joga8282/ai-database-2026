-- update
select * from students s ;

-- 홍길순의 나이를 변경
update students set
	   age = 60
where name = '홍길순';

-- 이러지 마세요
update students set
	   age = 60;


--삭제
delete from students 
where id = 11;

-- 이러면 큰일 나요
delete from students;

-- 논외 : 테이블 삭제
drop table students;

--테이블 생성
CREATE TABLE students (
id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY, -- 기본키(pk) -중복안되고 not null 
name VARCHAR(50) NOT NULL, -- 이름은 null이될 수 없다
age INT, -- 나이 null
email VARCHAR(100), -- 이메일 null
major VARCHAR(50), -- 전공 null
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP --null이 들어갈 수 있음.
);


-- 데이터 조회
select * from students;

-- 데이터 추가
insert into students (name, age, email, major)
values ('홍길동', 20, 'hong@example.com', '컴퓨터공학');

--전공에 널을 집어 넣는다
insert into students (name, age, email, major)
values ('성유고', 21, 'hong@example.com', null);

insert into students (name, age, email, major)
values ('성미나', null, 'mina@example.com', null);

insert into students (name)
values ('최민식');

insert into students (name, age, email, major)
values (null , null, 'hong@example.com', null);

insert into students (name, age, email)
values ('성미나', null, 'mina@example.com', null );


-- 이메일을 입력하지 않은 사용자를 조회
select * from students s 
where s.email = null; -- where s.email = null 는 조회불가

select * from students s 
where s.major is not null;

select * from students s 
where s.name != '성미나';