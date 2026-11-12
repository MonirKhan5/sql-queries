SELECT model,screen_size FROM monir_khan.smartphones WHERE brand_name = 'samsung'
ORDER BY screen_size DESC
LIMIT 10;

SELECT num_front_cameras + num_rear_cameras AS 'Total_camera', model
 FROM monir_khan.smartphones
 ORDER BY Total_camera DESC
 ;
SELECT ROUND(SQRT(resolution_width*resolution_width +
resolution_height*resolution_height)/screen_size) AS 'PPI',
model,brand_name
FROM monir_khan.smartphones
ORDER BY PPI DESC
;
SELECT model,battery_capacity FROM monir_khan.smartphones
ORDER BY battery_capacity ASC
# LIMIT x,y here x is the offset meaning how many rows to skip and where to start
# y tells us how many rows to return after x. N.B X IS THE INDEX POSITION
LIMIT 1,1
;
SELECT model,rating FROM monir_khan.smartphones
WHERE brand_name = 'apple'
ORDER BY rating ASC
LIMIT 1
;
SELECT * FROM monir_khan.smartphones
ORDER BY brand_name ASC, rating DESC
;
SELECT brand_name,COUNT(*) AS num_phones,AVG(price) AS avg_price,
MAX(rating),ROUND(AVG(screen_size),2)
 FROM monir_khan.smartphones
GROUP BY brand_name
LIMIT 15
