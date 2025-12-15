#!/bin/bash

hdfs dfs -mkdir -p /raw/usage
hdfs dfs -put -f /tmp/usage_clean.parquet /raw/usage/

echo "Loaded usage data to HDFS"
