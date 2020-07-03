create table person(
    person_id       number(5) not null,
    name            varchar2(30) not null,
    hp              varchar2(20),
    company         varchar2(20),
    primary key (person_id)
);

drop table person;
drop sequence seq_person_id;

CREATE SEQUENCE seq_person_id
INCREMENT BY 1 
START WITH 1 ;


INSERT INTO person VALUES (seq_person_id.nextval, '정우성', '010-1111-1111', '02-1111-1111' );
INSERT INTO person VALUES (seq_person_id.nextval, '이효리', '010-2222-2222', '02-1111-1111' );
INSERT INTO person VALUES (seq_person_id.nextval, '류승룡', '010-3333-3333', '02-1111-1111' );
INSERT INTO person VALUES (seq_person_id.nextval, '기안84', '010-4444-4444', '02-1111-1111' );
INSERT INTO person VALUES (seq_person_id.nextval, '김현수', '010-5555-5555', '02-1111-1111' );



select * from person;

COMMIT;