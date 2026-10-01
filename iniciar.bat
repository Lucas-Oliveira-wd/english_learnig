@echo off
title Sistema de Ingles

:: Inicia o Backend Flask (Porta 5001) em uma nova janela
start "Backend Flask" cmd /k "cd /d "%~dp0servidor" && call .venv\Scripts\activate.bat && python server.py"

:: Inicia o Frontend HTTP (Porta 8080) em uma nova janela
start "Frontend HTTP" cmd /k "cd /d "%~dp0site" && python -m http.server 8080"