SELECT
    event_id,
    msisdn,
    event_type,
    volume_mb,
    event_time,
    DATE(event_time)       AS event_date,
    HOUR(event_time)       AS event_hour
FROM telecom.usage_cdr
WHERE event_time IS NOT NULL;
