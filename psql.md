---
tags: [ database ]
---
# psql is the PostgreSQL terminal interface. The following commands were tested on version 9.5.
# Connection options:
# -U username (if not specified current OS user is used).
# -p port.
# -h server hostname/address.

# Connect to a specific database:
psql -U <username> -h <host> -d <database>

# Get databases on a server:
psql -U <username> -h <host> --list

# Execute sql query and save output to file:
psql -U <username> -d <database> -c 'select * from tableName;' -o <outfile>

# Execute query and get tabular html output:
psql -U <username> -d <database> -H -c 'select * from tableName;'

# Execute query and save resulting rows to csv file:
# (if column names in the first row are not needed, remove the word 'header')
psql -U <username> -d <database> -c 'copy (select * from tableName) to stdout with csv header;' -o <outfile>

# Read commands from file:
psql -f <outfile>

# Restore databases from file:
psql -f <outfile> <username>
