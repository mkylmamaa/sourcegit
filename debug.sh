RUNTIME_IDENTIFIER="osx-arm64"
DESTINATION_FOLDER="bin/osx-arm64/Debug"
set -e
dotnet build -c Debug -r $RUNTIME_IDENTIFIER -o $DESTINATION_FOLDER src/SourceGit.csproj $@
lldb bin/osx-arm64/Debug/SourceGit
