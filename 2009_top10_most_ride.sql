
    SELECT strftime('%Y-%m-%d',pickup_datetime) AS Day, count(strftime('%d',pickup_datetime)) as Trip_Amount, sum(distance)/count(strftime('%d',pickup_datetime)) as Avg_Distance
    FROM (SELECT distance,pickup_datetime from Uber_Trips where strftime ('%Y',pickup_datetime)='2009'
            UNION ALL
        SELECT distance,pickup_datetime from Taxi_Trips where strftime ('%Y',pickup_datetime)='2009')
    Group By Day
    Order By Trip_Amount DESC
    LIMIT 10
