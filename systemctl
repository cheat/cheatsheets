# To see running processes:
systemctl

# To check the status of a service:
systemctl status foo.service

# To start/restart/stop a service:
systemctl start/restart/stop foo.service

# To reload a service's configuration:
systemctl reload foo.service

# To edit a service's configuration:
systemctl edit foo.service

# To reload systemd manager configuration:
systemctl daemon-reload

# To enable a service to startup on boot:
systemctl enable foo.service

# To disable a service to startup on boot:
systemctl disable foo.service

# To start/restart/stop per-user service:
systemctl --user start/restart/stop emacs.service

# To see all active units, add --all for everything:
systemctl list-units

# To see all service units:
systemctl list-units -at service

# To see filtered units (all running service):
systemctl list-units -t service --state running

# To see all service files, see which are enabled or disabled:
systemctl list-unit-files -at service

# To list all units with specific status, inactive, active, enabled, running, exited:
systemctl list-units --all --state=inactive

# To use systemctl to list all unit files:
systemctl list-unit-files

# To see log items from the most recent boot:
journalctl -b

# To to see only kernal messages, add -b for at the most recent boot:
journalctl -k

# To get the log entries for a service since boot:
journalctl -b -u foo.service

# To list the dependencies of a service:
# when no service name is specified, lists the dependencies of default.target
# add -all to expand dependencies recursively
systemctl list-dependencies foo.service 

# To see low level details of a service settings on the system:
systemctl show foo.service

# To list currently loaded targets:
systemctl list-units --type=target

# To change current target:
systemctl isolate foo.target

# To change default target:
systemctl enable foo.target
