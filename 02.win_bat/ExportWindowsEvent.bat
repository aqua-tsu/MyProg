@ECHO OFF
:: +--------------------------------------------------
:: | Create/Author  | 2023.03.26 / aqua 
:: | Update/Author  | 20yy.yy.yy / Name
:: | Version        | 1.0
:: | Overview       | Export Windows Events(app,sys,sec)
:: +--------------------------------------------------

:: Environment
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

SET NOWDATE=%date:~0,4%%date:~5,2%%date:~8,2%
SET LOGFOLDER=C:\logs\
SET LOGFILENAME=Process_%NOWDATE%.log
SET LOGPATH=%LOGFOLDER%%LOGFILENAME%

:: CurrentDir
PUSHD %~DP0

:: MainMethod
:Main
  CALL :Init

:: MainWork
  wevtutil epl application %LOGFOLDER%%COMPUTERNAME%_app_%NOWDATE%.evtx
  wevtutil epl system      %LOGFOLDER%%COMPUTERNAME%_sys_%NOWDATE%.evtx
  wevtutil epl Security    %LOGFOLDER%%COMPUTERNAME%_sec_%NOWDATE%.evtx

:: TerminateWork
  GOTO :Terminate

:: Initial
:Init
  IF NOT EXIST "%LOGFOLDER%" (
    MKDIR %LOGFOLDER%
  )

:: SubMethod
:Sub

:: Terminate
:Terminate
  POPD
  ENDLOCAL
  EXIT /b

