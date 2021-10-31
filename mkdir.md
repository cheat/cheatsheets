# To create nested directories:
mkdir -p foo/bar/baz

# To create foo/bar and foo/baz directories:
mkdir -p foo/{bar,baz}

# To create the foo/bar, foo/baz, foo/baz/zip and foo/baz/zap directories:
mkdir -p foo/{bar,baz/{zip,zap}}
