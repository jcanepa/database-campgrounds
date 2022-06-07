-- database
-- create database nps_campgrounds;
use nps_campgrounds;

-- rollback all tables (use reverse creation order to avoid violating foreign key constraints)
drop table if exists payments;
drop table if exists stays;
drop table if exists parties;
drop table if exists hosts;
drop table if exists employees;
drop table if exists campsites;
drop table if exists campground_amenities;
drop table if exists campgrounds;
drop table if exists national_parks;

-- create relational tables
create table national_parks (
	`name` VARCHAR(20) PRIMARY KEY UNIQUE NOT NULL,
	`designation` VARCHAR(20),
	`state` VARCHAR(2));

create table campgrounds (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`national_park` VARCHAR(20) NOT NULL,
	`name` VARCHAR(20),
	`location` VARCHAR(255),
	`check_in_time` VARCHAR(20),
	`check_out_time` VARCHAR(20),
	`open_season` VARCHAR(20),
	`map_image_url` VARCHAR(255),
	FOREIGN KEY (`national_park`) REFERENCES national_parks(`name`));

create table campground_amenities (
	`campground_id` INT NOT NULL,
	`feature` VARCHAR(50),
	FOREIGN KEY (`campground_id`) REFERENCES campgrounds(`id`));

create table campsites (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`campground_id` INT NOT NULL,
	`site_number` INT NOT NULL,
	`type` VARCHAR(50),
	`fee` INT NOT NULL,
	`capacity` INT,
	`vehicle_capacity` INT,
	`is_reservable` BOOLEAN,
	FOREIGN KEY (`campground_id`) REFERENCES campgrounds(`id`));

create table employees (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`first_name` VARCHAR(20),
	`last_name` VARCHAR(20),
	`national_park` VARCHAR(20),
	`job_type` VARCHAR(20),
	FOREIGN KEY (`national_park`) REFERENCES national_parks(`name`));

create table hosts (
	`employee_id` INT NOT NULL,
	`campground_id` INT NOT NULL,
	`campsite_id` INT NOT NULL,
	`services` VARCHAR(20),
	`office_hours` VARCHAR(20),
	FOREIGN KEY (`employee_id`) REFERENCES employees(`id`),
	FOREIGN KEY (`campground_id`) REFERENCES campgrounds(`id`),
	FOREIGN KEY (`campsite_id`) REFERENCES campsites(`id`));

create table parties (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`first_name` VARCHAR(20),
	`last_name` VARCHAR(20) NOT NULL,
	`phone` VARCHAR(20),
	`email` VARCHAR(20) NOT NULL,
	`size` INT,
	`vehicles` INT);

create table stays (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`campsite_id` INT NOT NULL,
	`party_id` INT NOT NULL,
	`start_date` DATE NOT NULL,
	`duration` INT NOT NULL,
	`amount_due` INT NOT NULL,
	FOREIGN KEY (`campsite_id`) REFERENCES campsites(`id`),
	FOREIGN KEY (`party_id`) REFERENCES parties(`id`));

create table payments (
	`stay_id` INT NOT NULL,
	`party_id` INT NOT NULL,
	`date` DATE NOT NULL,
	`amount_paid` INT,
	`is_reservation` BOOLEAN NOT NULL,
	FOREIGN KEY (`stay_id`) REFERENCES stays(`id`),
	FOREIGN KEY (`party_id`) REFERENCES parties(`id`));
