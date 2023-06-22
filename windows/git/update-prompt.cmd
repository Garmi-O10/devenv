:: Show branch name in command prompt. See https://stackoverflow.com/a/52411694

set GITBRANCH=
for /f "tokens=1" %%I in ('git.exe rev-parse --abbrev-ref HEAD 2^> NUL') do set GITBRANCH=%%I
if "%GITBRANCH%" == "" (
    prompt $P$G
) else (
    git.exe diff --name-only --exit-code > nul
    if errorlevel 1 (
        prompt $P $C$E[1;31m%GITBRANCH%$E[0m$F $G
    ) else (
        prompt $P $C$E[1;32m%GITBRANCH%$E[0m$F $G
    )
)
