# Tournament Database
## by Samuel Halim
Tournament Database, the third project of Udacity [Full Stack Web Developer Nanodegree](https://www.udacity.com/course/full-stack-web-developer-nanodegree--nd004)

# About
A program written in python that implements [Swiss-system tournament](https://en.wikipedia.org/wiki/Swiss-system_tournament), a non-elimination tournament system used for competitions.
 It uses PostgreSQL as its relational database.
This project contains the following files:
* `tournament.py` - contains functions for tournament
* `tournament.sql` - contains SQL command for creating database schema for tournament
* `tournament_test.py` - contains test cases of how the tournament.py should work

## Database Schema
This section shows the schema that is used in `tournament.sql` in detail.
```
tournament (the name of this database)
├── Players (table contains information about player)
├──── id(SERIAL) : player's id (PRIMAL KEY)
├──── name(TEXT) : name of the player
├── Matches (table contains information about match)
├──── id(SERIAL) : match's id (PRIMAL KEY)
├──── winner(INTEGER) : winner of the match represented by player's id
└──── loser(INTEGER) : winner of the match represented by player's id
```

## Functions
This section shows all functions exist in `tournament.py` and its use.
* **registerPlayer(name)**

Adds a player to the tournament by putting an entry in the database. The database should assign an ID number to the player. Different players may have the same names but will receive different ID numbers.

* **countPlayers()**

Returns the number of currently registered players. This function should not use the Python len() function; it should have the database count the players.

* **deletePlayers()**

Clear out all the player records from the database.

* **reportMatch(winner, loser)**

Stores the outcome of a single match between two players in the database.

* **deleteMatches()**

Clear out all the match records from the database.

* **playerStandings()**

Returns a list of (id, name, wins, matches) for each player, sorted by the number of wins each player has.

* **swissPairings()**

Given the existing set of registered players and the matches they have played, generates and returns a list of pairings according to the Swiss system. Each pairing is a tuple (id1, name1, id2, name2), giving the ID and name of the paired players. For instance, if there are eight registered players, this function should return four pairings. This function should use playerStandings to find the ranking of players.

# Required Libraries and Dependencies
Python [2.x](https://www.python.org/downloads/) is required to run this project. Python executable should be in your default path after installation.

PostgreSQL [9.x](https://www.postgresql.org/download/) is required to run this project.
 PostgreSQL executable should be in your default path after installation.

# How to run
You can either download the ZIP file or clone this repository to your local.

Open the text-based interface for your operating system (e.g. the terminal window in Linux, the command prompt in Windows) and navigate it to the project directory.

### Setting up database
We need to set up the database using PostgreSQL, we can do this by importing the SQL commands from 'tournament.sql' by running the following command:
```
psql -f tournament.sql
```
Then, the database named 'tournament' will be created with all its tables (Players & Matches).

### Testing the schema
We can test the functionality of `tournament.py` by running the following command:
```
python tournament_test.py
```
It will then print out all test cases and show which test case we pass. We can modify/add/delete the test case by modifying `tournament_test.py` file.
