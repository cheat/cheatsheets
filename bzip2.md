---
tags: [ compression ]
---
# To compress a file (foo -> foo.bz2):
bzip2 -z foo

# To decompress a file (foo.bz2 -> foo)
bzip2 -d foo.bz2

# To compress foo to stdout:
bzip2 -zc foo > foo.bz2

# To decompress foo.bz2 to stdout:
bzip2 -dc foo.bz2
