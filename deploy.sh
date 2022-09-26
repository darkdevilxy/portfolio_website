#!/bin/bash
cd portfolio
npm run build

git add --all
echo "Commit text for test code"
read commit_text
git commit --all -m "$commit_text"

cp -R dist/. ../../darkdevilxy.github.io
cd ../../darkdevilxy.github.io
git add --all
echo "Commit text for the production code"
read commit_data
git commit --all -m "$commit_data"
git push
