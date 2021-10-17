CREATE TABLE MEMBER(
    member_id  VARCHAR(255) primary key,
    member_password VARCHAR(255) not null,
    member_name VARCHAR(128) not null ,
    member_isRestricted TINYINT DEFAULT(0),
    member_isAdmin TINYINT DEFAULT(0)
)