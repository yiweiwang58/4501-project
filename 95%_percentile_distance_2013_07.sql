
    SELECT
      distance AS '95% percentile distance'
    FROM (SELECT distance from Uber_Trips where strftime ('%Y',pickup_datetime)='2013' AND strftime ('%m',pickup_datetime)='07'
        UNION ALL
        SELECT distance from Taxi_Trips where strftime ('%Y',pickup_datetime)='2013' AND strftime ('%m',pickup_datetime)='07')
    ORDER BY distance ASC
    LIMIT 1
    OFFSET (SELECT
             COUNT(*)
            FROM(SELECT distance from Uber_Trips where strftime ('%Y',pickup_datetime)='2013' AND strftime ('%m',pickup_datetime)='07'
        UNION ALL
        SELECT distance from Taxi_Trips where strftime ('%Y',pickup_datetime)='2013' AND strftime ('%m',pickup_datetime)='07')
          ) * 95 / 100 - 1;
