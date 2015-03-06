#!/bin/sh
# This isn't complete, but it makes it less painful.
git --git-dir=../cpython/.git format-patch -k -1 --stdout "HASHHERE" | filterdiff -i '*/Lib/**' --strip=2 --addprefix=linecache2/ -v | git am -k
