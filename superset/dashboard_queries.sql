SELECT
  DATE(event_time) AS event_date,
  SUM(volume_mb) AS total_data_mb
FROM telecom.usage_cdr
GROUP BY event_date
ORDER BY event_date;
