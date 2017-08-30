-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.

-- Remove database named tournament if it exists
DROP DATABASE IF EXISTS tournament;

-- Create database named tournament
CREATE DATABASE tournament;

-- Connect to database named 'tournament'
\c tournament;

-- Remove all tables for database 'tournament' if they exist
DROP TABLE IF EXISTS Players CASCADE;
DROP TABLE IF EXISTS Matches CASCADE;

CREATE TABLE Players ( id SERIAL PRIMARY KEY,
                       name TEXT );

CREATE TABLE Matches ( id SERIAL PRIMARY KEY,
                       winner INTEGER REFERENCES Players(id),
                       loser INTEGER REFERENCES Players(id));
