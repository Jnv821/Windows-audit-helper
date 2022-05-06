@Echo off
REM: ENG: XESP is an utility tool to audit Windows Surface Pro when its not possible to link to aike.
REM  ENG: XESP opens msedge (Video 4k), device manager, windows update, Windows camera.
REM  XESP é uma ferramenta de audit para as maquinas Windows Surface Pro.
REM  XESP abre as janelas: msedge(Video 4k), gestor de dispositivos, actualizaciones de windows, Camara de windows.

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

REM ENG: Creates a Window to reboot if the PC is ready.
REM Cria uma janela para fazer reboot se estar pronto.
start /b PowerShell -Command "Add-Type -AssemblyName PresentationFramework;[System.Windows.MessageBox]::Show('Se tudo esta certo o computador reiniciara.','Confirmar Reboot','OKCancel')" > C:\Users\%USERNAME%\Desktop\$temp.txt

REM ENG: Opens up microsoft edge to a video 4k in incognito
REM Abre o microsoft edge a un video 4k em incogino

start /b msedge -inprivate https://rr2---sn-8vq54vox2u-apnl.googlevideo.com/videoplayback?expire=1651856086&ei=dv50YqGmBo7aWv7LrqAO&ip=149.90.146.33&id=o-AKslLbMUwQi2uTWDiX9YeY2OrPtpjZJPScV8AR4RQu6h&itag=401&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C271%2C278%2C313%2C394%2C395%2C396%2C397%2C398%2C399%2C400%2C401&source=youtube&requiressl=yes&mh=Tq&mm=31%2C26&mn=sn-8vq54vox2u-apnl%2Csn-h5qzen7l&ms=au%2Conr&mv=m&mvi=2&pl=20&initcwndbps=1692500&spc=4ocVC49LFKuBxUeQ5wA32Z2AemU8NBovfbVvD_7f5w&vprv=1&mime=video%2Fmp4&ns=onvA5bwjjmYRaCBijUY6jHEG&gir=yes&clen=6695740668&dur=3673.069&lmt=1626795643853823&mt=1651834147&fvip=2&keepalive=yes&fexp=24001373%2C24007246&c=WEB&txp=5531432&n=WA5A3KwA5H3j5g&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRAIgQWtuwMDErV3vupX7lbdS5t9owKjsoyQjlRbI39065osCIDfnEb6deo61zS2AE2ScqYUrGpo-W67bN_FiGatXW7ao&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRgIhAPIWYDMzG1a_ebT__yDY_lNPptB4w3T3MP6H9lfOnF2gAiEA2cjrfAgKDQbplDqgZ9-FVh9gJG8WlsCNNOYr8TdVgt4%3D&alr=yes&cpn=yX4EsVnVT0hA2WHd&cver=2.20220502.01.00&rn=29&rbuf=2715&pot=GpIBCmV1xh5eBBhZcIvNQ88I9U-RSXNUZRd5Gr3GiTzI4jLQvp5vkDQpm5BYAOXLgX_C9efNcLoWVt2_bLXar2bzvohmpLEei6f7cQ_G0zAbpaTMQC4QM-sEr9V2iJ0nwERQ_jdXpj4OhhIpATwYQQ4HC39msKk7fsCqx6Ic1KDkggeoZh54CGdok6AGigQKk2xafq4=


REM If the link fails please replace it with one of this:
REM Se o video esta a errado pfv troque o link com um destes:

