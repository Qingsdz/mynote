path=$1
files=$(ls $path/origin)
for filename in $files
do
    sed 's/\\{/\\\\{/g' $filename > $filename.temp
    sed 's/\\}/\\\\}/g' $filename.temp > ./../content/tech/$filename
done

