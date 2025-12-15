spark.read.parquet("hdfs:///raw/usage/usage_clean.parquet") \
     .writeTo("telecom.usage_cdr") \
     .append()
