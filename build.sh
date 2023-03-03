#!/bin/bash

git clone git@github.com:t1dtools/wrapped.git wrapped
git clone git@github.com:t1dtools/dash-basal.git dash-basal

# Build wrapped
cd wrapped
npm install
npm run build
cd ..

# Build dash-basal
cd dash-basal
npm install
npm run build
cd ..

# Build web
npm install
npm run build

# Copy wrapped to web
mkdir -p ./dist/wrapped
cp -r ./wrapped/out/* ./dist/wrapped/

# Copy dash-basal to web
mkdir -p ./dist/dash-basal
cp -r ./dash-basal/out/* ./dist/dash-basal/