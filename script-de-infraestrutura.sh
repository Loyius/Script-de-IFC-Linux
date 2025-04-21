#!/bin/ban

echo "Criando diretórios..."
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupo de usuários..."
groupadd GRP_ADM, GRP_VEN, GRP_SEC

echo "Criando usuários e definindo seus grupos..."
useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd -crypt Padrao123) -G GRP_ADM
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd -crypt Padrao123) -G GRP_ADM
useradd joao -m -c "João" -s /bin/bash -p $(openssl passswd -crypt Padrao123) -G GRP_ADM

useradd debora -m -c "Débora" -s /bin/bash -p $(openssl passwd -crypt Padrao123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd -crypt Padrao123) -G GRP_VEN
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd -crypt Padrao123) -G GRP_VEN

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd -crypt Padrao123) -G GRP_SEC
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd -crypt Padrao123) -G GRP_SEC
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd -crypt Padrao123) -G GRP_SEC

echo "Especificações de permissões de diretórios..."
chown root:GRP_ADM /adm
chown root:GRP-VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
