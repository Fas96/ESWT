
CREATE TABLE QUESTION(
                         question_id INTEGER primary key  UNIQUE,
                         question_type  ENUM ('SPEAKING', 'WRITING', 'LISTENING', 'READING') NOT NULL,
                         question_title  VARCHAR(255),
                         question_content  VARCHAR(255),
                         question_media  BLOB,
                         question_second  BLOB,
                         question_prepTime  INTEGER,
                         question_resTime  INTEGER,
                         question_memo  VARCHAR(255),
                         question_sessionId  INTEGER ,
                         quetion_orderNo INTEGER,
                         FOREIGN KEY(question_sessionId) REFERENCES SESSION(session_id)
)