/* ������� 2.

�������� ���� ������ example, ���������� � ��� ������� users, 
��������� �� ���� ��������, ��������� id � ���������� name.*/

CREATE DATABASE IF NOT EXISTS example;
USE example;
CREATE TABLE IF NOT EXISTS users(
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) COMMENT '������� ���',
	UNIQUE unique_name (name(10))
) COMMENT '������� �������������';

SELECT * FROM users;
DESCRIBE users;