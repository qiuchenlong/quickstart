#!/bin/sh

echo "git拉取最新的仓库代码"

git fetch origin master
git merge origin master

