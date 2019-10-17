---
tags: [ packaging ]
---
# To search for a package:
pip search <package>

# To install packages:
pip install <package>...

# To install a package in user space:
pip install --user <package>

# To upgrade a package:
pip install --upgrade <package>

# To output and install packages in a requirement file:
pip freeze > requirements.txt
pip install -r requirements.txt

# To show details of a package:
pip show <package>

# To list outdated packages:
pip list --outdated

# To upgrade all outdated packages:
pip freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U

# To upgrade outdated packages on latest version of pip:
pip list --outdated --format=freeze | cut -d = -f 1 | xargs -n1 pip install -U

# To install specific version of a package:
pip install -I SomePackage1==1.1.0 'SomePackage2>=1.0.4'
