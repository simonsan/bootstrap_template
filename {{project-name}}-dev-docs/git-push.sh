#!/bin/bash

git init
git add -A
git commit -m "initial commit :commit:"
git branch -M main
git remote add origin https://github.com/{{github_org}}/{{project-name}}-dev-docs.git
git push -u origin main