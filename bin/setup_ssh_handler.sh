#!/bin/sh

DE=~/.local/share/applications/SecureCRT.desktop
#DE=-

echo [Desktop Entry] > $DE
echo Type=Application >> $DE
echo Name=SSH Terminal >> $DE
echo Exec=~/projects/toolset/bin/launch_SecureCRT \%u >> $DE
echo Icon=utilities-terminal >> $DE
echo StartupNotify=false >> $DE
echo MimeType=x-scheme-handler/ssh; >> $DE


xdg-mime default SecureCRT.desktop x-scheme-handler/ssh

xdg-mime query default x-scheme-handler/ssh
