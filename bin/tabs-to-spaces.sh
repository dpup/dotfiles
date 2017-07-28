#!/bin/bash
git grep --name-only '   ' | xargs perl -pi -w -e 's/\t/  /g'

