#!/bin/sh

set -e # fail fast
set -x # print commands

git clone resource-git-sample updated-git-sample

cd updated-git-sample
echo $(date) > bumpme

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m "Bumped date"
