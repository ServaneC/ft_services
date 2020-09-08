#!/usr/bin/env zsh

ftps # lancer le service correctement
rc-service ftps restart
#rc-update add vsftpd
# boucle infinie a refaire
#tail -f /dev/null