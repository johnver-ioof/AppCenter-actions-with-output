# App Center Github Action

This action run any App Center CLI command and return output

## Inputs

### `command`

**Required** The full command you want to use:
https://github.com/microsoft/appcenter-cli

### `token`

**Required** App Center token - you can get one from appcenter.ms/settings


```
name: Build, code quality, tests 

on: [push]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v1
    - name: set up JDK 1.8
      uses: actions/setup-java@v1
      with:
        java-version: 1.8
    - name: build release 
      run: ./gradlew assembleRelease
    - name: run any App Center CLI command
      uses: johnver-ioof/AppCenter-actions-with-output@v1.0.1
      with:
        command: appcenter build queue --app owner/repo_name --branch master --output json
        token: ${{secrets.APP_CENTER_TOKEN}}
```
