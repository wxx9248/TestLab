:: Test.bat
:: JUnit auxiliary script for Windows
:: Written by wxx9248
:: May 8, 2020 

@ECHO off

SETLOCAL EnableDelayedExpansion

javac -version >NUL 2>NUL
IF NOT %ERRORLEVEL%==0 (
	ECHO JDK environment is not set.
	ECHO Please follow instructions in README.md under your lab folder.
	GOTO Exit
)

IF NOT EXIST junit-4.13.jar (
	ECHO junit-4.13.jar is missing.
	ECHO Please download this file and place it under your lab folder.
	GOTO Exit
)


IF NOT EXIST hamcrest-core-1.3.jar (
	ECHO hamcrest-core-1.3.jar is missing.
	ECHO Please download this file and place it under your lab folder.
	GOTO Exit
)

SET testEntry=%~n1

IF x%testEntry%==x (
	FOR /F %%i IN ('DIR /B ^| FINDSTR /I /R /C:"^TestL[0-9][0-9]\.java$"') DO (
		SET testEntry=%%~ni
	)
	IF x!testEntry!==x (
		ECHO Test file seems to be missing.
		ECHO Please check whether TestLxx.java is present under your lab folder.
		ECHO.
		ECHO Or if the test file is of other naming format,
		ECHO Please DRAG it and DROP it on *me*, a.k.a. %~n0%~x0
		ECHO.
	) ELSE (
		GOTO Compile
	)
) ELSE (
:Compile
	ECHO Deleting old class files...
	DEL /F /S /Q *.class
	ECHO.
	ECHO Compiling...
	javac -cp junit-4.13.jar;hamcrest-core-1.3.jar;. *.java
	ECHO.
	IF !ERRORLEVEL!==0 (
		ECHO Excuting the entry point !testEntry!
		java -cp junit-4.13.jar;hamcrest-core-1.3.jar;. !testEntry!
		ECHO.
	)
)

:Exit
PAUSE

ENDLOCAL
