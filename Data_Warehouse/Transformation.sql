SELECT
starttime,
CONCAT(start_station_name, " to ", end_station_name) AS route,
CASE gender
WHEN 1 THEN 'Male'
WHEN 2 THEN 'Female'
ELSE 'Unknown' END gender,
usertype,
ROUND(cast(tripduration as int64) / 60) as duration
FROM `zoomcamp-de-339202.trips_data_all.biketrip`;