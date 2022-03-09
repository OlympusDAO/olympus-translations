#!/bin/bash
mkdir frontend
cd frontend
git clone https://github.com/OlympusDAO/olympus-frontend
rm -rf src/locales/translations/*
mv olympus-frontend src/locales/translations/
cd frontend
yarn install --frozen-lockfile
yarn build
pwd
ls -al
