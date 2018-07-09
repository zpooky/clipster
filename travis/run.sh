#!/bin/bash

set -e
set -x

cd /clipster
# Ignore imports not at start and line-too-long)
pycodestyle --ignore=E402,E501 clipster
pylint3 --errors-only clipster

python3 tests/tests.py

