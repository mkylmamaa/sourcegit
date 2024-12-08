@echo off
SET CONFIG=%1
IF "%CONFIG%"=="" (
    SET CONFIG=Release
)
SET RUNTIME_IDENTIFIER=win-x64
SET DESTINATION_FOLDER=bin\win-x64\%CONFIG%
dotnet publish -r %RUNTIME_IDENTIFIER% -o %DESTINATION_FOLDER% src\SourceGit.csproj -c %CONFIG%
