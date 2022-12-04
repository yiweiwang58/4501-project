
    SELECT strftime('%w',pickup_datetime) AS WeekDay, count(strftime('%w',pickup_datetime)) as Trip_Amount
    FROM Uber_Trips
    Group By WeekDay
    ORDER BY Trip_Amount DESC
