#!/bin/bash

set -e
set -x

# Ignore imports not at start and line-too-long)
/usr/bin/pycodestyle --ignore=E402,E501 /clipster/clipster
/usr/bin/pylint --errors-only /clipster/clipster

/usr/bin/python3 /clipster/tests/tests.py

