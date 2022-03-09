#!/bin/bash
# enable explicit bash output
set -x
pwd
ls -al
echo "Checkout front end default(develop) branch"
git clone https://github.com/OlympusDAO/olympus-frontend frontend
echo "Remove translations from frontend develop checkout"
rm -rf frontend/src/locales/translations/*
echo "Move current branch translations into place for build"
ls -al olympus-frontend
cp -rf olympus-frontend frontend/src/locales/translations/
ls -al frontend/src/locales/translations/
ls -al frontend/src/locales/translations/olympus-frontend
# prevent submodule pull
touch frontend/src/locales/translations/.git
ls -al frontend/src/locales/translations/
echo "Switch to frontend work dir"
cd frontend
pwd
ls -al
echo "Prevent build from failing on warnings"
export CI=false
echo "Build OlympusDAP frontent web site"
yarn install --frozen-lockfile
yarn build
pwd
ls -al
