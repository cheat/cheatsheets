# To get a list of PIDs matching <pattern>:
pgrep <pattern>

# To kill all PIDs matching <pattern>:
pgrep -f <pattern> | xargs kill
