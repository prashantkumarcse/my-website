#!/bin/bash

# Build the project
npm run build

# Navigate into the build output directory
cd dist

# Initialize git and add files
git init
git add -A

git commit -m 'deploy'

git branch -M main
git remote add origin https://github.com/prashantkumarcse/my-website.git
git push -f origin main:gh-pages

cd -
