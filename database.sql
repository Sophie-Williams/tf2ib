CREATE USER tf2ib WITH PASSWORD 'jw8s0F4';
CREATE TABLE authorizations (nick varchar(255), authorized integer, level integer, time integer, admin varchar(255));
CREATE TABLE messages (id integer NOT NULL, message text);
CREATE SEQUENCE messages_id_seq;
CREATE TABLE servers (dns varchar(255), ip varchar(255), last integer, port varchar(10), botID integer);
CREATE TABLE srcds(data TEXT, time INTEGER);
CREATE TABLE stats (class varchar(255), nick varchar(255), result integer, time integer, botID integer);
GRANT ALL PRIVILEGES ON database tf2ib TO tf2ib;
GRANT ALL PRIVILEGES ON authorizations TO tf2ib;
GRANT ALL PRIVILEGES ON messages TO tf2ib;
GRANT ALL PRIVILEGES ON messages_id_seq TO tf2ib;
GRANT ALL PRIVILEGES ON servers TO tf2ib;
GRANT ALL PRIVILEGES ON srcds TO tf2ib;
GRANT ALL PRIVILEGES ON stats TO tf2ib;
ALTER TABLE messages ALTER COLUMN id SET DEFAULT NEXTVAL('messages_id_seq');
UPDATE messages SET id = NEXTVAL('messages_id_seq');
