SELECT SUM(amount)*0.1 AS money FROM zomato.orders
GROUP BY user_id;

SELECT order_id,
COUNT(*) FROM zomato.orders
GROUP BY order_id;

SELECT *,
SUM(amount) OVER(PARTITION BY MONTH(date),user_id)
FROM zomato.orders;

SELECT * FROM (SELECT user_id,MONTHNAME(date) month,SUM(amount) total_spent,
       RANK() OVER(PARTITION BY MONTHNAME(date) ORDER BY total_spent DESC)
       month_rank
         FROM orders
        GROUP BY user_id,month
        ORDER BY month DESC ) t 
WHERE t.month_rank IN(1,2)
ORDER BY month DESC,month_rank ASC;


SELECT *, 
FIRST_VALUE(name) OVER(ORDER BY marks DESC) 
FROM marks;

SELECT *, 
LAST_VALUE(name) OVER(ORDER BY marks DESC) 
FROM marks
