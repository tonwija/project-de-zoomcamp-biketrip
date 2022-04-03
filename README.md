# Project for Data Engineering Zoomcamp by DTC

# Dataset

Dataset used from Citi Bike Trip New York City Year 2020
Citi Bike Trip [Dataset](https://s3.amazonaws.com/tripdata/index.html)

Dataset format 

- Trip Duration (seconds)
- Start Time and Date
- Stop Time and Date
- Start Station Name
- End Station Name
- Station ID
- Station Lat/Long
- Bike ID
- User Type (Customer = 24-hour pass or 3-day pass user; Subscriber = Annual Member)
- Gender (Zero=unknown; 1=male; 2=female)
- Year of Birth

# Problem Statement

For this project, i've chosen this dataset citi bike trip new york. This data set is available on [Dataset](https://s3.amazonaws.com/tripdata/index.html) and updated every monthly. The goal was to develop dashboard contain trip summary & user distributin by user type/Gender 


# Data Pipeline

Data pipeline used with batch which is run periodically (monthly)

- Create Data Pipeline with 4 : Step Download_dataset_task (Zip Format) -> Unzip_data_task (From zip to csv) -> Remove_zip_task (Delete zip file) -> Format_to_parquet_task (Change format from CSV to parquet) -> local_to_gcs_task (upload parquet to Data Lake/GCS) 

# Technologies

- Cloud : GCP
- IaC : Terraform for making Bucket in GCS & Config on BigQuery
- Workflow orchestration : Runnning Airflow on container(Docker)
- Data Warehouse : BigQuery

# Dashboard

Create dashboard with 3 Tile (1 Bar & 2 Pie) from bike trip dataset year 2020
- Summary most popular route taken by gender
- Distribution by usertype & Gender

[Dashboard](https://datastudio.google.com/reporting/68030fae-12f6-4840-8f12-ab570cac367e)
