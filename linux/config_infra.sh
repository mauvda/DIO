#!/bin/bash

echo "Criando diretorios e atribuindo permissoes..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
chown root:GRP_ADM /adm/
chmod 770 /adm/
chown root:GRP_VEN /ven/
chmod 770 /ven/
chown root:GRP_SEC /sec/
chmod 770 /sec/
chmod 777 /publico/

echo "Direitorios criados!"

echo "Criando usuarios do sistema..."

useradd -m -s /bin/bash -p $(openssl passwd -crypt Senha123)