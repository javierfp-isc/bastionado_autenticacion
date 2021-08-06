#!/bin/bash

#Añadir entradas al /etc/hosts
echo "192.168.98.100 kdc kdc.auth.kerb" >> /etc/hosts

#Arranca kerberos kdc
[ -d /var/kerberos ] && service krb5-kdc start

#Uso exec para lanzar un proceso independiente de bucle infinito
exec bash -c "while true;do sleep 10;done"

