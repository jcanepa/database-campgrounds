-- Seed parks
insert into national_parks values
    ('Joshua Tree', 'Park', 'CA'),
    ('Point Reyes', 'Seashore', 'CA'),
    ('Yosemite', 'Park', 'CA'),
    ('Yellowstone', 'Park', 'MT'),
    ('Denali', 'Park & Preserve', 'AK');

-- Seed some campgrounds
insert into campgrounds (`national_park`, `name`, `location`, `check_in_time`, `check_out_time`, `open_season`, `map_image_url`) values
    ('Joshua Tree', 'Black Rock', 'NW corner of the park', '2PM', '11AM', 'Spring, Summer, Fall', 'https://www.nps.gov/jotr/planyourvisit/images/Black-Rock-Campground-web-Schwalbe_1.jpg'),
    ('Joshua Tree', 'Cottonwood', 'North border of the park', '2PM', '11AM', 'Spring, Summer, Fall', 'https://www.nps.gov/jotr/planyourvisit/images/Black-Rock-Campground-web-Schwalbe_1.jpg'),
    ('Joshua Tree', 'Indian Cove', 'NW corner of the park', '2PM', '11AM', 'Spring, Summer, Fall', 'https://www.nps.gov/jotr/planyourvisit/images/Black-Rock-Campground-web-Schwalbe_1.jpg'),
    ('Joshua Tree', 'Jumbo Rocks', 'NW corner of the park', '2PM', '11AM', 'Spring, Summer, Fall', 'https://www.nps.gov/jotr/planyourvisit/images/Black-Rock-Campground-web-Schwalbe_1.jpg'),
    ('Joshua Tree', 'Hidden Valley', 'NW corner of the park', '2PM', '11AM', 'Spring, Summer, Fall', 'https://www.nps.gov/jotr/planyourvisit/images/Black-Rock-Campground-web-Schwalbe_1.jpg'),
    ('Joshua Tree', 'White Tank', 'NW corner of the park', '2PM', '11AM', 'Spring, Summer, Fall', 'https://www.nps.gov/jotr/planyourvisit/images/Black-Rock-Campground-web-Schwalbe_1.jpg'),
    ('Point Reyes', 'Coast', '1.8-mile hike on Laguna and Fire Lane Trails', '2PM', '11AM', 'Spring', 'https://www.nps.gov/pore/planyourvisit/images/pic_campground_coast_06_180813_480x320.jpg'),
    ('Point Reyes', 'Glen', '4.6-mile hike from the Bear Valley Trailhead', '2PM', '11AM', 'Spring', 'https://www.nps.gov/pore/planyourvisit/images/pic_campground_coast_06_180813_480x320.jpg'),
    ('Point Reyes', 'Sky', 'On the western side of Mount Wittenberg at an elevation of 1025 feet', '2PM', '11AM', 'Spring', 'https://www.nps.gov/pore/planyourvisit/images/pic_campground_coast_06_180813_480x320.jpg'),
    ('Point Reyes', 'Wildcat', '6.3-mile hike from Bear Valley Trailhead or a 5.5-mile hike from the Palomarin Trailhead', '2PM', '11AM', 'Spring', 'https://www.nps.gov/pore/planyourvisit/images/pic_campground_coast_06_180813_480x320.jpg'),
    ('Point Reyes', 'Tomales Bay', 'West-side National Park beaches north of the northern border of Tomales Bay State Park', '2PM', '11AM', 'Spring', 'https://www.nps.gov/pore/planyourvisit/images/pic_campground_coast_06_180813_480x320.jpg'),
    ('Yosemite', 'Camp 4', 'At the base of the granite cliffs of Yosemite Falls', '2PM', '11AM', 'Spring, Summer', 'https://www.nps.gov/yose/planyourvisit/images/camp-4-kiosk.jpg'),
    ('Yellowstone', 'Mammoth', 'Five miles south of the North Entrance of the park', '2PM', '11AM', 'Year-round', 'https://www.nps.gov/yell/planyourvisit/images/ndh-yell-3964.jpg'),
    ('Denali', 'Igloo Creek', 'At mile 35 on the Park Road', '2PM', '11AM', 'Summer', 'https://www.nps.gov/common/uploads/grid_builder/dena/crop1_1/FC60BC5C-FC11-E52F-4CFDC8878F0862FA.jpg');

-- Seed some campground amenities
insert into campground_amenities values
    (1, 'Fire ring'),
    (1, 'Restrooms'),
    (1, 'Ampitheater'),
    (1, 'Dump station'),
    (1, 'Picnic tables'),
    (1, 'Potable water'),
    (2, 'Flush toilets'),
    (2, 'Cell phone & internet connectivity'),
    (3, 'Fire ring'),
    (3, 'Restrooms'),
    (4, 'Ampitheater'),
    (5, 'Dump station'),
    (6, 'Picnic tables'),
    (7, 'Potable water'),
    (8, 'Valut toilets'),
    (9, 'Cell phone & internet connectivity'),
    (10, 'Fire ring'),
    (11, 'Restrooms'),
    (12, 'Ampitheater'),
    (13, 'Valut toilets'),
    (14, 'Fire ring');

