$ErrorActionPreference = "Stop"

# Build the project
npm run build

# Navigate into the build output directory
Set-Location dist

# Initialize git and add files
git init
git add -A

git commit -m 'deploy'

git branch -M main
git remote add origin https://github.com/prashantkumarcse/my-website.git
git push -f origin main:gh-pages

Set-Location ..
