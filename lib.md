# To display available libraries:
ldconfig -p

# To update library resources:
ldconfig

# To display libraries and file location:
ldd

# To libraries available to apps in real-time:
"Dynamic Libraries" (.so.)

# To libraries only available to apps when installed (imported):
"Static Libraries" (.a.)

# To standard (usual) library file location:
/lib

# To sofware-accessible source for library info :
/etc/ld.so.cache 	# (binary)

# To human-readable source for library info:
/etc/ld.so.conf 	# (points to /etc/ld.so.conf.d)
