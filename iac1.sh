#!/bin/bash

echo "Criando diretorios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuarios..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuarios..."

useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM | sudo chage -d 0 carlos
useradd maria  -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM | sudo chage -d 0 maria
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM | sudo chage -d 0 joao

useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN | sudo chage -d 0 debora
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN | sudo chage -d 0 sebastiana
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN | sudo chage -d 0 roberto

useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC | sudo chage -d 0 josefina
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC | sudo chage -d 0 amanda
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC | sudo chage -d 0 rogerio

echo "Especificando permissoes dos diretorios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
