-- Практическое задание по теме “Введение в проектирование БД”
-- 1. Написать крипт, добавляющий в БД vk, которую создали на занятии, 3 новые таблицы 
-- (с перечнем полей, указанием индексов и внешних ключей)

USE vk;

DROP TABLE IF EXISTS friends;
CREATE TABLE friends (
	user_id BIGINT UNSIGNED NOT NULL COMMENT 'Пользователь',
    friend_id BIGINT UNSIGNED NOT NULL COMMENT 'Друг пользователя',
    beginning_of_friendship DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Время начала дружбы',
    created_at DATETIME DEFAULT NOW(),
    PRIMARY KEY (user_id, friend_id),
    INDEX (user_id),
    INDEX (friend_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (friend_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS video_albums;
CREATE TABLE video_albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(255) DEFAULT NULL,
	user_id BIGINT UNSIGNED DEFAULT NULL,
	FOREIGN KEY (user_id) REFERENCES users(id)
);

DROP TABLE IF EXISTS videos;
CREATE TABLE videos (
	id SERIAL PRIMARY KEY,
	album_id BIGINT UNSIGNED NOT NULL,
	media_id BIGINT UNSIGNED NOT NULL,
	FOREIGN KEY (album_id) REFERENCES video_albums(id),
	FOREIGN KEY (media_id) REFERENCES media(id)
);

DROP TABLE IF EXISTS blacklist;
CREATE TABLE blacklist (
	user_id BIGINT UNSIGNED NOT NULL,
	blocked_user_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
	INDEX (user_id),
	PRIMARY KEY (user_id, blocked_user_id),
	FOREIGN KEY (user_id) REFERENCES users(id),
	FOREIGN KEY (blocked_user_id) REFERENCES users(id)
);
