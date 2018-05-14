DROP DATABASE IF EXISTS sublist;

CREATE DATABASE sublist;

\c sublist

# four tables

CREATE TABLE players(
	id SERIAL PRIMARY KEY,
	username VARCHAR(256),
	password_digest VARCHAR(256),
	name VARCHAR(256),
	location VARCHAR(256),
	availability DATETIME,
	notes VARCHAR(256),
	pos VARCHAR(3),
	email VARCHAR(256),
	phone VARCHAR(15),
	# TEAM ID?
);

CREATE TABLE teams(
	id SERIAL PRIMARY KEY,
	username VARCHAR(256),
	password_digest VARCHAR(256),
	name VARCHAR(256),
	location VARCHAR(256),
	player_id INT REFERENCES players(id),
	game_id INT REFERENCES games(id),
);

CREATE TABLE enrollments(
	id SERIAL PRIMARY KEY,
	player_id INT REFERENCES players(id),
	team_id INT REFERENCES teams(id)
);

CREATE TABLE games(
	id SERIAL PRIMARY KEY,
	gameinfo DATETIME,
	team_id INT REFERENCES teams(id),
);

