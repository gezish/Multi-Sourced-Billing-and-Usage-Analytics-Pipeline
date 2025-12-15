import pandas as pd
import numpy as np
from faker import Faker

fake = Faker()

rows = []
for _ in range(2000):
    rows.append({
        "tx_id": fake.uuid4(),
        "msisdn": fake.msisdn(),
        "amount": np.random.choice([10, 20, 50, 100]),
        "channel": np.random.choice(["USSD", "APP", "POS"]),
        "tx_time": fake.date_time_this_month()
    })

pd.DataFrame(rows).to_csv("./data/recharge.csv", index=False)
print("recharge.csv generated")
