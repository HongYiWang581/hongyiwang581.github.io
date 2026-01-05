@echo off
:: 切换到 Hexo 项目根目录
cd /d "%USERPROFILE%\blog"
:: 清理上次文件
call hexo clean
echo "%USERPROFILE%\blog"

call hexo generate

:: 预处理
@REM forfiles /P "%USERPROFILE%\blog\public" /S /M * /C "cmd /c if @fsize GTR 52428800 del @path"

:: 恢复 .git 文件夹, 上传 GitHub Pages https://.github.io
cd /d "%USERPROFILE%\blog\public"

git init
git remote add origin git@github.com:HongYiWang581/hongyiwang581.github.io.git
git add .
git commit -m "Initial deploy"
git push -f origin master