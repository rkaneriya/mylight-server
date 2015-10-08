-- DROP TABLE users;
-- DROP TABLE notifications; 
-- DROP TABLE recommendations; 
-- DROP TABLE friends; 
-- DROP TABLE auth; 

-- CREATE TABLE users (
-- 	uid INTEGER PRIMARY KEY,
-- 	first_name TEXT,
-- 	last_name TEXT,
-- 	username TEXT,
-- 	email TEXT,
-- 	password_hash TEXT,
-- 	ar BOOLEAN,
-- 	bh BOOLEAN,
-- 	ed BOOLEAN,
-- 	eh BOOLEAN,
-- 	en BOOLEAN,
-- 	he BOOLEAN,
-- 	hu BOOLEAN,
-- 	intl BOOLEAN,
-- 	mu BOOLEAN,
-- 	pu BOOLEAN,
-- 	re BOOLEAN,
-- 	un BOOLEAN,
-- 	favorites INTEGER[]
-- );

-- CREATE TABLE auth (
-- 	username TEXT PRIMARY KEY,
-- 	session_id INTEGER
-- ); 

-- CREATE TABLE notifications (
-- 	uid INTEGER, 
-- 	type TEXT,
-- 	info JSONB
-- ); 

-- CREATE TABLE recommendations ( 
-- 	uid INTEGER,
-- 	ein INTEGER,
-- 	type TEXT
-- ); 

-- CREATE TABLE friends (
-- 	uid_1 INTEGER,
-- 	uid_2 INTEGER,
-- 	start_date TIMESTAMP
-- );
