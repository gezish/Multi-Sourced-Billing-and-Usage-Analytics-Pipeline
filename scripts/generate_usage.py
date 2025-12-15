import pandas as pd
import numpy as np
from faker import Faker

fake = Faker()

rows = []
for _ in range(10000):
    event_type = np.random.choice(["CALL", "SMS", "DATA"])
    rows.append({
        "event_id": fake.uuid4(),
        "msisdn": fake.msisdn(),
        "event_type": event_type,
        "volume_mb": np.random.randint(1, 500) if event_type == "DATA" else 0,
        "event_time": fake.date_time_this_month(),
        "cell_id": np.random.randint(1000, 9999)
    })

df = pd.DataFrame(rows)
df.to_csv("./data/usage.csv", index=False)
print("usage.csv generated")
