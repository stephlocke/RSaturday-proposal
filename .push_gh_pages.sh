#!/bin/bash
mkdir out;

GH_REPO="@github.com/stephlocke/RSaturday-proposal.git"

FULL_REPO="https://$GH_TOKEN$GH_REPO"

git config --global user.name "stephs-travis"
git config --global user.email "steph@travis.ci"


git clone https://github.com/stephlocke/RSaturday-proposal.git out --branch gh-pages

R CMD BATCH 'ghgenerate.R'
cp ghgenerate.Rout out

cd out
git config user.name "stephs-travis"
git config user.email "travis"
git add .
git commit -m "$TRAVIS_COMMIT"
git push --quiet $FULL_REPO
