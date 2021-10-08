CREATE TYPE QUESTION_TYPES AS ENUM ('SPEAKING', 'WRITING', 'LISTENING', 'READING');

CREATE TABLE QUESTION(
                         question_id INTEGER primary key  UNIQUE,
                         question_type  QUESTION_TYPES,
                         question_title  VARCHAR(255),
                         question_content  VARCHAR(255),
                         question_media  BLOB,
                         question_second  BLOB,
                         question_prepTime  INTEGER,
                         question_resTime  INTEGER,
                         question_memo  VARCHAR(255),
                         question_sessionId  VARCHAR(255) ,
                         quetion_orderNo INTEGER,
                        FOREIGN KEY(question_sessionId) REFERENCES SESSION(session_id)
)