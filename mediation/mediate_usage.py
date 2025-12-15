import pandas as pd

df = pd.read_csv("/tmp/sftp_data/usage.csv")

df.dropna(inplace=True)
df["event_time"] = pd.to_datetime(df["event_time"])
df["event_date"] = df["event_time"].dt.date

df.to_parquet("/tmp/usage_clean.parquet", index=False)
print("Usage mediation complete")
