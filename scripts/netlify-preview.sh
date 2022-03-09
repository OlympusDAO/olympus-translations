#!/bin/bash
pwd
ls -al
echo "Checkout front end default(develop) branch"
git clone https://github.com/OlympusDAO/olympus-frontend frontend
echo "Remove translations from frontend develop checkout"
rm -rf frontend/src/locales/translations/*
echo "Move current branch translations into place for build"
mv olympus-frontend frontend/src/locales/translations/
echo "Switch to frontend work dir"
cd frontend
pwd
ls -al
echo "Build OlympusDAP frontent web site"
yarn install --frozen-lockfile
yarn build
pwd
ls -al
