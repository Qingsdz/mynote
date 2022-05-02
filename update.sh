#!/bin/zsh
hugo -D

function obtain_git_branch {
  br=`git branch | grep "*"`
  echo ${br/* /}
}
result=`obtain_git_branch`

git checkout autosubmit
git add .
git commit -m "$(date "+%Y-%m-%d %H:%M:%S")"
git push origin autosubmit
git checkout $result
