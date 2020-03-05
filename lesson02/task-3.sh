#!/bin/bash

# Задание 3.

# Создайте дамп базы данных example из предыдущего задания, 
# разверните содержимое дампа в новую базу данных sample.

mysqldump example > ~/mysql/example-dump.sql
mysql
CREATE DATABASE sample;
exit
mysql sample < ~/mysql/example-dump.sql
