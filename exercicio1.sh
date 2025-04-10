#!/bin/bash
echo "Passo 1: Criando os diretorios /publico /adm /ven /sec"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Passo 2: Criando os grupos GRP_ADM GRP_VEN GRP_SEC"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Passo 3: Criando os usuarios e adicionando nos grupos correspondentes"

#useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt aula) -G GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_VEN
useradd sebatiana -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -1 aula) -G GRP_SEC

echo "Passo 4: Alterando grupos dos diretorios"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

echo "Passo 5: Permissao nos diretorios"

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
