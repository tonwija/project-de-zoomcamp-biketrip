--CREATE EXTERNAL TABLE FROM DATALAKE/GCS BUCKET WITH PARQUET FILE FORMAT
CREATE OR REPLACE EXTERNAL TABLE `zoomcamp-de-339202.trips_data_all.external_biketrip`
OPTIONS (
  format = 'parquet',
  uris = ['gs://dtc_data_lake_zoomcamp-de-339202/raw/2020*.parquet']
);

--CREATE TABLE NON EXTERNAL FROM EXTERNAL TABLE FOR OPTIMIZATION
CREATE OR REPLACE TABLE `zoomcamp-de-339202.trips_data_all.biketrip_nonpartitoned` AS
SELECT * FROM `zoomcamp-de-339202.trips_data_all.external_biketrip`;

--CREATE PARTITIONED TABLE BY starttime & CLUSTERED BY usertype

CREATE OR REPLACE TABLE `zoomcamp-de-339202.trips_data_all.biketrip`
PARTITION BY DATE(starttime)
CLUSTER BY usertype AS
SELECT * FROM `zoomcamp-de-339202.trips_data_all.biketrip_nonpartitoned`;