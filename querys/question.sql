
CREATE TABLE QUESTION(
                         question_id INTEGER primary key,
                         question_type  ENUM ('SPEAKING', 'WRITING', 'LISTENING', 'READING') NOT NULL default 'WRITING',
                         question_title  VARCHAR(255) not null,
                         question_content  text,
                         question_media  BLOB,
                         question_second  BLOB,
                         question_prepTime  INTEGER,
                         question_resTime  INTEGER,
                         question_memo  text,
                         question_sessionId  INTEGER ,
                         quetion_orderNo INTEGER
)