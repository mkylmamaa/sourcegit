RUNTIME_IDENTIFIER="osx-arm64"
DESTINATION_FOLDER="bin"
dotnet build -c Debug -r $RUNTIME_IDENTIFIER -o $DESTINATION_FOLDER src/SourceGit.csproj $@
