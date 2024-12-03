CONFIG=$1
if [ -z "$CONFIG" ]; then
    CONFIG="Release"
fi
RUNTIME_IDENTIFIER="osx-arm64"
DESTINATION_FOLDER="bin/osx-arm64/$CONFIG"
dotnet build -r $RUNTIME_IDENTIFIER -o $DESTINATION_FOLDER src/SourceGit.csproj -c $CONFIG
