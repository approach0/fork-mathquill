#!/bin/bash
VERSION=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 12)

git checkout -b build-$VERSION
make
git add -f ./build
git commit -m "approach0 build: $VERSION"
git tag "$VERSION"
git push --tags origin build
git checkout -
