CREATE TABLE ANSWER(
    question_id INTEGER NOT NULL primary key ,
    quetion_type ENUM('SPEAKING', 'WRITING', 'LISTENING', 'READING') not null,
    member_id  VARCHAR(255) NOT NULL ,
    text_Res TEXT,
    media_Res TEXT
)