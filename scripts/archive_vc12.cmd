@ECHO OFF

SET LOG_FILEPATH=%~dp0.\robocopy.log
IF EXIST %LOG_FILEPATH% del /F %LOG_FILEPATH%
echo %%LOG_FILEPATH%%: %LOG_FILEPATH% >> %LOG_FILEPATH%
echo %%LOG_FILEPATH%%: %LOG_FILEPATH%

SET 7Z_PATH=%PROGRAMFILES%\7-Zip
echo %%7Z_PATH%%: %7Z_PATH% >> %LOG_FILEPATH%
echo %%7Z_PATH%%: %7Z_PATH%

SET GNUWIN32_PATH=%SYSTEMDRIVE%\GnuWin32
echo %%GNUWIN32_PATH%%: %GNUWIN32_PATH% >> %LOG_FILEPATH%
echo %%GNUWIN32_PATH%%: %GNUWIN32_PATH%

SET GNUWIN32_BIN_PATH=%GNUWIN32_PATH%\bin
echo %%GNUWIN32_BIN_PATH%%: %GNUWIN32_BIN_PATH% >> %LOG_FILEPATH%
echo %%GNUWIN32_BIN_PATH%%: %GNUWIN32_BIN_PATH%

echo ------------------------------------------------------------------------ | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%

echo BUILD_NUMBER: %BUILD_NUMBER% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo BUILD_ID: %BUILD_ID% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo BUILD_DISPLAY_NAME: %BUILD_DISPLAY_NAME% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo BUILD_TAG: %BUILD_TAG% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo JOB_NAME: %JOB_NAME% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo EXECUTOR_NUMBER: %EXECUTOR_NUMBER% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo NODE_NAME: %NODE_NAME% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo NODE_LABELS: %NODE_LABELS% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo WORKSPACE: %WORKSPACE% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo JENKINS_HOME: %JENKINS_HOME% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo JENKINS_URL: %JENKINS_URL% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo BUILD_URL: %BUILD_URL% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo JOB_URL: %JOB_URL% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo SVN_REVISION: %SVN_REVISION% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%
echo SVN_URL: %SVN_URL% | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%

echo ------------------------------------------------------------------------ | %GNUWIN32_BIN_PATH%\tee.exe --append %LOG_FILEPATH%

REM ====================================================================

set QT_PATH=C:\Qt\Qt5.4.1-x86-msvc2013_opengl\5.4\msvc2013_opengl
echo %%QT_PATH%%: %QT_PATH% >> %LOG_FILEPATH%
echo %%QT_PATH%%: %QT_PATH%

SET DIRECTORY_NAME=%WORKSPACE%\Qt5.4.1-x86-msvc2013_opengl
echo %%DIRECTORY_NAME%%: %DIRECTORY_NAME% >> %LOG_FILEPATH%
echo %%DIRECTORY_NAME%%: %DIRECTORY_NAME%
mkdir %DIRECTORY_NAME%

SET ARCHIVE_DEBUG_DIRECTORY_NAME=Qt5.4.1-x86-msvc2013_opengl_debug
echo %%ARCHIVE_DEBUG_DIRECTORY_NAME%%: %ARCHIVE_DEBUG_DIRECTORY_NAME% >> %LOG_FILEPATH%
echo %%ARCHIVE_DEBUG_DIRECTORY_NAME%%: %ARCHIVE_DEBUG_DIRECTORY_NAME%
mkdir %ARCHIVE_DEBUG_DIRECTORY_NAME%

SET ARCHIVE_RELEASE_DIRECTORY_NAME=Qt5.4.1-x86-msvc2013_opengl_release
echo %%ARCHIVE_RELEASE_DIRECTORY_NAME%%: %ARCHIVE_RELEASE_DIRECTORY_NAME% >> %LOG_FILEPATH%
echo %%ARCHIVE_RELEASE_DIRECTORY_NAME%%: %ARCHIVE_RELEASE_DIRECTORY_NAME%
mkdir %ARCHIVE_RELEASE_DIRECTORY_NAME%

