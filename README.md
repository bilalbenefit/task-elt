# Kumparan ETL/ELT Pipeline

Kumparan is a growing online media company that has been rapidly expanding since its announcement in 2016. With millions of daily active users and over a million contents produced daily, business intelligence plays a crucial role in providing valuable analysis and recommendations. As a Data Engineer, the task is to ensure that the data is ready for analytical purposes.

## Task Overview
Your task is to create an ETL/ELT pipeline to transfer data from a database to a data warehouse. This pipeline should be capable of running every hour, every day.

## Tools Used
Airbyte: Used for data ingestion from the source database.
dbt (data build tool): Used for data transformation and loading into the data warehouse.

## Pipeline Configuration
Ingestion: Data is ingested from the source database using Airbyte.
Transformation and Loading: The ingested data is then transformed and loaded into the data warehouse using dbt.
Scheduling: Airbyte is configured to run the ingestion process every hour, every day.

## Bonus Considerations
Handling Historical Data: Since the data in the database is from 2016, incremental loading is implemented to handle updates efficiently. This ensures that only new or changed records are processed.
Handling Hard Deletes: To address the hard delete method where rows are deleted from the source, Slowly Changing Dimensions (SCD) are used. This approach helps in keeping the data warehouse in sync with the source database, even when rows are deleted.

# Setup and Configuration
## Airbyte Configuration
Ingestion Schedule: Configured to run every hour.
Source and Destination: Configured to connect to the source database and data warehouse.

## dbt Configuration
Transformations: dbt models are used to perform necessary transformations on the ingested data.
Loading: Transformed data is loaded into the data warehouse.

## Incremental Loading
Incremental Models: dbt models are configured to perform incremental updates, ensuring that only new or changed records are processed.
Handling Hard Deletes
Slowly Changing Dimensions (SCD): Implemented to manage data that may be deleted or changed in the source database, ensuring consistency between the source and data warehouse.

## Running the Pipeline
Ensure that Airbyte and dbt are properly configured and running.
Verify that the ingestion and transformation processes are scheduled correctly.
Monitor the pipeline for any issues and ensure data consistency.