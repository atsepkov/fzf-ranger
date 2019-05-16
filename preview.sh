path=$1
file=$2
fullpath=$path$file

if [[ -d $fullpath ]]; then
    CLICOLOR_FORCE=1 ls -ap "$fullpath"
else
    head -n 100 "$fullpath"
fi
