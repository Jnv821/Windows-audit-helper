@Echo off
REM: ENG: XESP is an utility tool to audit Windows Surface Pro when its not possible to link to aike.
REM  ENG: XESP opens msedge (Video 4k), device manager, windows update, Windows camera.
REM  XESP é uma ferramenta de audit para as maquinas Windows Surface Pro.
REM  XESP abre as janelas: msedge(Video 4k), gestor de dispositivos, actualizaciones de windows, Camara de windows.

REM ENG: Style of the console, most precisely the title. Edit as needed.
REM Estilo da janela editar a necessidade.
title WDMI - XE ferramenta de audit

REM ENG: Xepath has the value of a temporal hidden folder.
REM Xepath tem o valor de um ficheiro temporal escondido.
set XEPATH=C:\Users\%USERNAME%\Desktop\$temp.txt

REM ENG: Opens up Windows Update
REM Abre o Windows Update.
start /b C:\Windows\System32\control.exe /name Microsoft.WindowsUpdate

REM ENG: Opens up Device manager
REM Abre o gestor de Dispositivos.
start /b devmgmt.msc

REM ENG: Opens up activation of the windows key.
REM Abre a ativação de windows.
start /b slmgr.vbs /ato

REM ENG: Opens Microsoft Windows Camera
REM Abre a app da camara de windows.
start /b Microsoft.Windows.Camera:

REM ENG: Opens up microsoft edge to a video 4k in incognito
REM Abre o microsoft edge a un video 4k em incogino

start /b msedge -inprivate https://www.youtube.com/watch?v=WaMyPKkS3_A
REM If the link fails please replace it with another one.
REM Se o video esta a errado pfv troque o link.

REM ENG: Creates a Window to reboot if the PC is ready.
REM Cria uma janela para fazer reboot se estar pronto.
PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Se tudo esta certo o computador reiniciara.','Confirmar Reboot','OKCancel')" > C:\Users\%USERNAME%\Desktop\$temp.txt


REM ENG: Conditionals to go to the necessary code. Type is the equivalent of cat in Linux.
REM Condicionais para ir ao codigo necessario, type = cat em Linux

if type "%XEPATH%"=="OK" GOTO Reboot
if  type "%XEPATH%"=="Cancel" GOTO NoReboot

REM ENG: Makes a reboot with OOBE to take it to languages screen.
REM Faz um reboot com OOBE ao computador para ligar a linguagem.
:Reboot
    start C:\Windows\System32\Sysprep\sysprep.exe /oobe /reboot
exit

REM ENG: This option is just in case is needed to reboot the PC without doing Sysprep. 
REM Esta opção esta em caso de ter que reiniciar o computador sem fazer o sysprep por as Updates.
:NoReboot

exit
