CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

CREATE TABLE IF NOT EXISTS users (
  uuid UUID PRIMARY KEY NOT NULL DEFAULT uuid_generate_v1(),
  email TEXT UNIQUE NOT NULL,
  full_name VARCHAR(50),
	avatar VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS auth (
  uuid UUID REFERENCES users(uuid),
	hash CHAR(60) NOT NULL,
	salt CHAR(29) NOT NULL
);