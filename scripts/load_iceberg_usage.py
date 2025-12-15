import happybase
import pandas as pd

df = pd.read_csv("/tmp/sftp_data/customers.csv")

conn = happybase.Connection('localhost')
table = conn.table('customer_profile')

for _, row in df.iterrows():
    table.put(
        row["msisdn"],
        {
            b"info:name": row["name"].encode(),
            b"info:segment": row["segment"].encode(),
            b"info:region": row["region"].encode()
        }
    )

print("Customers loaded into HBase")
