
    SELECT strftime('%Y-%m-%d',Hourly_Weather.date) as Day,avg(hourlywindspeed) as Wind_Speed,count(tbl.Time) as Trip_Amount
    FROM Hourly_Weather 
    LEFT JOIN (SELECT strftime('%Y-%m-%d',pickup_datetime) as Time from Uber_Trips where strftime ('%Y',pickup_datetime)='2014'
                    UNION ALL
            SELECT strftime('%Y-%m-%d',pickup_datetime) as Time from Taxi_Trips where strftime ('%Y',pickup_datetime)='2014') AS tbl ON strftime('%Y-%m-%d',Hourly_Weather.date) = tbl.Time
        
    WHERE strftime ('%Y',Hourly_Weather.date)='2014'
    Group by Day
    Order By Wind_Speed DESC
    LIMIT 10   
