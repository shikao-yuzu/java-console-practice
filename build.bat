@echo off

@setlocal

set JDK_PATH=C:\Java\OpenJDK8U-jdk_x64_windows_hotspot_8u242b08\bin
set FNAME_MAIN=Main.java
set FNAME_JAR=out.jar

set PATH=%JDK_PATH%;%PATH%


rem ----------------------------------------------------------------------------
cd src

del /q ..\bin\%FNAME_JAR%

rmdir /s /q classes
mkdir       classes

rem compile
javac -d classes -encoding UTF-8 -verbose %FNAME_MAIN%

rem build *.jar file
jar cvfm ..\bin\%FNAME_JAR% MATE-INFO/MANIFEST.MF -C classes .

rmdir /s /q classes

pause

@endlocal
