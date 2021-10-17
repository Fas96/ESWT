CREATE TABLE GRADE(
                      question_id INTEGER NOT NULL primary key,
                      member_id  VARCHAR(255) NOT NULL,
                      question_type ENUM('SPEAKING', 'WRITING', 'LISTENING', 'READING') NOT NULL,
                      session_id  INTEGER ,
                      answer_taskCompletion tinyint,
                      answer_fluency tinyint,
                      answer_coherence tinyint,
                      answer_pronounciation tinyint,
                      answer_languageUse tinyint,
                      answer_grammar tinyint,
                      score tinyint NOT NULL,
                      isMarked TINYINT DEFAULT (1),
                      answer_memo text
)