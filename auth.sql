CREATE DATABASE userbase;

\c userbase
-- Luodaan taulu rekisteröityneille käyttäjille
CREATE TABLE users(
id SERIAL PRIMARY KEY,
login VARCHAR(255) NOT NULL,
password VARCHAR(255) NOT NULL,
"createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
"updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Aihe-alue -taulu
CREATE TABLE topics(
id SERIAL PRIMARY KEY,
title VARCHAR(255) NOT NULL,
posttime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
"createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
"updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Kysymystaulu (referenssi aihe-alueeseen)
CREATE TABLE questions(
    id SERIAL PRIMARY KEY,
    question text NOT NULL,
    correct_answer text,
    wrong_answer text ARRAY[3],
    topics_id int REFERENCES topics(id),
    q_author varchar(255),
    q_posttime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Quiz-taulu
CREATE TABLE quiz(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    question text ARRAY[],
    correct text ARRAY[],
    answers text ARRAY[],
    quiz_posttime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
-- Tulokset -taulu
CREATE TABLE scores(
    id SERIAL PRIMARY KEY,
    nickname text NOT NULL,
    score INTEGER,
    "createdAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO topics(title, posttime) VALUES('React', DEFAULT);
INSERT INTO topics(title, posttime) VALUES('HTML', DEFAULT);
INSERT INTO topics(title, posttime) VALUES('CSS', DEFAULT);
INSERT INTO topics(title, posttime) VALUES('Python', DEFAULT);
INSERT INTO topics(title, posttime) VALUES('Angular', DEFAULT);
INSERT INTO topics(title, posttime) VALUES('AWS', DEFAULT);
INSERT INTO topics(title, posttime) VALUES('SQL', DEFAULT);



 INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (1, 'Is this easy', 'no', '{"yes", "kind of", "not sure"}', 'Tommi', DEFAULT);

 INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (1, 'onko tämä helppoa?', 'ei', '{"joo on helppoa", "ehkä on helppoa", "en tiedä"}', 'Tommi', DEFAULT);

 INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (1, 'Who is a good boy?', 'The dog is', '{"Not me", "Possibly me", "Jesus Christ Superstar"}', 'Tommi', DEFAULT);

 INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (1, 'How big is the world?', 'Yambalayaa!', '{"Mambo number 5", "Scaramouche, scaramouche!", "Nothing matters to meeeeeee"}', 'Tommi', DEFAULT);

 INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (1, 'In React what is used to pass data to a component from outside?', 'props' '{"setState, render with arguments, PropTypes}', 'Lauri', DEFAULT);

 INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (1, 'What are the two ways that data gets handled in React?', 'state & props' '{"services & components"}', 'Lauri', DEFAULT);

INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (3, 'What does CSS stand for?', 'Cascading Style Sheets', '{"Computer Style Sheets", "Creative Style Sheets", "Colorful Style Sheets"}', 'Lauri', DEFAULT );

INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (2, 'Where in an HTML document is the correct place to refer to an external style sheet?', 'In the <head> section', '{"In the <body> section", "At the end of the document", "You cant refer to an external style sheet"}', 'Lauri', DEFAULT );

INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (2, 'Where in an HTML document is the correct place to refer to an external style sheet?', 'In the <head> section', '{"In the <body> section", "At the end of the document", "You cant refer to an external style sheet"}', 'Lauri', DEFAULT );

INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (2, 'Which HTML tag is used to define an internal style sheet?', '<style>', '{"<script>", "<headStyle>", "<css>"}', 'Lauri', DEFAULT );

INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (3, 'Which is the correct CSS syntax?', 'body {color: black;}', '{"body:color=black;", "{body;color:black;}", "{body:color=black;}"}', 'Lauri', DEFAULT );

INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (3, 'How do you insert a comment in a CSS file?', '/* this is a comment */', '{"\ this is a comment", "// this is a comment", "// this is a comment //"}', 'Lauri', DEFAULT );

INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (3, 'Which property is used to change the background color?', 'background-color', '{"bgColor", "bgcolor", "color"}', 'Lauri', DEFAULT );

INSERT INTO questions(topics_id, question, correct_answer, wrong_answer, q_author, q_posttime) VALUES (3, 'How do you add a background color for all <h1> elements?', 'h1 {background-color:#FFFFFF;}', '{"h1.all {background-color:#FFFFFF;}", "h1.setAll {background-color:#FFFFFF;}", "all.h1 {background-color:#FFFFFF;"}', 'Lauri', DEFAULT );




