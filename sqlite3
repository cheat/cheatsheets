---
tags: [ database ]
---
# to create database and launch interactive shell:
sqlite3 <database>

# to create table:
sqlite3 <database> "create table os(id integer primary key, name text, year integer);"

# to insert data:
sqlite3 <database> "insert into 'os' values(1,'linux',1991);"

# to list tables:
sqlite3 <database> ".tables"

# to describe table:
sqlite3 <database> ".schema 'os'"

# to view records in table:
sqlite3 <database> "select * from 'os';"

# to view records in table conditionally:
sqlite3 <database> "select * from 'os' where year='1991';"

# to view records with fuzzy matching:
sqlite3 <database> "select * from 'os' where year like '19%';"
