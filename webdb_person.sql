-- create person table
create table person(
    person_id       number(5) not null,
    name            varchar2(30) not null,
    hp              varchar2(20),
    company         varchar2(20),
    primary key (person_id)
);

-- create seq_person_id sequence
CREATE SEQUENCE seq_person_id
INCREMENT BY 1 
START WITH 1 ;

-- drop sequence, table
drop sequence seq_person_id;
drop table person;

-- insert data person table
INSERT INTO person VALUES (seq_person_id.nextval, '이효리', '010-1111-1111', '02-1111-1111' );
INSERT INTO person VALUES (seq_person_id.nextval, '정우성', '010-2222-2222', '02-2222-2222' );
INSERT INTO person VALUES (seq_person_id.nextval, '유재석', '010-3333-3333', '02-3333-3333' );
INSERT INTO person VALUES (seq_person_id.nextval, '이정재', '010-4444-4444', '02-4444-4444' );
INSERT INTO person VALUES (seq_person_id.nextval, '서장훈', '010-5555-5555', '02-5555-5555' );

-- select data person table
select  person_id,
        name,
        hp,
        company
from person;

-- commit
COMMIT;