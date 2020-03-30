CREATE TABLE `MovieInfo` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`Title` TEXT NOT NULL,
	`Year` INT NOT NULL,
	`Rated` TEXT NOT NULL,
	`Released` DATE NOT NULL,
	`Runtime` INT NOT NULL,
	`_Genre` TEXT NOT NULL,
	`_Director` TEXT NOT NULL,
	`_Writer` TEXT NOT NULL,
	`_Actor` TEXT NOT NULL,
	`Plot` TEXT NOT NULL,
	`Language` TEXT NOT NULL,
	`Country` TEXT NOT NULL,
	`_Awards` TEXT NOT NULL,
	`Poster` TEXT NOT NULL,
	`rating` INT NOT NULL,
	`votes` INT NOT NULL,
	`Type` TEXT NOT NULL,
	`BoxOffice` TEXT NOT NULL,
	`Production` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Genre` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`Title` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Director` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Actor` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	`gender` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Writer` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	`genre` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Award` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Reviwer` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` INT NOT NULL,
	`email` VARCHAR(100) NOT NULL UNIQUE,
	`password` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Review` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` TEXT NOT NULL,
	`remark` TEXT NOT NULL,
	`rating` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `MovieInfo_Genre` (
	`movie_info_id` INT NOT NULL,
	`genre_id` INT NOT NULL
);

CREATE TABLE `MovieInfo_Director` (
	`movie_info_id` INT NOT NULL,
	`director_id` INT NOT NULL
);

CREATE TABLE `MovieInfo_Writer` (
	`movie_info_writer` INT NOT NULL,
	`writer_id` INT NOT NULL
);

CREATE TABLE `MovieInfo_Actor` (
	`movie_info_id` INT NOT NULL,
	`actor_id` INT NOT NULL
);

CREATE TABLE `MovieInfo_Award` (
	`movie_info_id` INT NOT NULL,
	`award_id` INT NOT NULL
);

CREATE TABLE `Reviwer_Review_MovieInfo` (
	`movie_info_id` INT NOT NULL,
	`reviwer_id` INT NOT NULL,
	`review_id` INT NOT NULL
);

ALTER TABLE `MovieInfo_Genre` ADD CONSTRAINT `MovieInfo_Genre_fk0` FOREIGN KEY (`movie_info_id`) REFERENCES `MovieInfo`(`id`);

ALTER TABLE `MovieInfo_Genre` ADD CONSTRAINT `MovieInfo_Genre_fk1` FOREIGN KEY (`genre_id`) REFERENCES `Genre`(`id`);

ALTER TABLE `MovieInfo_Director` ADD CONSTRAINT `MovieInfo_Director_fk0` FOREIGN KEY (`movie_info_id`) REFERENCES `MovieInfo`(`id`);

ALTER TABLE `MovieInfo_Director` ADD CONSTRAINT `MovieInfo_Director_fk1` FOREIGN KEY (`director_id`) REFERENCES `Director`(`id`);

ALTER TABLE `MovieInfo_Writer` ADD CONSTRAINT `MovieInfo_Writer_fk0` FOREIGN KEY (`movie_info_writer`) REFERENCES `MovieInfo`(`id`);

ALTER TABLE `MovieInfo_Writer` ADD CONSTRAINT `MovieInfo_Writer_fk1` FOREIGN KEY (`writer_id`) REFERENCES `Writer`(`id`);

ALTER TABLE `MovieInfo_Actor` ADD CONSTRAINT `MovieInfo_Actor_fk0` FOREIGN KEY (`movie_info_id`) REFERENCES `MovieInfo`(`id`);

ALTER TABLE `MovieInfo_Actor` ADD CONSTRAINT `MovieInfo_Actor_fk1` FOREIGN KEY (`actor_id`) REFERENCES `Actor`(`id`);

ALTER TABLE `MovieInfo_Award` ADD CONSTRAINT `MovieInfo_Award_fk0` FOREIGN KEY (`movie_info_id`) REFERENCES `MovieInfo`(`id`);

ALTER TABLE `MovieInfo_Award` ADD CONSTRAINT `MovieInfo_Award_fk1` FOREIGN KEY (`award_id`) REFERENCES `Award`(`id`);

ALTER TABLE `Reviwer_Review_MovieInfo` ADD CONSTRAINT `Reviwer_Review_MovieInfo_fk0` FOREIGN KEY (`movie_info_id`) REFERENCES `MovieInfo`(`id`);

ALTER TABLE `Reviwer_Review_MovieInfo` ADD CONSTRAINT `Reviwer_Review_MovieInfo_fk1` FOREIGN KEY (`reviwer_id`) REFERENCES `Reviwer`(`id`);

ALTER TABLE `Reviwer_Review_MovieInfo` ADD CONSTRAINT `Reviwer_Review_MovieInfo_fk2` FOREIGN KEY (`review_id`) REFERENCES `Review`(`id`);

