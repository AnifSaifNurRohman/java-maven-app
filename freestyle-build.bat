echo Starting Node.js build...
node app.js
IF %ERRORLEVEL% NEQ 0 (
  echo Node.js script failed!
  exit /b %ERRORLEVEL%
)
echo Node.js build completed successfully.

