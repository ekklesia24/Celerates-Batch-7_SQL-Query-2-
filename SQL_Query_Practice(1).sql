-- 1. Join (with inner join) together person, personphone, businessentity and phonenumber type in the persons schema.
-- Return first name, middle name, last name, phone number and the name of the phone number type (home, office, etc.)
-- Order by business entity id descending.
select b.businessentityid , p.firstname , p.middlename , p.lastname , p2.phonenumber , p3."name" 
from person p 
inner join personphone p2 on p.businessentityid = p2.businessentityid 
inner join businessentity b on p.businessentityid = b.businessentityid 
inner join phonenumbertype p3 on p2.phonenumbertypeid = p3.phonenumbertypeid 
order by b.businessentityid desc ;