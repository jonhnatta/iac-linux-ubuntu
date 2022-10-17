#!/bin/bash

echo "Criando diretórios"
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec
echo "Diretórios criados com sucesso"

echo "Criando grupos"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados com sucesso"

echo "Criando usuários"
useradd carlor -m -c "Carlos Júnior" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_ADM
useradd maria -m -c "Maria Aparecida" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_ADM
useradd joao -m -c "João Ribeiro" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_ADM

useradd debora -m -c "Debora Almeida" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana Santos" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_VEN
useradd roberto -m -c "Roberto Carlos" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_VEN

useradd josefina -m -c "Josefina Pereira" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_SEC
useradd amanda -m -c "Amanda Silva" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_SEC
useradd rogerio -m -c "Rogerio Augusto" -s /bin/bash -p $(openssl passwd -crype 123456) -G GRP_SEC
echo "Usuários criados com sucesso"

echo "Liberando permissões aos diretórios"
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
echo "Permissões criadas com sucesso"
echo "Fim do script"