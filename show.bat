@echo off
setlocal

REM 切换到脚本所在目录
pushd "%~dp0"

REM 检查 hexo 是否可用
where hexo >nul 2>&1
if errorlevel 1 (
  echo 未找到 hexo，可用 npm 全局安装 hexo 或在包含 hexo 的 shell 中运行此脚本。
  popd
  exit /b 1
)

call hexo clean
if errorlevel 1 (
  echo hexo clean 失败
  popd
  exit /b 1
)

call hexo g
if errorlevel 1 (
  echo hexo g 失败
  popd
  exit /b 1
)

call hexo server --drafts
if errorlevel 1 (
  echo hexo server 启动失败
  popd
  exit /b 1
)

popd
endlocal