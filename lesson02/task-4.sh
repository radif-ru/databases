#!/bin/bash

# (по желанию) Задание 4.

# Ознакомьтесь более подробно с документацией утилиты mysqldump. 
# Создайте дамп единственной таблицы help_keyword базы данных mysql. 
# Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.

mysqldump --opt --where='1 limit 100' mysql help_keyword > mysql-help_keyword-100-lines