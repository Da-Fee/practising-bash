#!/bin/bash

backmeupbeforeyougogo() {
  
  local FILE="${1}"

  if [[ -f "${FILE}" ]]
  then
    local BACKUPFILE="/var/tmp/$(basename ${FILE}).$(date +'%F-%s')"
    echo "Backing up ${FILE} to ${BACKUPFILE}."
    cp -p ${FILE} ${BACKUPFILE}
  else
    echo 'Hey handsome, the file does not exist...'
    return 1
  fi
} 

read -p "What file would you like to backup? " MYINPUT
backmeupbeforeyougogo ${MYINPUT}
