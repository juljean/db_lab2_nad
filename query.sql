select Country.country_name, count(country_name) as total from AttackDate join AttackPlace on (AttackDate.attack_id = AttackPlace.attack_id)
join Place on (AttackPlace.place_name = Place.place_id) join Country on (Place.country_id = Country.country_id)
group by Country.country_name;

select Place.place_name as City, count(Place.place_name) from AttackDate join AttackPlace on (AttackDate.attack_id = AttackPlace.attack_id)
join Place on (AttackPlace.place_name = Place.place_id)
where attack_date > '2009-09-09'
group by place.place_name;

select extract(isoyear from AttackDate.attack_date) as year, count(extract(isoyear from AttackDate.attack_date)) as total
from AttackDate
group by extract(isoyear from AttackDate.attack_date)
order by year;

