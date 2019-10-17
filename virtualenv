# To create a new environment:
virtualenv /path/to/project/env_name

# To create a new environment and inherit already installed Python libraries:
virtualenv --system-site-package /path/to/project/env_name

# To create a new environment with a given Python interpreter:
virtualenv /path/to/project/env_name -p /usr/bin/python/3.4

# To activate an environnment:
source /path/to/project/env_name/bin/activate

# To quit an environment:
deactivate

# To Virtualenvwrapper (wrapper for virtualenv) installation:
pip install --user virtualenvwrapper
# configuration
# add in ~/.bashrc or similar
export WORKON_HOME=~/.virtualenvs
mkdir -p $WORKON_HOME
source ~/.local/bin/virtualenvwrapper.sh

# To create a new environmment (with virtualenvwrapper)
mkvirtualenv env_name
# new environmment is stored in ~/.virtualenvs

# To activate environmment (with virtualenvwrapper)
workon env_name

# To quit environmment (with virtualenvwrapper)
deactivate

# To delete environmment (with virtualenvwrapper)
rmvirtualenv env_name
