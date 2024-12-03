RUNTIME_IDENTIFIER="osx-arm64"
DESTINATION_FOLDER="bin/osx-arm64/Release"
set -e
dotnet build -c Release -r $RUNTIME_IDENTIFIER -o $DESTINATION_FOLDER src/SourceGit.csproj $@
bin/osx-arm64/Release/SourceGit
