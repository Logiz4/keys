#!/bin/bash
#coded by logic
if $(command -v tput >/dev/null 2>&1); then
    echo -e "found"
else
    echo -e "tput not found"
fi
mainn(){
        mkdir /data/data/com.termux/files/home/.termux
        key="extra-keys = [['ESC','/','-','HOME','UP','END','PGUP'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT','PGDN']]"
        echo "$key" >> /data/data/com.termux/files/home/.termux/termux.properties
}
clear
GREEN=$(tput setaf 2) #HIJAU
RED=$(tput setaf 1) #MERAH
CYAN=$(tput setaf 6) #CYAN
WHITE=$(tput setaf 7) #PUTIH
NORMAL=$(tput sgr0) #NORMAL
###############################################################################
menu(){
echo -e "
               ${RED}  [TERMUX KEYS]
${NORMAL}--------------------------------------------------
${NORMAL}╭╮╭━┳━━━┳╮╱╱╭╮
${NORMAL}┃┃┃╭┫╭━━┫╰╮╭╯┃
${RED}┃╰╯╯┃╰━━╋╮╰╯╭╯
${NORMAL}┃╭╮┃┃╭━━╯╰╮╭╯
${NORMAL}┃┃┃╰┫╰━━╮╱┃┃
${NORMAL}╰╯╰━┻━━━╯╱╰╯
           ${GREEN}   [Powered By Digital Boys Undergroup]
---------------------------------------------------------                                                                 
"
}
menu
mainn
termux-reload-settings
echo "Done!"
