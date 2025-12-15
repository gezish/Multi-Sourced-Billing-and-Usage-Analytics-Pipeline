CREATE DATABASE IF NOT EXISTS telecom;

CREATE TABLE IF NOT EXISTS telecom.usage_cdr (
  event_id STRING,
  msisdn STRING,
  event_type STRING,
  volume_mb INT,
  event_time TIMESTAMP,
  cell_id INT
)
USING iceberg
PARTITIONED BY (days(event_time));
