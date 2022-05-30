-- database
create DATABASE nps_campgrounds;
use nps_campgrounds;

-- relational tables
drop table if exists national_parks;
create table national_parks (
	`name` VARCHAR(20) PRIMARY KEY UNIQUE NOT NULL,
	`designation` VARCHAR(20),
	`state` VARCHAR(20));

drop table if exists employees;
create table employees (
	`id` INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	`first_name` VARCHAR(20),
	`last_name` VARCHAR(20),
	`national_park` VARCHAR(20) REFERENCES national_parks(`name`),
	`job_type` VARCHAR(20)
)

drop table if exists hosts;
create table host (
	`employee_id` INT NOT NULL,
	`campsite` INT NOT NULL,
	`services` VARCHAR(20),
	`office_hours` VARCHAR(20),
	FOREIGN KEY (`employee_id`) REFERENCES employees(`id`),
	FOREIGN KEY (`campsite`) REFERENCES campsites(`id`)
);

drop table if exists campgrounds;
create table campgrounds (
	`name` VARCHAR(20),
	`national_park_name` VARCHAR(20) REFERENCES national_parks(`name`),
	`location` VARCHAR(20),
	FOREIGN KEY (`national_park_name`, `name`)
)
