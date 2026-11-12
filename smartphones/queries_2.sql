SELECT brand_name,AVG(ram_capacity) AS avg_ram, COUNT(*) AS count
 FROM monir_khan.smartphones
WHERE refresh_rate >= 90 AND fast_charging_available = 1 
GROUP BY brand_name
HAVING count >10 
ORDER BY avg_ram DESC
LIMIT 3
;
SELECT brand_name, AVG(price) AS avg_price
FROM monir_khan.smartphones
 WHERE has_5g = 'True'
 GROUP BY brand_name
 HAVING AVG(rating) > 70 AND COUNT(*) >10
