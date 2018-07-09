#!/bin/bash

set -e
set -x

# Ignore imports not at start and line-too-long)
pycodestyle --ignore=E402,E501 /clipster/clipster
pylint3 --errors-only /clipster/clipster

python3 /clipster/tests/tests.py

