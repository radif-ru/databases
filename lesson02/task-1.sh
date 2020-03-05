#!/bin/bash

# Задание 1.

# Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, 
# задав в нем логин и пароль, который указывался при установке.

apt install mysql-server

txt="[client]
\nuser=root
\npassword=root_password"

echo -e $txt > ~/.my.cnf

chmod u=-,g=rw,o=- ~/.my.cnf
chown root:1000 ~/.my.cnf

ll ~ | grep .my.cnf
