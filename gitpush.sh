#!/bin/bash 

status=$(git -c color.ui=always status -s)
branch=$(git rev-parse --abbrev-ref HEAD)
remote=$(git remote)

echo "* STAGING FILES"
git add -A

echo "--------"
echo $status
echo "--------"

echo "* COMMIT WITH MSG: " $1
echo "--------"
git commit -m "$(echo -e $1)"
echo "--------"


echo "* PUSH TO BRANCH: " $branch
echo "--------"
git push $remote $branch
echo "--------"
