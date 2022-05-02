hugo -D
br = `git branch | grep "*"`
git checkout autosubmit
git add .
git commit -m "$(date "+%Y-%m-%d %H:%M:%S")"
git push origin autosubmit
git checkout $br
