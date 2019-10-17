---
tags: [ database ]
---
# To dump a database to a file (Note that your password will appear in your command history!):
mysqldump -u<username> -p<password> <database> > db.sql

# To dump a database to a file:
mysqldump -u<username> -p <database> > db.sql

# To dump a database to a .tgz file (Note that your password will appear in your command history!):
mysqldump -u<username> -p<password> <database> | gzip -9 > db.sql

# To dump a database to a .tgz file:
mysqldump -u<username> -p <database> | gzip -9 > db.sql

# To dump all databases to a file (Note that your password will appear in your command history!):
mysqldump -u<username> -p<password> --all-databases > all-databases.sql

# To dump all databases to a file:
mysqldump -u<username> -p --all-databases > all-databases.sql

# To export the database structure only:
mysqldump --no-data -u<username> -p <database> > dump_file

# To export the database data only:
mysqldump --no-create-info -u<username> -p <database> > dump_file
