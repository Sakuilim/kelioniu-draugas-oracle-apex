CREATE OR REPLACE FORCE EDITIONABLE VIEW "V_ORDERS" ("ID", "NAME", "LAST_NAME", "GENDER", "EMAIL", "PHONE", "USERNAME", "PASSWORD", "SHIPPING_ADDRESS", "COUNTRY", "CITY") AS 
  select c.ID,
       c.NAME,
       c.LAST_NAME,
       c.gender,
       c.EMAIL,
       c.PHONE,
       c.USERNAME,
       c.PASSWORD,
       c.SHIPPING_ADDRESS,
       ct.name country,
       cty.name city
from CLIENTS c, countries ct, cities cty
 where ct.id = c.COUNTRY_ID
 and cty.id = c.city_id
/
