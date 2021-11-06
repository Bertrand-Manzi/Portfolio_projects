/*
Cyclistic bike-share data analysis in Chicago
*/


------------------------------------->Creating a Yearly table from 12 monthly Tables<---------------------------
CREATE TABLE Year_data
([ride_id] nvarchar(255)
      ,[rideable_type] nvarchar(255)
      ,[started_at] datetime
      ,[ended_at] datetime
      ,[ride_length] datetime
      ,[day_of_week] nvarchar(255)
      ,[start_station_name] nvarchar(255)
      ,[start_station_id] nvarchar(255)
      ,[end_station_name] nvarchar(255)
      ,[end_station_id] nvarchar(255)
	  ,[member_casual] nvarchar(255)
	  ,[start_lat] float
	  ,[start_lng] float
	  ,[end_lat] float
	  ,[end_lng] float
	  )
INSERT INTO Year_data
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202010$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202011$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202012$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202101$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202102$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202103$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202104$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202105$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202106$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202107$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202108$
Union
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,[ride_length]
      ,[day_of_week]
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Cyclistics..cyclistic_trips_202109$

----------------------------------------------------------------------------------------------------------
Select *
From Year_data

--------------------------------> Explore table for Nulls <-----------------------------------------------

SELECT
    SUM(CASE WHEN ride_id LIKE 'NULL' THEN 1 ELSE 0 END) AS ride_id_null,
    SUM(CASE WHEN rideable_type LIKE 'NULL' THEN 1 ELSE 0 END) AS rideable_type_null,
    SUM(CASE WHEN started_at LIKE 'NULL' THEN 1 ELSE 0 END) AS started_at_null,
    SUM(CASE WHEN ended_at LIKE 'NULL' THEN 1 ELSE 0 END) AS ended_at_null,
    SUM(CASE WHEN start_station_name LIKE 'NULL' THEN 1 ELSE 0 END) AS start_station_null,
    SUM(CASE WHEN end_station_name LIKE 'NULL' THEN 1 ELSE 0 END) AS end_station_null,
    SUM(CASE WHEN member_casual LIKE 'NULL' THEN 1 ELSE 0 END) AS member_casual_null,
    SUM(CASE WHEN start_lat IS NULL THEN 1 ELSE 0 END) AS start_lat_null,
	SUM(CASE WHEN start_lng IS NULL THEN 1 ELSE 0 END) AS start_lng_null,
	SUM(CASE WHEN end_lng IS NULL THEN 1 ELSE 0 END) AS end_lng_null,
	SUM(CASE WHEN end_lat IS NULL THEN 1 ELSE 0 END) AS end_lat_null
FROM  Year_data

--------------------------------> Final Cleaned Table; Two new columns added and cleanedof Nulls <-----------------------------------------------

CREATE TABLE Year_data_cleaned
([ride_id] nvarchar(255)
      ,[rideable_type] nvarchar(255)
      ,[started_at] datetime
      ,[ended_at] datetime
      ,[duration_mins] int
      ,[day_week] nvarchar(255)
      ,[start_station_name] nvarchar(255)
      ,[start_station_id] nvarchar(255)
      ,[end_station_name] nvarchar(255)
      ,[end_station_id] nvarchar(255)
	  ,[member_casual] nvarchar(255)
	  ,[start_lat] float
	  ,[start_lng] float
	  ,[end_lat] float
	  ,[end_lng] float
	  )
INSERT INTO Year_data_cleaned
Select [ride_id]
      ,[rideable_type]
      ,[started_at]
      ,[ended_at]
      ,DATEDIFF(minute, started_at, ended_at) AS duration_mins
      , CASE
      WHEN day_of_week = 1 THEN 'Sunday'
      WHEN day_of_week = 2 THEN 'Monday'
      WHEN day_of_week = 3 THEN 'Tuesday'
      WHEN day_of_week = 4 THEN 'Wednesday'
      WHEN day_of_week = 5 THEN 'Thursday'
      WHEN day_of_week = 6 THEN 'Friday'
        ELSE
           'Saturday'
        END
           AS Day_Week
      ,[start_station_name]
      ,[start_station_id]
      ,[end_station_name]
      ,[end_station_id]
	  ,[member_casual]
	  ,[start_lat] 
	  ,[start_lng] 
	  ,[end_lat] 
	  ,[end_lng] 
