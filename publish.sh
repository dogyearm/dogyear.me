#!/bin/bash

echo "----> Remove draft"
cd public && rm -rf writing/* && cd ..

echo "----> Run Hugo"
hugo

echo "----> Publish files"
cd public
git add -A
git commit -m "Update public files"
git push
cd ..
