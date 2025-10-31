@echo off
cd /d "%~dp0"
for %%I in (.) do set "folder=%%~nxI"
git remote set-url origin git@github.com:RakaMaru/%folder%.git
git config --local core.sshCommand "ssh -i \"C:\\Users\\reyno\\.ssh\\id_ed25519_rakamaru\""
echo.
echo [OK] RakaMaru SSH configured for this repo
echo Remote: git@github.com:RakaMaru/%folder%.git
echo Key: C:\Users\reyno\.ssh\id_ed25519_rakamaru
echo.
pause