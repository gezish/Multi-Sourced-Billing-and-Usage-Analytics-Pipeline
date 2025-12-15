SELECT
    tx_id,
    msisdn,
    amount,
    channel,
    tx_time,
    DATE(tx_time) AS tx_date
FROM telecom.recharge_txn
WHERE amount > 0;
