Set WshShell = CreateObject("WScript.Shell")
strPath = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName)

' 1. Inicia o Backend Flask na porta 5001 em modo oculto (0)
WshShell.Run "cmd /c ""cd /d """ & strPath & "\servidor"" && .venv\Scripts\python.exe server.py""", 0, False

' 2. Inicia o Frontend HTTP na porta 8080 em modo oculto (0)
WshShell.Run "cmd /c ""cd /d """ & strPath & "\site"" && """ & strPath & "\servidor\.venv\Scripts\python.exe"" -m http.server 8080""", 0, False