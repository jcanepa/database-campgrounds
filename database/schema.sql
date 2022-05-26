create DATABASE nps_campgrounds;
use nps_campgrounds;


drop table if exists national_parks;
create table national_parks (
	`name` VARCHAR(20) PRIMARY KEY UNIQUE NOT NULL,
	`designation` VARCHAR(20),
	`state` VARCHAR(20));

drop table if exists campgrounds;
create table campgrounds (
	`name` VARCHAR(20),
	`national_park_name` VARCHAR(20) REFERENCES national_parks(`name`),
	`location` VARCHAR(20),
	PRIMARY KEY (`national_park_name`, `name`)
)