Robert Lowman
CS315: Programming Paradigms
Database Creation File
11/7/2016

CREATE SCHEMA filerater;

CREATE TABLE word (
       word_id SERIAL PRIMARY KEY,
       string VARCHAR(255) NOT NULL);

CREATE TABLE sexual_word (
       word_id INTEGER PRIMARY KEY REFERENCES word,
       stem VARCHAR(255) NOT NULL,
       string VARCHAR(255) NOT NULL);

CREATE TABLE violent_word (
       word_id INTEGER PRIMARY KEY REFERENCES word,
       stem VARCHAR(255) NOT NULL,
       string VARCHAR(255) NOT NULL);

CREATE TABLE adult_content (
       word_id INTEGER PRIMARY KEY REFERENCES word,
       stem VARCHAR(255) NOT NULL,
       string VARCHAR(255) NOT NULL);
