@echo off
chcp 65001 >nul
setlocal enabledelayedexpansion

set "found=0"
for /f "tokens=5" %%a in ('netstat -ano ^| findstr ":4000"') do (
  set "PID=%%a"
  set "found=1"
  echo 找到占用4000端口的进程PID: !PID!
  taskkill /PID !PID! /F >nul 2>&1
  if errorlevel 1 (
    echo 无法终止进程 !PID!
  ) else (
    echo 进程 !PID! 已成功终止。
  )
)

if "%found%"=="0" (
  echo 未找到占用4000端口的进程。
)

endlocal