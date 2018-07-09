#!/bin/bash

set -e
set -x

# Ignore imports not at start and line-too-long)
pycodestyle --ignore=E402,E501 /clipster/clipster
pylint --errors-only /clipster/clipster

python /clipster/tests/tests.py