From Year_data
Where start_station_name NOT LIKE 'NULL'
AND end_station_name NOT LIKE 'NULL'
AND LEN(ride_id) = 16 


select *
from Year_data_cleaned

--------------------------------> Cross checking if all Nulls removed <-----------------------------------------------

SELECT
    SUM(CASE WHEN ride_id LIKE 'NULL' THEN 1 ELSE 0 END) AS ride_id_null,
    SUM(CASE WHEN rideable_type LIKE 'NULL' THEN 1 ELSE 0 END) AS rideable_type_null,
    SUM(CASE WHEN started_at LIKE 'NULL' THEN 1 ELSE 0 END) AS started_at_null,
    SUM(CASE WHEN ended_at LIKE 'NULL' THEN 1 ELSE 0 END) AS ended_at_null,
    SUM(CASE WHEN start_station_name LIKE 'NULL' THEN 1 ELSE 0 END) AS start_station_null,
    SUM(CASE WHEN end_station_name LIKE 'NULL' THEN 1 ELSE 0 END) AS end_station_null,
    SUM(CASE WHEN member_casual LIKE 'NULL' THEN 1 ELSE 0 END) AS member_casual_null,
    SUM(CASE WHEN start_lat IS NULL THEN 1 ELSE 0 END) AS start_lat_null,
	SUM(CASE WHEN start_lng IS NULL THEN 1 ELSE 0 END) AS start_lng_null,
	SUM(CASE WHEN end_lng IS NULL THEN 1 ELSE 0 END) AS end_lng_null,
	SUM(CASE WHEN end_lat IS NULL THEN 1 ELSE 0 END) AS end_lat_null
FROM  Year_data_cleaned


--------------------------------> DATA EXPLORATION FROM CLEANED TABLE <-------------------------------------------


--------------------------------> no.of rides by member type and type of bike<----------------
Select member_casual, count(member_casual) as number_of_rides, rideable_type
From Year_data_cleaned
Group by member_casual, rideable_type

--------------------------------> av. ride duration by member type<-------------------------
Select member_casual, AVG(duration_mins) as average_time_mins
From Year_data_cleaned
Group by member_casual

---------------------->no.of ridestrips weekly by member_type<--------------------------------
Select member_casual, day_week, count(day_week) as number_of_rides
From Year_data_cleaned
Group by day_week, member_casual
Order by member_casual
----------------------> no.of ridestrips hourly by member_type<--------------------
Select DATEPART(HOUR, started_at) as Hour, count(started_at) as number_of_rides , member_casual
From Year_data_cleaned
Group by DATEPART(HOUR, started_at), member_casual 
Order by Hour

----------------------> no.of ridestrips monthly by member_type<--------------------
Select DATENAME(MONTH, started_at) as Month, count(started_at) as number_of_rides , member_casual
From Year_data_cleaned
Group by DATENAME(MONTH, started_at), member_casual 
Order by number_of_rides

-------------------->location where members depart from<-------------------
Select distinct TOP 15 start_station_name, COUNT(member_casual) as num_of_members_departing,start_lat,start_lng
From Year_data_cleaned
Where member_casual = 'member'
Group by start_station_name, start_lat, start_lng
Order by num_of_members_departing DESC

-------------------->location where casuals depart from<-------------------

Select distinct TOP 15 start_station_name, COUNT(member_casual) as num_of_casuals_departing,start_lat,start_lng
From Year_data_cleaned
Where member_casual = 'casual'
Group by start_station_name, start_lat, start_lng
Order by num_of_casuals_departing DESC

-------------------->location where members arrive to<-------------------
Select distinct TOP 15 end_station_name, COUNT(member_casual) as num_of_members_arriving,end_lat,end_lng
From Year_data_cleaned
Where member_casual = 'member'
Group by end_station_name, end_lat, end_lng
Order by num_of_members_arriving DESC

-------------------->location where casuals arrive to<-------------------
Select distinct TOP 15 end_station_name, COUNT(member_casual) as num_of_casuals_arriving,end_lat,end_lng
From Year_data_cleaned
Where member_casual = 'casual'
Group by end_station_name, end_lat, end_lng
Order by num_of_casuals_arriving DESC





