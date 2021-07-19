#!/bin/bash

#Arranca slapd
[ -f /usr/sbin/slapd ] && /usr/sbin/slapd

#Arranca webmin
[ -f /etc/init.d/webmin ] && /etc/init.d/webmin start

#Arranque cliente ldap
[ -f /etc/libnss-ldap.conf ] && service nscd start 

#Uso exec para lanzar un proceso independiente de bucle infinito
exec bash -c "while true;do sleep 10;done"

