hugo -D
git checkout autosubmit
git add .
git commit -m "$(date "+%Y-%m-%d %H:%M:%S")"
git push origin autosubmit

