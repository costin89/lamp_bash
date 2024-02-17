#!/bin/bash

# Prüfe, ob das Skript als Root ausgeführt wird
if [ "$(id -u)" != "0" ]; then
   echo "Dieses Skript muss als Root ausgeführt werden." 1>&2
   exit 1
fi

# Setze den Hostnamen auf serverpi
hostnamectl set-hostname serverpi

# Aktualisiere die /etc/hosts Datei
sed -i 's/127\.0\.1\.1.*/127.0.1.1\tserverpi/g' /etc/hosts

echo "Der Hostname wurde erfolgreich zu 'serverpi' geändert."

reboot
