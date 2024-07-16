@echo off
setlocal enabledelayedexpansion

:: Define o caminho para a pasta de downloads
set downloads_folder=%USERPROFILE%\Downloads

:: Itera sobre cada arquivo nas subpastas da pasta de downloads, excluindo pastas
for /R "%downloads_folder%" %%F in (*) do (
    :: Verifica se é um arquivo (e não uma pasta)
    if not "%%~aF"=="d" (
        :: Move o arquivo de volta para a pasta de downloads sem alterar o nome
        move "%%F" "%downloads_folder%\"
    )
)

:: Itera sobre cada subpasta na pasta de downloads
for /D %%D in ("%downloads_folder%\*") do (
    :: Remove a subpasta se estiver vazia
    rd "%%D" 2>nul
)

:: Remove qualquer subpasta que ainda possa estar vazia em subpastas
for /D /R "%downloads_folder%" %%D in (*) do (
    rd "%%D" 2>nul
)

echo Sua pasta de downloads foi desorganizada com sucesso.
pause
