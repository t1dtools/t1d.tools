#!/bin/bash

git pull --recurse-submodules --ff-only

# Build wrapped
cd wrapped
npm run build

# Build web
cd ..
npm run build

# Copy wrapped to web
mkdir -p ./dist/wrapped
cp -r ./wrapped/out/* ./dist/wrapped/