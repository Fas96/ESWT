CREATE TABLE ANSWER(
    question_id INTEGER NOT NULL ,
    quetion_type ENUM('SPEAKING', 'WRITING', 'LISTENING', 'READING') DEFAULT('WRITING') ,
    member_id  VARCHAR(255) NOT NULL ,
    text_Res TEXT NOT NULL ,
    media_Res TEXT NOT NULL
)