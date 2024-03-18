#!/bin/bash

git init
git add -A
git commit -m "initial commit :commit:"
git branch -M main
git remote add origin https://github.com/{{github_org}}/{{github_org}}.github.io.git
git push -u origin main