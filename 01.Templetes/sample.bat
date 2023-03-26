@ECHO OFF
:: +--------------------------------------------------
:: | Create/Author  | 20xx.xx.xx / Name 
:: | Update/Author  | 20yy.yy.yy / Name
:: | Version        | 1.0
:: | Overview       |
:: +--------------------------------------------------

:: Environment
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION

SET NOWDATE=%date:~0,4%%date:~5,2%%date:~8,2%
SET LOGFLODER=C:\logs\
SET LOGFILENAME=Process_%NOWDATE%.log

:: CurrentDir
PUSHD %~DP0

:: MainMethod
:Main

  GOTO :Terminate

:: SubMethod
:Sub


:: Terminate
:Terminate
  POPD
  ENDLOCAL
  EXIT /b