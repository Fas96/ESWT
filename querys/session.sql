CREATE TABLE SESSION(
                        session_id  INTEGER,
                        session_year INTEGER not null,
                        session_title VARCHAR(64) not null ,
                        session_startDate DATE DEFAULT(FORMAT(CURRENT_DATE ,'DD-MM-YYYY')),
                        session_endDate DATE DEFAULT('0000-00-00'),
                        PRIMARY KEY(session_id,session_year)
)