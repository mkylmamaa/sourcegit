DESTINATION_FOLDER=$1
if [ -z "$DESTINATION_FOLDER" ]; then
    DESTINATION_FOLDER="bin/osx-arm64/Release"
fi

ZIP_NAME=$2
if [ -z "$ZIP_NAME" ]; then
    ZIP_NAME="SuperSourceGit_Mac_ARM64.zip"
fi

echo "$0 $DESTINATION_FOLDER $ZIP_NAME"

mkdir -p dist/SuperSourceGit
pushd dist > /dev/null
cp -r ../$DESTINATION_FOLDER/* SuperSourceGit
zip -r -q $ZIP_NAME SuperSourceGit
rm -rf SuperSourceGit
popd > /dev/null
