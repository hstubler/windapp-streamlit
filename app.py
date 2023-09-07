import streamlit as st
from influxdb_client import InfluxDBClient
import warnings
import pandas as pd
import arrow
import matplotlib.pyplot as plt
import seaborn as sns

org = "a286e8b76dbe1c10"
bucket = "hstubler"
# token = 'eN3f7y3tnzWoiJl5sb9-OwhCcGwYluXH37Jm-wYcF_k1cv5QZ7tscq3Gwcw-bb_on-E49pGi69hnxOLq9TCNgA=='
token = "LQECoOJHlfjBBy51xpOIFy6KSn1R170Nwb1KJw2oHE2-FkbZSAHOOVbQAMDj1K5Up-8ydpnrgw1eE4BsoN_eIQ=="
url = "http://10.111.0.113:8086"

client = InfluxDBClient(url=url, token=token, org=org, timeout=1080_000)

time = "2023-06-17T18:30:07.394Z"


def get_wind_data(time, shift):
    with open("marks.flux", "r") as file:
        query = file.read()
        start = (
            arrow.get(time).shift(seconds=-10).format("YYYY-MM-DDTHH:mm:ss.SSS") + "Z"
        )
        end = (
            arrow.get(time).shift(seconds=shift).format("YYYY-MM-DDTHH:mm:ss.SSS") + "Z"
        )

        query = query.replace("{startTime}", start)
        query = query.replace("{stopTime}", end)

    result = client.query_api().query_data_frame(org=org, query=query)
    df = result.dropna()
    df = df.rename(columns={"boat": "mark", "_time": "DATETIME"})[
        [
            "DATETIME",
            "mark",
            "LATITUDE_MDSS_deg",
            "LONGITUDE_MDSS_deg",
            "TWD_MDSS_deg",
            "TWS_MDSS_km_h_1",
        ]
    ]
    return df


df = get_wind_data(time, 50)

# fig = plt.figure(figsize=(10, 4))
fig = sns.boxplot(
    data=df, x="TWS_MDSS_km_h_1", y="mark", hue="mark", dodge=False
).figure

st.pyplot(fig)
