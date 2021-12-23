---
syntax: bash
tags: [ python, deps ]
---
# Regenerate lock
poetry lock --no-update

# New package
poetry new my-package

# Init project
poetry init

# Install project
poetry install
poetry install --no-dev

# Remove old dependencies no longer present in the lock file
poetry install --remove-untracked

# Update package(s)
poetry update
poetry update <package> ...

# Add deps
poetry add <package> <package>@latest
poetry add -D flake8 black isort pytest pytest-cov mypy types-requests
poetry add git+https://github.com/sdispater/pendulum.git#develop
poetry add git+ssh://git@github.com/sdispater/pendulum.git#2.0.5
poetry add ./my-package/ ../my-package-2/
poetry add "<package>[<extra>]"

# Editable mode
```toml
[tool.poetry.dependencies]
my-package = {path = "../my/path", develop = true}
```

# Remove package
poetry remove <package>

# Show packages
poetry show

# Build source and wheels
poetry build

# Publish package
poetry publish

# Run commands
poetry run python -v

# Scripts
```toml
[tool.poetry.scripts]
my-script = "my_module:main"
```
poetry run my-script

# Shell
poetry shell
