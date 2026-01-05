@echo off
REM Set console code page to UTF-8 to avoid Chinese mojibake in output
chcp 65001 >nul
setlocal

pushd "%~dp0"

where nodemon >nul 2>&1
if errorlevel 1 (
  echo 未检测到 nodemon，准备通过 npx 调用。
  set RUN_CMD=npx nodemon
) else (
  set RUN_CMD=nodemon
)

%RUN_CMD% --delay 200ms --ext yml,md,markdown,ejs,swig,styl,css,js ^
  --watch _config.yml ^
  --watch _config.fluid.yml ^
  --watch source ^
  --watch themes ^
  --exec "cmd /C hexo clean && hexo generate"

popd
endlocal
