path=$1
file=$2
fullpath=$path/$file

if [ -z $file ]; then
    exit 0;
fi

if [[ -d $fullpath ]]; then
    bash fzf-ranger $fullpath
else
    open "$fullpath"
fi
