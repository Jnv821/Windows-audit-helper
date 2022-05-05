@echo off
REM ENG: XE opens Windows update, Activation and device manager, @echo off doesn't print anything to console for a cleaner look.
REM XE abre as janelas de ativação, Windows Update e Gestor de dispositivos 
REM Não faz print à terminal com @echo off

REM ENG: Xepath has the value of a temporal hidden folder.
REM Xepath tem o valor de um ficheiro temporal escondido.
set XEPATH=C:\Users\%USERNAME%\Desktop\$temp.txt

REM ENG: Style of the console, most precisely the title. Edit as needed.
REM Estilo da janela editar a necessidade.
title WDMI - XE ferramenta de audit

REM ENG: Opens up Windows Update
REM Abre o Windows Update.
start /b C:\Windows\System32\control.exe /name Microsoft.WindowsUpdate

REM ENG: Opens up Device manager
REM Abre o gestor de Dispositivos.
start /b devmgmt.msc

REM ENG: Opens up activation of the windows key.
REM Abre a ativação de windows.
start /b slmgr.vbs /ato

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
