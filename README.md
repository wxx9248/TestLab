# TestLab
Spring 2020 - ITI1121 - JUnit auxiliary script for Windows

# Prerequisites
- A Windows machine
- Correctly configured [JDK](https://www.oracle.com/ca-en/java/technologies/javase-downloads.html) environment
- [JUnit4](https://search.maven.org/search?q=g:junit%20AND%20a:junit) and its [dependency](https://search.maven.org/artifact/org.hamcrest/hamcrest-core/1.3/jar)
- Your lab folder
![What your lab folder should look like](https://raw.githubusercontent.com/wxx9248/TestLab/master/assets/example.png)

# How to Use
- Place TestLab.bat under your lab folder
- Double click and done ;)

# FAQ: If Something Goes Wrong...

## JDK environment is not set
### Cases
- `javac`  is not present in current environment.
- `javac` fails to be executed.
### Troubleshoot
- Check your JDK installation.
- Make sure that [environment variables](https://confluence.atlassian.com/doc/setting-the-java_home-variable-in-windows-8895.html) is well configured.

## Something is missing
### Cases
- `TestLab.bat` has not been placed in correct place (under your lab folder).
- That file is indeed missing,
### Troubleshoot
- Check whether `TestLab.bat`  has been under your lab folder.
- Download missing file and place it into your lab folder.

## Test file seems to be missing
### Cases
- `TestLxx.java` is missing, where `xx` represents the lab number.
- Test file is not named as `TestLxx.java`.
### Troubleshoot
- Simply drag the test file onto `TestLab.bat`, and the script will recognise it automatically.
- Rename the the test file as `TestLxx.java`, and then double click `TestLab.bat`.

# Other problems
- You may open an [issue](https://github.com/wxx9248/TestLab/issues) and elaborate the problem that you have encountered, with necessary screenshots and outputs.
- Any questions related to coding are welcomed though :)
