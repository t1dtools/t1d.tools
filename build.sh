#!/bin/bash

git clone git@github.com:t1dtools/wrapped.git wrapped
git clone git@github.com:t1dtools/basal-calc.git basal-calc

# Build wrapped
cd wrapped
npm install
npm run build
cd ..

# Build basal-calc
cd basal-calc
npm install
npm run build
cd ..

# Build web
npm install
npm run build

# Copy wrapped to web
mkdir -p ./dist/wrapped
cp -r ./wrapped/out/* ./dist/wrapped/

# Copy basal-calc to web
mkdir -p ./dist/basal-calc
cp -r ./basal-calc/out/* ./dist/basal-calc/