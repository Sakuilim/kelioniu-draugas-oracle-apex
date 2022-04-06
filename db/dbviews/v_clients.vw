CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_CLIENTS" ("ID", "name", "last_name", "gender", "email", "phone", "username", "password", "shipping_address", "country", "city") AS 
  select c.id, 
c.name,
c.last_name,
c.gender,
c.email,
c.phone,
c.username,
c.password,
c.shipping_address,
ctr.name,
cty.name
from clients c, countries ctr, cities cty
where ctr.id = c.country_id
and cty.id = c.city_id
/
