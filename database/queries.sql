-- Seed parks
insert into national_parks values ('Joshua Tree', 'Park', 'CA');
insert into national_parks values ('Point Reyes', 'Seashore', 'CA');
insert into national_parks values ('Yosemite', 'Park', 'CA');
insert into national_parks values ('Yellowstone', 'Park', 'MT');
insert into national_parks values ('Denali', 'Park & Preserve', 'AK');

-- Seed some campgrounds
insert into campgrounds (national_park, name, location, check_in_time, check_out_time, open_season, map_image_url) values ('Joshua Tree', 'Black Rock', 'NW corner of the park', '2PM', '11AM', 'Spring, Summer, Fall', 'https://www.nps.gov/jotr/planyourvisit/images/Black-Rock-Campground-web-Schwalbe_1.jpg');
insert into campgrounds (national_park, name, location, check_in_time, check_out_time, open_season, map_image_url) values ('Point Reyes', 'Coast Campground', '1.8-mile hike on Laguna and Fire Lane Trails', '2PM', '11AM', 'Spring', 'https://www.nps.gov/pore/planyourvisit/images/pic_campground_coast_06_180813_480x320.jpg');
insert into campgrounds (national_park, name, location, check_in_time, check_out_time, open_season, map_image_url) values ('Yosemite', 'Camp 4', 'At the base of the granite cliffs of Yosemite Falls', '2PM', '11AM', 'Spring, Summer', 'https://www.nps.gov/yose/planyourvisit/images/camp-4-kiosk.jpg');
insert into campgrounds (national_park, name, location, check_in_time, check_out_time, open_season, map_image_url) values ('Yellowstone', 'Mammoth', 'Five miles south of the North Entrance of the park', '2PM', '11AM', 'Year-round', 'https://www.nps.gov/yell/planyourvisit/images/ndh-yell-3964.jpg');
insert into campgrounds (national_park, name, location, check_in_time, check_out_time, open_season, map_image_url) values ('Denali', 'Igloo Creek', 'At mile 35 on the Park Road', '2PM', '11AM', 'Summer', 'https://www.nps.gov/common/uploads/grid_builder/dena/crop1_1/FC60BC5C-FC11-E52F-4CFDC8878F0862FA.jpg');

-- Seed some campground amenities


-- Seed some amenities

-- Seed some campsites

-- Seed some employees who work as hosts

-- Seed some parties

-- Seed some stays

-- Seed some payments