REM ====================================================================

REM exit /b

REM ====================================================================

REM Qt

robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" Qt5Cored.dll Qt5Core.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" Qt5Guid.dll Qt5Gui.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" Qt5Widgetsd.dll Qt5Widgets.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" Qt5Networkd.dll Qt5Network.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" Qt5Qmld.dll Qt5Qml.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" Qt5Quickd.dll Qt5Quick.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" Qt5Xmld.dll Qt5Xml.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" icudt*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" icuin*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%DIRECTORY_NAME%" icuuc*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\plugins\platforms" "%DIRECTORY_NAME%\platforms"
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQml" "%DIRECTORY_NAME%\QtQml
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick" "%DIRECTORY_NAME%\QtQuick
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick.2" "%DIRECTORY_NAME%\QtQuick.2

robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" Qt5Cored.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" Qt5Guid.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" Qt5Widgetsd.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" Qt5Networkd.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" Qt5Qmld.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" Qt5Quickd.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" Qt5Xmld.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" icudt*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" icuin*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_DEBUG_DIRECTORY_NAME%" icuuc*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\plugins\platforms" "%ARCHIVE_DEBUG_DIRECTORY_NAME%\platforms"
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQml" "%ARCHIVE_DEBUG_DIRECTORY_NAME%\QtQml
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick" "%ARCHIVE_DEBUG_DIRECTORY_NAME%\QtQuick
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick.2" "%ARCHIVE_DEBUG_DIRECTORY_NAME%\QtQuick.2

robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" Qt5Core.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" Qt5Gui.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" Qt5Widgets.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" Qt5Network.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" Qt5Qml.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" Qt5Quick.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" Qt5Xml.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" icudt*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" icuin*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%ARCHIVE_RELEASE_DIRECTORY_NAME%" icuuc*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\plugins\platforms" "%ARCHIVE_RELEASE_DIRECTORY_NAME%\platforms"
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQml" "%ARCHIVE_RELEASE_DIRECTORY_NAME%\QtQml
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick" "%ARCHIVE_RELEASE_DIRECTORY_NAME%\QtQuick
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick.2" "%ARCHIVE_RELEASE_DIRECTORY_NAME%\QtQuick.2

REM ====================================================================

if %ERRORLEVEL% EQU 16 echo ***FATAL ERROR*** & goto end
if %ERRORLEVEL% EQU 15 echo OKCOPY + FAIL + MISMATCHES + XTRA & goto end
if %ERRORLEVEL% EQU 14 echo FAIL + MISMATCHES + XTRA & goto end
if %ERRORLEVEL% EQU 13 echo OKCOPY + FAIL + MISMATCHES & goto end
if %ERRORLEVEL% EQU 12 echo FAIL + MISMATCHES& goto end
if %ERRORLEVEL% EQU 11 echo OKCOPY + FAIL + XTRA & goto end
if %ERRORLEVEL% EQU 10 echo FAIL + XTRA & goto end
if %ERRORLEVEL% EQU 9 echo OKCOPY + FAIL & goto end
if %ERRORLEVEL% EQU 8 echo FAIL & goto end
if %ERRORLEVEL% EQU 7 echo OKCOPY + MISMATCHES + XTRA & goto end
if %ERRORLEVEL% EQU 6 echo MISMATCHES + XTRA & goto end
if %ERRORLEVEL% EQU 5 echo OKCOPY + MISMATCHES & goto end
if %ERRORLEVEL% EQU 4 echo MISMATCHES & goto end
if %ERRORLEVEL% EQU 3 echo OKCOPY + XTRA & goto end
if %ERRORLEVEL% EQU 2 echo XTRA & goto end
if %ERRORLEVEL% EQU 1 echo OKCOPY & goto end
if %ERRORLEVEL% EQU 0 echo No Change & goto end
:end

IF %ERRORLEVEL% LEQ 4 EXIT /B 0

REM ====================================================================

:eof
