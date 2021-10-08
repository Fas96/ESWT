CREATE TABLE GRADE(
                      question_id INTEGER NOT NULL ,
                      member_id  VARCHAR(255) NOT NULL,
                      question_type ENUM('SPEAKING', 'WRITING', 'LISTENING', 'READING') NOT NULL,
                      session_id  INTEGER ,
                      answer_taskCompletion INTEGER,
                      answer_fluency INTEGER,
                      answer_coherence INTEGER,
                      answer_pronounciation INTEGER,
                      answer_languageUse INTEGER,
                      answer_grammar INTEGER,
                      score INTEGER NOT NULL,
                      isMarked SMALLINT DEFAULT (1),
                      answer_memo VARCHAR(255)
)