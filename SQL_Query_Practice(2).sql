-- 2. Join product and productreview in the schema table. Include every record from product and any reviews they have.
-- Return the product name, review rating and comments. Order by rating in ascending order.
select p.productid ,p2.reviewdate, p2.rating, p."name" as productname , p2.reviewername , p2."comments" 
from product p 
left join productreview p2 on p.productid = p2.productid 
order by p2.rating asc ;

-- 3. Use a right join to combine workorder and product from production schema to bring back all products and any work
-- orders they have. Include the product name and workorder orderqty and scrappedqty fields.
-- Order by productid ascending.
select w.productid ,p.productnumber , p."name" as productname , w.orderqty ,  w.scrappedqty ,
p.safetystocklevel , p.reorderpoint , w.enddate - w.startdate as duration , w.duedate 
from workorder w 
right join product p on w.productid = p.productid 
order by w.productid asc ;