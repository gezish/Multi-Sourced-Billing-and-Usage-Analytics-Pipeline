import pandas as pd
import numpy as np
from faker import Faker

fake = Faker()

rows = []
for _ in range(2000):
    rows.append({
        "msisdn": fake.msisdn(),
        "name": fake.name(),
        "segment": np.random.choice(["PREPAID", "POSTPAID"]),
        "region": np.random.choice(["NORTH", "SOUTH", "EAST", "WEST"])
    })

pd.DataFrame(rows).to_csv("customers.csv", index=False)
print("customers.csv generated")
