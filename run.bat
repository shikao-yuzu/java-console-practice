@echo off

@setlocal

set JDK_PATH=C:\Java\OpenJDK8U-jdk_x64_windows_hotspot_8u242b08\bin
set FNAME_MAIN=Main.java
set FNAME_JAR=out.jar

set PATH=%JDK_PATH%;%PATH%


rem ----------------------------------------------------------------------------
cd bin

rem run *.jar file
java -jar %FNAME_JAR%

pause

@endlocal
