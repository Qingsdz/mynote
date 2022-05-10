files=$(ls ~/Documents/files/Documents/website/myNote/origin)

for filename in $files
do
    sed -e 's/\\{/\\\\{/g' -e 's/\\}/\\\\}/g' -e 's/\\;/\\\\;/g' ~/Documents/files/Documents/website/myNote/origin/$filename > ~/Documents/files/Documents/website/myNote/content/tech/$filename
done
