
    Select strftime('%Y-%m-%d %H',Hourly_Weather.date) AS Hour_in_Date,Hourly_Weather.hourlyprecipitation AS Precipitation,Hourly_Weather.hourlywindspeed AS SustainedWindSpeed,count(tbl.pickup_datetime) AS Trip_Amount
    FROM Hourly_Weather
    left join (SELECT pickup_datetime,distance from Uber_Trips WHERE pickup_datetime BETWEEN '2012-10-22 00:00:00' AND '2012-11-06 00:00:00'
            UNION ALL
            SELECT pickup_datetime,distance from Taxi_Trips where pickup_datetime BETWEEN '2012-10-22 00:00:00' AND '2012-11-06 00:00:00')AS tbl
    on strftime('%Y-%m-%d %H',tbl.pickup_datetime)= strftime('%Y-%m-%d %H',Hourly_Weather.date)
    where Hourly_Weather.date BETWEEN '2012-10-22 00:00:00' AND '2012-11-06 00:00:00'
    GROUP BY strftime('%Y-%m-%d %H',Hourly_Weather.date)
