#!/bin/bash

usage() {
    echo "$0 <projectname> <targetname>"
    echo "e.g. $0 libtransmogrify transmogrify"
}

if [ $# -ne 2 ]; then
    usage
    exit 1
fi
PROJECTNAME=$1
PROJECTNAME_UPPERCASE=`echo $PROJECTNAME | tr [a-z] [A-Z]`
PROJECTNAME_LOWERCASE=`echo $PROJECTNAME | tr [A-Z] [a-z]`
TARGETNAME=$2
echo "Configuring for project ${PROJECTNAME}"

# rename all files to their proper names
RENAME_FILES=`find . -iname '*__*'`
for f in ${RENAME_FILES} ; do
    NEW_NAME=`echo $f | sed -e "s/__projectname__/$PROJECTNAME_LOWERCASE/g;s/__targetname__/$TARGETNAME/g"`
    echo "Moving $f to $NEW_NAME."
    mv $f $NEW_NAME
done

# replace variables in files
FILES=`egrep -Rl '__[Pp][Rr][oO][jJ]|__targetname__' * | grep -v config_template.sh`
for f in ${FILES} ; do
    echo "Replacing variables in $f."
    sed -i .bak "s/__projectname__/$PROJECTNAME_LOWERCASE/g;s/__PROJECTNAME__/$PROJECTNAME_UPPERCASE;s/__targetname__/$TARGETNAME/g" $f
    rm $f.bak
done

# remove git versioning
echo "Removing git versioning."
rm -rf .git

echo "Done. You can now run 'git init' and start a new dev project."

