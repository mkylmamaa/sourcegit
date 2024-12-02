RUNTIME_IDENTIFIER="osx-arm64"
DESTINATION_FOLDER="bin"
set -e
dotnet build -c Debug -r $RUNTIME_IDENTIFIER -o $DESTINATION_FOLDER src/SourceGit.csproj $@
lldb bin/SourceGit
