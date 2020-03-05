/* Задание 2.

Создайте базу данных example, разместите в ней таблицу users, 
состоящую из двух столбцов, числового id и строкового name.*/

CREATE DATABASE IF NOT EXISTS example;
USE example;
CREATE TABLE IF NOT EXISTS users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT 'Столбец имён',
	UNIQUE unique_name (name(10))
) COMMENT 'Таблица пользователей';

SELECT * FROM users;
DESCRIBE users;
