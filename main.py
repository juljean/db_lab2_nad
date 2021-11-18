import psycopg2
from ps import pas

username = 'nad'
password = pas
database = 'labaratory2'
host = 'localhost'
port = '5432'

query_1 = '''
   select TRIM(Country.country_name), count(country_name) as total from AttackDate join AttackPlace on (AttackDate.attack_id = AttackPlace.attack_id)
    join Place on (AttackPlace.place_name = Place.place_id) join Country on (Place.country_id = Country.country_id)
    group by Country.country_name;
'''

query_2 = '''
    select TRIM(Place.place_name) as City, count(Place.place_name) from AttackDate join AttackPlace on (AttackDate.attack_id = AttackPlace.attack_id)
    join Place on (AttackPlace.place_name = Place.place_id)
    where attack_date > '2009-09-09'
    group by place.place_name;
'''

query_3 ='''
    select extract(isoyear from AttackDate.attack_date) as year, count(extract(isoyear from AttackDate.attack_date)) as total
    from AttackDate
    group by extract(isoyear from AttackDate.attack_date)
    order by year;
'''

conn = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
with conn:

    print("Database opened successfully")

    cur = conn.cursor()

    print('First Task')

    cur.execute(query_1)
    for row in cur:
        print(row)

    print('\nSecond Task')

    cur.execute(query_2)
    for row in cur:
        print(row)

    print('\nThird Task')

    cur.execute(query_3)
    for row in cur:
        print(row)
