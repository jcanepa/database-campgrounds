-- Someone has been injured!
-- Find the location of all campground hosts who offers first aid in Joshua Tree.
select campgrounds.name, campsites.site_number, campgrounds.location
from (hosts JOIN campgrounds ON hosts.campground_id = campgrounds.id JOIN campsites ON hosts.campsite_id = campsites.id)
where hosts.services like '%first aid%'
and campgrounds.national_park = 'Joshua Tree';

-- Count the number of people camping on 6/17/22.
select sum(parties.`size`) as 'Number of people camping'
from stays join parties on stays.party_id = parties.id
where '2022-06-13' between start_date and DATE_ADD(start_date, INTERVAL duration DAY);

-- Time for the camp hosts to do their nightly rounds.
-- Get a list of campsites with parties that still owe money for their stay, and how much to collect.
select campsite_id, round((amount_due - amount_paid)/100, 2) as 'balance ($)'
from (stays join payments on stays.party_id = payments.party_id)
where amount_due > amount_paid;

-- Show each campground in Joshua Tree NP and the number of available campsites it has.
-- (excluding any sites that are occupied by a party or camp hosts)
select name as 'campground', count(*) as 'available campsites'
from (campsites join campgrounds on campgrounds.id = campground_id)
where national_park = 'Joshua Tree'
and campsites.id not in (
    select campsite_id
    from stays
    where '2022-06-12' between start_date and DATE_ADD(start_date, INTERVAL duration DAY))
and campsites.id not in (
	select campsite_id
	from hosts)
group by name;

-- List all amenities types offered and all the national park campgrounds that offer them in a comma-separated list.
select feature, GROUP_CONCAT(campgrounds.`name` SEPARATOR ', ') as campgrounds
from campground_amenities
join campgrounds on campground_amenities.campground_id = campgrounds.id
group by feature;