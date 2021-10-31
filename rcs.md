# To initially check-in a file (leaving file active in filesystem):
ci -u <filename>

# To check out with lock:
co -l <filename>

# To check in and unlock (leaving file active in filesystem):
ci -u <filename>

# To display version x.y of a file:
co -px.y <filename>

# To undo to version x.y (overwrites file active in filesystem with the specified revision):
co -rx.y <filename>

# To diff file active in filesystem and last revision:
rcsdiff <filename>

# To diff versions x.y and x.z:
rcsdiff -rx.y -rx.z <filename>

# To view log of check-ins:
rlog <filename>

# To break an RCS lock held by another person on a file:
rcs -u <filename>
