BEGIN;
DROP TABLE IF EXISTS admin, lead, lead_comment CASCADE;
-- signin and signup this is a users tabel
CREATE TABLE admin (
    id SERIAL PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    signupdate DATE NOT NULL DEFAULT CURRENT_DATE
);

-- this is seacrets table
CREATE TABLE lead (
    id SERIAL PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    phone VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    status VARCHAR(255) NOT NULL,
    story TEXT,
    submit DATE NOT NULL DEFAULT CURRENT_DATE
);

-- this history table
CREATE TABLE lead_comment (
    id SERIAL PRIMARY KEY,
    userid INTEGER REFERENCES lead(id),
    story TEXT,
    submit DATE NOT NULL DEFAULT CURRENT_DATE
);


COMMIT;