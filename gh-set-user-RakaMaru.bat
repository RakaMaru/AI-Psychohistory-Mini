@echo off
REM ==================================================
REM  GitHub CLI account selector for this repository
REM  Hard-coded for RakaMaru
REM ==================================================

set "GH_USER=RakaMaru"
echo [INFO] Switching GitHub CLI to account: %GH_USER%

REM Switch to the correct GH account (force active)
gh auth switch -h github.com -u "%GH_USER%" >nul 2>nul

if errorlevel 1 (
    echo [WARN] Failed to switch GitHub CLI account. Make sure %GH_USER% is logged in.
    echo [HINT] Run: gh auth login --hostname github.com --web --git-protocol ssh
) else (
    echo [OK] GitHub CLI account switched successfully.
)

echo.
echo [INFO] Current GitHub authentication status:
echo --------------------------------------------------
gh auth status
echo --------------------------------------------------
echo.
pause
