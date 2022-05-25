create DATABASE nps_campgrounds;
use nps_campgrounds;


create table national_parks (
	`name` VARCHAR(20) PRIMARY KEY UNIQUE NOT NULL,
	`state` VARCHAR(20)
);