REM https://rr3---sn-8vq54vox2u-apns.googlevideo.com/videoplayback?expire=1651856256&ei=IP90Ys72Cda2mLAPvLCA2As&ip=149.90.146.33&id=o-AJ6sWAoewjQijJ2r8N5bP5Li6JZXvuOni8WTnfER4sGb&itag=401&aitags=133%2C134%2C135%2C136%2C137%2C160%2C242%2C243%2C244%2C247%2C248%2C271%2C278%2C313%2C394%2C395%2C396%2C397%2C398%2C399%2C400%2C401&source=youtube&requiressl=yes&mh=oa&mm=31%2C26&mn=sn-8vq54vox2u-apns%2Csn-h5q7knel&ms=au%2Conr&mv=m&mvi=3&pl=20&gcr=pt&initcwndbps=1692500&spc=4ocVC5ftaU_2hh_1awr9s6aPRbfcNOwc-8KSJgvLjA&vprv=1&mime=video%2Fmp4&ns=pAZbpJHAMZQXFp0Zflhj9M0G&gir=yes&clen=21749196578&dur=14298.099&lmt=1639871878248356&mt=1651834147&fvip=1&keepalive=yes&fexp=24001373%2C24007246&c=WEB&txp=5531432&n=4Kpe58Jgqed7UA&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cgcr%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRAIgObzNsaXyuDW8gjXGQl4zCCXON6wxbTl-_CnmwP2rqAkCIBUy1XsuR5MpdEuCaTcgr9OTYQgAFNkTzw0fEVgSn5ly&alr=yes&sig=AOq0QJ8wRAIgPEaMtlZTukvb5UgLyD2wOHuM8Ni_hhwO50Cw45V_85oCIHBbvFLPOwnO5APBEj2xBOvbLrQ4jGDgvATduxFEiM_1&cpn=sux93frH0L5HPThP&cver=2.20220502.01.00&rn=73&rbuf=16511&pot=GpIBCmXPoPBDJVON1xBgWufTwZlBf4xGP3BN4ws2nT2XGlsYDntXyTKKz38ziyPhX4s9EDIrW-MbRi1_gVuNerzZAlUhYg77rEj4jlHxVW7tNet9YjltyTWrlkjrZaHiYpk_jhFzenR7SRIpATwYQQ53pYHQ5R-KsEQMZcdqUanNRxi-Vg5amnJrtoaahiCUcKlhCY4=
REM https://rr3---sn-8vq54vox2u-apnl.googlevideo.com/videoplayback?expire=1651856365&ei=jf90Yo2BGrO4mLAPma66mAo&ip=149.90.146.33&id=o-AIlnlGld4V_urMZKqJXQok2kugf8rGtmFnxw1vmEG2Fz&itag=401&aitags=133%2C134%2C135%2C136%2C160%2C242%2C243%2C244%2C247%2C278%2C298%2C299%2C302%2C303%2C308%2C315%2C394%2C395%2C396%2C397%2C398%2C399%2C400%2C401&source=youtube&requiressl=yes&mh=Mk&mm=31%2C26&mn=sn-8vq54vox2u-apnl%2Csn-h5qzen7d&ms=au%2Conr&mv=m&mvi=3&pl=20&initcwndbps=1635000&spc=4ocVCzc6olhhCyWGrSuKRVybJ89bg3D_3vYP8VPfyA&vprv=1&mime=video%2Fmp4&ns=hd1aBwshfbL1CAS5cB85_ZUG&gir=yes&clen=23269112594&dur=13594.930&lmt=1641174970719448&mt=1651834387&fvip=5&keepalive=yes&fexp=24001373%2C24007246&c=WEB&txp=5531432&n=QoCB4YSyeXZBTg&sparams=expire%2Cei%2Cip%2Cid%2Caitags%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Cgir%2Cclen%2Cdur%2Clmt&sig=AOq0QJ8wRQIhALysZ5oQ2rorL7mNwBCPv8Re5Oy7yvmMNbtsBOMv3ia1AiAB5N23eCWr5iSJQq3J_XknThokHh6psLqX11JQTmkW6w%3D%3D&lsparams=mh%2Cmm%2Cmn%2Cms%2Cmv%2Cmvi%2Cpl%2Cinitcwndbps&lsig=AG3C_xAwRQIgR6feEnivGwmy4YyO15lz7iuJlyxwvkjDhVASv3BZ7O4CIQCrDLf7yCHqbJmz98GYdGP3VDHh6ChFZ8YEtoOuUvEQnA%3D%3D&alr=yes&cpn=UFeFmeaXmGhiQZKj&cver=2.20220502.01.00&rn=97&rbuf=7562&pot=GpIBCmXPoPBDJVON1xBgWufTwZlBf4xGP3BN4ws2nT2XGlsYDntXyTKKz38ziyPhX4s9EDIrW-MbRi1_gVuNerzZAlUhYg77rEj4jlHxVW7tNet9YjltyTWrlkjrZaHiYpk_jhFzenR7SRIpATwYQQ53pYHQ5R-KsEQMZcdqUanNRxi-Vg5amnJrtoaahiCUcKlhCY4=

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