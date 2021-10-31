# To save results to <file>:
ncdu -o <file>

# To read from <file>:
ncdu -f <file>

# To save results to a compressed file:
ncdu -o- | gzip > <file>

# To read from a compressed file:
zcat <file> | ncdu -f-
