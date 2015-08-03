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

SET SPECTRUM_PATH=%WORKSPACE%\Qt5.4.1-x86-msvc2013_opengl
echo %%SPECTRUM_PATH%%: %SPECTRUM_PATH% >> %LOG_FILEPATH%
echo %%SPECTRUM_PATH%%: %SPECTRUM_PATH%
mkdir -p %SPECTRUM_PATH%

SET QT_DEBUG_DIRECTORY=Qt5.4.1-x86-msvc2013_opengl_debug
echo %%QT_DEBUG_DIRECTORY%%: %QT_DEBUG_DIRECTORY% >> %LOG_FILEPATH%
echo %%QT_DEBUG_DIRECTORY%%: %QT_DEBUG_DIRECTORY%
mkdir -p %QT_DEBUG_DIRECTORY%

SET QT_RELEASE_DIRECTORY=Qt5.4.1-x86-msvc2013_opengl_release
echo %%QT_RELEASE_DIRECTORY%%: %QT_RELEASE_DIRECTORY% >> %LOG_FILEPATH%
echo %%QT_RELEASE_DIRECTORY%%: %QT_RELEASE_DIRECTORY%
mkdir -p %QT_RELEASE_DIRECTORY%

REM ====================================================================

REM exit /b

REM ====================================================================

REM Qt

robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" Qt5Cored.dll Qt5Core.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" Qt5Guid.dll Qt5Gui.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" Qt5Widgetsd.dll Qt5Widgets.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" Qt5Networkd.dll Qt5Network.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" Qt5Qmld.dll Qt5Qml.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" Qt5Quickd.dll Qt5Quick.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" Qt5Xmld.dll Qt5Xml.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" icudt*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" icuin*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%SPECTRUM_PATH%" icuuc*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\plugins\platforms" "%SPECTRUM_PATH%\platforms"
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQml" "%SPECTRUM_PATH%\QtQml
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick" "%SPECTRUM_PATH%\QtQuick
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick.2" "%SPECTRUM_PATH%\QtQuick.2

robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" Qt5Cored.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" Qt5Guid.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" Qt5Widgetsd.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" Qt5Networkd.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" Qt5Qmld.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" Qt5Quickd.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" Qt5Xmld.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" icudt*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" icuin*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_DEBUG_DIRECTORY%" icuuc*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\plugins\platforms" "%QT_DEBUG_DIRECTORY%\platforms"
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQml" "%QT_DEBUG_DIRECTORY%\QtQml
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick" "%QT_DEBUG_DIRECTORY%\QtQuick
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick.2" "%QT_DEBUG_DIRECTORY%\QtQuick.2

robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" Qt5Core.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" Qt5Gui.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" Qt5Widgets.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" Qt5Network.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" Qt5Qml.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" Qt5Quick.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" Qt5Xml.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" icudt*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" icuin*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% "%QT_PATH%\bin" "%QT_RELEASE_DIRECTORY%" icuuc*.dll
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\plugins\platforms" "%QT_RELEASE_DIRECTORY%\platforms"
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQml" "%QT_RELEASE_DIRECTORY%\QtQml
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick" "%QT_RELEASE_DIRECTORY%\QtQuick
robocopy /is /copyall /njs /np /tee /log+:%LOG_FILEPATH% /mir "%QT_PATH%\qml\QtQuick.2" "%QT_RELEASE_DIRECTORY%\QtQuick.2

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
