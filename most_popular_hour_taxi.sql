
    SELECT strftime ('%H',pickup_datetime) AS HOUR, count(id) AS Trip_Amount
    FROM Taxi_Trips
    GROUP BY strftime ('%H',pickup_datetime)
    ORDER BY Trip_Amount DESC
