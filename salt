---
syntax: bash
tags: [ salt, saltstack ]
---
# Show pending keys to be accepted:
salt-key -L

# Accept all pending keys:
salt-key -A

# Accept pending key by name:
salt-key -a <target>

# Remove key by name:
salt-key -D <target>

# Test minion connection:
salt <target> test.ping

# Show active salt jobs
salt-run jobs.active

# Kill active job
salt <target> saltutil.kill_job <job_id>

# Copy small file (< 100kb) from master to minion
salt-cp <target> <source> <dest>

# Copy large file from master (/srv/salt/<source>) directory to minion
salt <target> cp.get_file salt://<source> <destination>

# Copy file from minion to master (will be stored at /var/cache/salt/master/minions/<minion_name>/files
salt <target> cp.push <source>

# Deploy state
salt <target> state.apply <state_name>
