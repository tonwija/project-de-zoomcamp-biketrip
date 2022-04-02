# Project for Data Engineering Zoomcamp by DTC

# Dataset

Dataset used from Citi Bike Trip New York City Year 2020
Citi Bike Trip [Dataset](https://s3.amazonaws.com/tripdata/index.html)

# Problem Statement

Create dashboard with 3 Tile 1 Bar & 2 Pie from bike trip dataset year 2020

# Data Pipeline

Data pipeline used with batch which is run periodically (monthly)

# Technologies

- Cloud : GCP
- IaC : Terraform for making Bucket in GCS & Config on BigQuery
- Workflow orchestration : Runnning Airflow on container(Docker)
- Data Warehouse : BigQuery
