CREATE TABLE MEMBER
(
    member_id  VARCHAR(255) primary key  UNIQUE,
    member_password VARCHAR(255) not null,
    member_name VARCHAR(64) not null ,
    member_isRestricted SMALLINT DEFAULT(0),
    member_isAdmin SMALLINT DEFAULT(0)
)