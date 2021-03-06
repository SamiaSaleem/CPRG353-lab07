DROP SCHEMA IF EXISTS `lab7db`;

CREATE SCHEMA IF NOT EXISTS `lab7db` DEFAULT CHARACTER SET latin1;

USE `lab7db`;


-- -----------------------------------------------------

-- Table `lab7db`.`role`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `lab7db`.`role` (

`role_id` INT(11) NOT NULL,

`role_name` VARCHAR(25) NOT NULL,

PRIMARY KEY (`role_id`));


-- -----------------------------------------------------

-- Table `lab7db`.`user`

-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `lab7db`.`user` (

`email` VARCHAR(40) NOT NULL,

`active` TINYINT(1) NOT NULL DEFAULT '1',

`first_name` VARCHAR(20) NOT NULL,

`last_name` VARCHAR(20) NOT NULL,

`password` VARCHAR(20) NOT NULL,

`role` INT(11) NOT NULL,

PRIMARY KEY (`email`),

CONSTRAINT `fk_user_role`

FOREIGN KEY (`role`)

REFERENCES `lab7db`.`role` (`role_id`));



INSERT INTO `role` VALUES (1, 'system admin');

INSERT INTO `role` VALUES (2, 'regular user');

INSERT INTO `role` VALUES (3, 'company admin');



INSERT INTO `user` (`email`,`active`,`first_name`,`last_name`,`password`,`role`)

VALUES ('cprg352+admin@gmail.com', true, 'Admin','Admin', 'password', 1);

INSERT INTO `user` (`email`,`active`,`first_name`,`last_name`,`password`,`role`)

VALUES ('cprg352+admin2@gmail.com', true, 'Admin2','Admin2', 'password', 3);

INSERT INTO `user` (`email`,`active`,`first_name`,`last_name`,`password`,`role`)

VALUES ('cprg352+anne@gmail.com', true, 'Anne','Annerson', 'password', 2);

INSERT INTO `user` (`email`,`active`,`first_name`,`last_name`,`password`,`role`)

VALUES ('cprg352+barb@gmail.com', true, 'Barb','BarbSer', 'password', 2);S