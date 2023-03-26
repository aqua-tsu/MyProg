@ECHO OFF
:: +--------------------------------------------------
:: | Create/Author  | 2023.03.26 / Yusuke 
:: | Update/Author  | 20yy.yy.yy / Name
:: | Version        | 1.0
:: | Overview       | 
:: +--------------------------------------------------

:: Environment
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

SET NOWDATE=%date:~0,4%%date:~5,2%%date:~8,2%
SET LOGFOLDER=C:\logs\
SET LOGFILENAME=Process_%NOWDATE%.log

:: CurrentDir
PUSHD %~DP0

:: MainMethod
:Main
  CALL :Init

:: MainWork


:: TerminateWork
  GOTO :Terminate


:: Initial
:Init
  IF EXIST "%LOGFOLDER%" (
  ) ELSE (
    MKDIR %LOGFOLDER%
  )
  EXIT /b

:: SubMethod
:Sub

:: Terminate
:Terminate
  POPD
  ENDLOCAL
  pause
  EXIT /b
