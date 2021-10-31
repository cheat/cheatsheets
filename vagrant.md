# To initate Vagrant:
vagrant init

# To add a box to a vagrant repo:
vagrant box add hashicorp/precise32

# To start a vm:
vagrant up

# To connect to a running instance:
vagrant ssh

# To shut down a vm:
vagrant halt

# To hibernate a vm:
vagrant suspend

# To set a vm to its initial state by cleaning all data:
vagrant destroy

# To restart a vm with a new provision script:
vagrant reload --provision
