-- init.sql
CREATE TABLE users
(
    id       SERIAL PRIMARY KEY,
    name     VARCHAR(100),
    email    VARCHAR(100),
    password VARCHAR(100)
);

INSERT INTO users (name, email, password)
VALUES ('John Doe', 'john.doe@example.com', 'querty'),
       ('Jane Smith', 'jane.smith@example.com', 'abc');