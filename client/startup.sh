#!/bin/bash

echo "Running GITROB against: " $target
gitrob analyze --no-banner --no-server --title=$target $target