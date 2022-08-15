DROP DATABASE IF EXISTS messagely;

CREATE DATABASE messagely;

\c messagely; 

DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS messages;

CREATE TABLE users (
    username text PRIMARY KEY,
    password text NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    phone text NOT NULL,
    join_at timestamp without time zone NOT NULL,
    last_login_at timestamp with time zone
);

CREATE TABLE messages (
    id SERIAL PRIMARY KEY,
    from_username text NOT NULL REFERENCES users,
    to_username text NOT NULL REFERENCES users,
    body text NOT NULL,
    sent_at timestamp with time zone NOT NULL,
    read_at timestamp with time zone
);

INSERT INTO users 
(username, password, first_name, last_name, phone)
VALUES 
('squirrelgirl2', 'treats123', 'Sam', ' theDog', ' 555-2233')

INSERT INTO users 
(username, password, first_name, last_name, phone)
VALUES 
('bronco33', 'footballer3', 'Joe', 'Leather', ' 555-2443')

INSERT INTO users 
(username, password, first_name, last_name, phone)
VALUES 
('grillguy4', 'burger92', 'Stu', ' Mack', ' 999-8773')

INSERT INTO users 
(username, password, first_name, last_name, phone)
VALUES 
('beachChick', 'manchester33', 'Joanie', ' Hemps', ' 795-7951')

INSERT INTO users 
(username, password, first_name, last_name, phone)
VALUES 
('RockerGirl', 'rocker123', 'Annabelle', ' Chairlegs', ' 555-2233')



INSERT INTO messages 
    (id, from_username, to_username, body) 
VALUES 
    (1, 'beachChick', 'RockerGirl', ' Hey there, here is my first message.');
INSERT INTO messages 
    (id, from_username, to_username, body) 
VALUES 
    (1, 'squirrelgirl2', 'bronco33', ' Hey there, here is my second message.');
INSERT INTO messages 
    (id, from_username, to_username, body) 
VALUES 
    (1, 'beachChick', 'squirrelgirl2', ' Hey there, here is my third message.');
    