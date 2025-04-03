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

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "Carlos"
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "Maria"
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM -c "João"
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN -c "Debora"
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN -c "Sebastiana"
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN -c "Roberto"
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Josefina"
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Amanda"
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC -c "Rogerio"

echo "Usuarios prontos!"