@echo off
setlocal enabledelayedexpansion
for /d %%a in ("%AppData%\Zotero\Zotero\Profiles\*") do (
    set "newfolder=%%a\chrome"
    if not exist "!newfolder!" mkdir "!newfolder!"
    copy "userChrome.css" "!newfolder!"
)
echo All files moved successfully.