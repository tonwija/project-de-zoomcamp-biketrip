# Project for Data Engineering Zoomcamp by DTC

# Dataset

Dataset used from Citi Bike Trip New York City Year 2020
Citi Bike Trip [Dataset](https://s3.amazonaws.com/tripdata/index.html)

# Problem Statement

Create dashboard with 3 Tile 1 Bar & 2 Pie from bike trip dataset year 2020

# Data Pipeline

Data pipeline used with batch which is run periodically (monthly)

- Create Data Pipeline with 4 Step Download_dataset_task (Zip Format) -> Unzip_data_task (From zip to csv) -> Remove_zip_task (Delete zip file) -> Format_to_parquet_task (Change format from CSV to parquet) -> local_to_gcs_task (upload parquet to Data Lake/GCS) 

# Technologies

- Cloud : GCP
- IaC : Terraform for making Bucket in GCS & Config on BigQuery
- Workflow orchestration : Runnning Airflow on container(Docker)
- Data Warehouse : BigQuery
