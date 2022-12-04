
    CREATE TABLE IF NOT EXISTS Hourly_Weather (
        id INTEGER PRIMARY KEY,
        date DATETIME,
        hourlyprecipitation FLOAT,
        hourlywindspeed FLOAT
    )

    CREATE TABLE IF NOT EXISTS Daily_Weather (
        id INTEGER PRIMARY KEY,
        date DATE,
        dailyaveragewindspeed FLOAT,
        dailyprecipitation FLOAT
    )

    CREATE TABLE IF NOT EXISTS Taxi_Trips (
        id INTEGER PRIMARY KEY,
        pickup_datetime DATETIME,
        pickup_longitude FLOAT,
        pickup_latitude FLOAT,
        dropoff_longitude FLOAT,
        dropoff_latitude FLOAT,
        tip_amount FLOAT,
        distance FLOAT
    )

    CREATE TABLE IF NOT EXISTS Uber_Trips(
        id INTEGER PRIMARY KEY,
        pickup_datetime DATETIME,
        pickup_longitude FLOAT,
        pickup_latitude FLOAT,
        dropoff_longitude FLOAT,
        dropoff_latitude FLOAT,
        distance FLOAT
    )