-- Seed some campsites
insert into campsites (`campground_id`, `site_number`, `type`, `fee`, `capacity`, `vehicle_capacity`, `is_reservable`) values
    (1, 001, 'tent only, non-electric', 2500, 6, 1, 1),
    (1, 002, 'tent only, non-electric', 2500, 6, 1, 0),
    (1, 003, 'standard, non-electric', 2500, 4, 1, 0),
    (1, 004, 'rv, non-electric', 2500, 4, 1, 1),
    (1, 005, 'rv, full hookups', 2500, 4, 1, 1),
    (2, 001, 'tent only, non-electric', 2500, 6, 1, 0),
    (2, 002, 'tent only, non-electric', 2500, 6, 1, 1),
    (2, 003, 'standard, non-electric', 2500, 4, 1, 1),
    (2, 004, 'rv, non-electric', 2500, 4, 1, 1),
    (3, 001, 'tent only, non-electric', 2500, 6, 1, 0),
    (3, 002, 'tent only, non-electric', 2500, 6, 1, 1),
    (3, 003, 'standard, non-electric', 2500, 4, 1, 1),
    (3, 004, 'rv, non-electric', 2500, 4, 1, 1),
    (4, 001, 'tent only, non-electric', 2500, 6, 1, 0),
    (4, 002, 'tent only, non-electric', 2500, 6, 1, 1),
    (4, 003, 'standard, non-electric', 2500, 4, 1, 1),
    (4, 004, 'rv, non-electric', 2500, 4, 1, 1),
    (5, 001, 'tent only, non-electric', 2500, 6, 1, 0),
    (5, 002, 'tent only, non-electric', 2500, 6, 1, 1),
    (5, 003, 'standard, non-electric', 2500, 4, 1, 1),
    (5, 004, 'rv, non-electric', 2500, 4, 1, 1),
    (6, 001, 'tent only, non-electric', 2500, 6, 1, 0),
    (6, 002, 'tent only, non-electric', 2500, 6, 1, 1),
    (6, 003, 'standard, non-electric', 2500, 4, 1, 1),
    (7, 004, 'rv, non-electric', 2500, 4, 1, 1),
    (7, 001, 'tent only, non-electric', 2500, 6, 1, 0),
    (8, 002, 'tent only, non-electric', 2500, 6, 1, 1),
    (8, 003, 'standard, non-electric', 2500, 4, 1, 1),
    (9, 004, 'rv, non-electric', 2500, 4, 1, 1),
    (9, 001, 'tent only, non-electric', 2500, 6, 1, 0),
    (10, 002, 'tent only, non-electric', 2500, 6, 1, 1),
    (10, 003, 'standard, non-electric', 2500, 4, 1, 1),
    (11, 004, 'rv, non-electric', 2500, 4, 1, 1);

-- Seed some employees who work as hosts
insert into employees (`first_name`, `last_name`, `national_park`, `job_type`) values
    ('Mark', 'Corrigan', 'Joshua Tree', 'Camp Host'),
    ('Jez', 'Usbourne', 'Joshua Tree', 'Camp Host'),
    ('Sophie', 'Chapman', 'Joshua Tree', 'Camp Host'),
    ('Super', 'Hans', 'Joshua Tree', 'Camp Host'),
    ('Jeff', 'Heaney', 'Joshua Tree', 'Camp Host'),
    ('Alan', 'Johnson', 'Joshua Tree', 'Camp Host'),
    ('Big', 'Suze', 'Point Reyes', 'Camp Host');

-- Place employees at their host stations
insert into hosts (`employee_id`, `campground_id`, `campsite_id`, `services`, `office_hours`) values
    (1, 1, 1, 'Firewood, first aid, marshmallows and soda for sale', '10-3pm everyday'),
    (1, 2, 2, 'Electronic payments accepted, internet access', '8-noon everyday'),
    (2, 7, 8, 'Firewood, first aid, marshmallows and soda for sale', '10-3pm everyday'),
    (4, 13, 13, 'Firewood, first aid, marshmallows and soda for sale', '10-3pm everyday'),
    (5, 14, 20, 'Firewood, first aid, marshmallows and soda for sale', '10-3pm everyday');

-- Seed some parties
insert into parties (`first_name`, `last_name`, `phone`, `email`, `size`, `vehicles`) values
    ('Hank', 'Hill', '409-777-1234', '', 3, 1),
    ('Dale', 'Gribble', '409-777-2345', 'rustyshackleford@conspiracy.net', 3, 1),
    ('Bill', 'Dauterive', '409-777-3456', 'lenoresguy72@yahoo.com', 2, 2),
    ('Khan', 'Souphanousinphone', '409-777-4567', 'ksoup@gmail.com', 3, 1),
    ('Luanne', 'Platter-Kleinschmidt', '409-777-5678', 'missluanne@mangerbabies.net', 3, 1);

-- Seed some stays
insert into stays (`campsite_id`, `party_id`, `start_date`, `duration`, `amount_due`) values
    (1, 1, '2022-06-10', 4, 10000),
    (2, 2, '2022-06-10', 4, 10000),
    (3, 3, '2022-06-10', 4, 10000),
    (4, 4, '2022-06-10', 4, 10000),
    (5, 5, '2022-06-10', 4, 10000);

-- Seed some payments
insert into payments (`stay_id`, `party_id`, `date`, `amount_paid`, `is_reservation`) values
    (1, 1, '2022-01-05', 10000, 1),
    (4, 4, '2022-01-06', 10000, 1),
    (5, 5, '2022-03-20', 10000, 1),
    (2, 2, '2022-06-10', 0, 0),
    (3, 3, '2022-06-10', 10, 0);