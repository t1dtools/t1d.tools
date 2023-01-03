#!/bin/bash

git clone git@github.com:t1dtools/wrapped.git wrapped

# Build wrapped
cd wrapped
npm install
npm run build

# Build web
cd ..
npm install
npm run build

# Copy wrapped to web
mkdir -p ./dist/wrapped
cp -r ./wrapped/out/* ./dist/wrapped/