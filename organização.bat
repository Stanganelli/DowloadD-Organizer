@echo off
setlocal enabledelayedexpansion

:: Define o caminho para a pasta de downloads e o arquivo de log
set downloads_folder=%USERPROFILE%\Downloads
set log_file=%downloads_folder%\organizacao_log.txt

:: Inicializa o arquivo de log
echo Relatório de Organização de Downloads > %log_file%
echo Data: %date% Hora: %time% >> %log_file%
echo. >> %log_file%

:: Inicializa contadores
set /a count_total=0
set /a count_code=0
set /a count_zips=0
set /a count_apresentacoes=0
set /a count_planilhas=0
set /a count_calendarios=0
set /a count_emails=0
set /a count_documentos=0
set /a count_pdfs=0
set /a count_reunioes=0
set /a count_videos=0
set /a count_fotos=0
set /a count_bancos_de_dados=0
set /a count_midia_design=0
set /a count_aleatorio=0

:: Itera sobre cada arquivo na pasta de downloads, excluindo subpastas
for %%F in ("%downloads_folder%\*.*") do (
    :: Verifica se é um arquivo (e não uma pasta)
    if not "%%~aF"=="d" (
        :: Obtém a data de modificação e a extensão do arquivo
        set file_date=%%~tF
        set file_extension=%%~xF

        :: Formata a data em 'Ano-Mês'
        set folder_name=!file_date:~6,4!-!file_date:~3,2!

        :: Define o nome da subpasta com base na extensão do arquivo
        if /I "!file_extension!"==".py" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".java" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".c" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".cpp" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".js" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".rb" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".go" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".rs" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".ts" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".php" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".html" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".css" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".kt" (
            set subfolder_name=code
            set /a count_code+=1
        ) else if /I "!file_extension!"==".zip" (
            set subfolder_name=zips
            set /a count_zips+=1
        ) else if /I "!file_extension!"==".rar" (
            set subfolder_name=zips
            set /a count_zips+=1
        ) else if /I "!file_extension!"==".7z" (
            set subfolder_name=zips
            set /a count_zips+=1
        ) else if /I "!file_extension!"==".tar.gz" (
            set subfolder_name=zips
            set /a count_zips+=1
        ) else if /I "!file_extension!"==".iso" (
            set subfolder_name=zips
            set /a count_zips+=1
        ) else if /I "!file_extension!"==".cab" (
            set subfolder_name=zips
            set /a count_zips+=1
        ) else if /I "!file_extension!"==".gz" (
            set subfolder_name=zips
            set /a count_zips+=1
        ) else if /I "!file_extension!"==".ppt" (
            set subfolder_name=apresentacoes
            set /a count_apresentacoes+=1
        ) else if /I "!file_extension!"==".pptx" (
            set subfolder_name=apresentacoes
            set /a count_apresentacoes+=1
        ) else if /I "!file_extension!"==".odp" (
            set subfolder_name=apresentacoes
            set /a count_apresentacoes+=1
        ) else if /I "!file_extension!"==".xls" (
            set subfolder_name=planilhas
            set /a count_planilhas+=1
        ) else if /I "!file_extension!"==".xlsx" (
            set subfolder_name=planilhas
            set /a count_planilhas+=1
        ) else if /I "!file_extension!"==".ods" (
            set subfolder_name=planilhas
            set /a count_planilhas+=1
        ) else if /I "!file_extension!"==".csv" (
            set subfolder_name=planilhas
            set /a count_planilhas+=1
        ) else if /I "!file_extension!"==".tsv" (
            set subfolder_name=planilhas
            set /a count_planilhas+=1
        ) else if /I "!file_extension!"==".ics" (
            set subfolder_name=calendarios
            set /a count_calendarios+=1
        ) else if /I "!file_extension!"==".msg" (
            set subfolder_name=emails
            set /a count_emails+=1
        ) else if /I "!file_extension!"==".eml" (
            set subfolder_name=emails
            set /a count_emails+=1
        ) else if /I "!file_extension!"==".txt" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".doc" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".docx" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".odt" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".rtf" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".wps" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".wpd" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".md" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".tex" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        ) else if /I "!file_extension!"==".docm" (
            set subfolder_name=documentos
            set /a count_documentos+=1
        )  else if /I "!file_extension!"==".pdf" (
            set subfolder_name=pdfs
            set /a count_pdfs+=1
        ) else if /I "!file_extension!"==".mp3" (
            set subfolder_name=reunioes
            set /a count_reunioes+=1
        ) else if /I "!file_extension!"==".wav" (
            set subfolder_name=reunioes
            set /a count_reunioes+=1
        ) else if /I "!file_extension!"==".aac" (
            set subfolder_name=reunioes
            set /a count_reunioes+=1
        ) else if /I "!file_extension!"==".flac" (
            set subfolder_name=reunioes
            set /a count_reunioes+=1
        ) else if /I "!file_extension!"==".ogg" (
            set subfolder_name=reunioes
            set /a count_reunioes+=1
        ) else if /I "!file_extension!"==".wma" (
            set subfolder_name=reunioes
            set /a count_reunioes+=1
        ) else if /I "!file_extension!"==".m4a" (
            set subfolder_name=reunioes
            set /a count_reunioes+=1
        ) else if /I "!file_extension!"==".mp4" (
            set subfolder_name=videos
            set /a count_videos+=1
        ) else if /I "!file_extension!"==".avi" (
            set subfolder_name=videos
            set /a count_videos+=1
        ) else if /I "!file_extension!"==".mkv" (
            set subfolder_name=videos
            set /a count_videos+=1
        ) else if /I "!file_extension!"==".mov" (
            set subfolder_name=videos
            set /a count_videos+=1
        ) else if /I "!file_extension!"==".wmv" (
            set subfolder_name=videos
            set /a count_videos+=1
        ) else if /I "!file_extension!"==".flv" (
            set subfolder_name=videos
            set /a count_videos+=1
        ) else if /I "!file_extension!"==".mpeg" (
            set subfolder_name=videos
            set /a count_videos+=1
        ) else if /I "!file_extension!"==".mpg" (
            set subfolder_name=videos
            set /a count_videos+=1
        ) else if /I "!file_extension!"==".png" (
            set subfolder_name=fotos
            set /a count_fotos+=1
        ) else if /I "!file_extension!"==".jpg" (
            set subfolder_name=fotos
            set /a count_fotos+=1
        ) else if /I "!file_extension!"==".jpeg" (
            set subfolder_name=fotos
            set /a count_fotos+=1
        ) else if /I "!file_extension!"==".gif" (
            set subfolder_name=fotos
            set /a count_fotos+=1
        ) else if /I "!file_extension!"==".bmp" (
            set subfolder_name=fotos
            set /a count_fotos+=1
        ) else if /I "!file_extension!"==".tiff" (
            set subfolder_name=fotos
            set /a count_fotos+=1
        ) else if /I "!file_extension!"==".ico" (
            set subfolder_name=fotos
            set /a count_fotos+=1
        ) else if /I "!file_extension!"==".svg" (
            set subfolder_name=fotos
            set /a count_fotos+=1
        ) else if /I "!file_extension!"==".sql" (
            set subfolder_name=bancos_de_dados
            set /a count_bancos_de_dados+=1
        ) else if /I "!file_extension!"==".mdb" (
            set subfolder_name=bancos_de_dados
            set /a count_bancos_de_dados+=1
        ) else if /I "!file_extension!"==".accdb" (
            set subfolder_name=bancos_de_dados
            set /a count_bancos_de_dados+=1
        ) else if /I "!file_extension!"==".db" (
            set subfolder_name=bancos_de_dados
            set /a count_bancos_de_dados+=1
        ) else if /I "!file_extension!"==".psd" (
            set subfolder_name=midia_design
            set /a count_midia_design+=1
        ) else if /I "!file_extension!"==".ai" (
            set subfolder_name=midia_design
            set /a count_midia_design+=1
        ) else if /I "!file_extension!"==".eps" (
            set subfolder_name=midia_design
            set /a count_midia_design+=1
        ) else if /I "!file_extension!"==".indd" (
            set subfolder_name=midia_design
            set /a count_midia_design+=1
        ) else if /I "!file_extension!"==".3ds" (
            set subfolder_name=midia_design
            set /a count_midia_design+=1
        ) else if /I "!file_extension!"==".obj" (
            set subfolder_name=midia_design
            set /a count_midia_design+=1
        ) else (
            set subfolder_name=aleatorio
            set /a count_aleatorio+=1
        )

        :: Cria a nova pasta se ela não existir
        if not exist "%downloads_folder%\!folder_name!\!subfolder_name!" (
            mkdir "%downloads_folder%\!folder_name!\!subfolder_name!"
        )

        :: Move o arquivo para a nova pasta mantendo o nome original
        move "%%F" "%downloads_folder%\!folder_name!\!subfolder_name!\"
        set /a count_total+=1
    )
)

:: Adiciona contadores ao log
echo Total de arquivos movidos: %count_total% >> %log_file%
echo. >> %log_file%
echo Code: %count_code% >> %log_file%
echo Zips: %count_zips% >> %log_file%
echo Apresentacoes: %count_apresentacoes% >> %log_file%
echo Planilhas: %count_planilhas% >> %log_file%
echo Calendarios: %count_calendarios% >> %log_file%
echo Emails: %count_emails% >> %log_file%
echo Documentos: %count_documentos% >> %log_file%
echo PDFs: %count_pdfs% >> %log_file%
echo Reunioes: %count_reunioes% >> %log_file%
echo Videos: %count_videos% >> %log_file%
echo Fotos: %count_fotos% >> %log_file%
echo Bancos de Dados: %count_bancos_de_dados% >> %log_file%
echo Midia Design: %count_midia_design% >> %log_file%
echo Aleatorio: %count_aleatorio% >> %log_file%

echo Sua pasta de downloads foi organizada com sucesso.
echo Um relatório foi gerado em %log_file%.
pause
