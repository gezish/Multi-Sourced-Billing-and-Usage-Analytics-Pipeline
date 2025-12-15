SELECT
    c.msisdn,
    c.segment,
    c.region,
    COUNT(u.event_id)        AS total_events,
    SUM(u.volume_mb)         AS total_usage_mb
FROM telecom.customer_dim c
LEFT JOIN telecom.usage_cdr u
    ON c.msisdn = u.msisdn
GROUP BY c.msisdn, c.segment, c.region;
