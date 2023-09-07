import streamlit as st
from influxdb_client import InfluxDBClient
import warnings
import pandas as pd
import arrow
import matplotlib.pyplot as plt
import seaborn as sns


client = InfluxDBClient(url=st.secrets["url"], token=st.secrets["token"], org=st.secrets["org"], timeout=1080_000)
# client = InfluxDBClient(url=url, token=token, org=org, timeout=1080_000)

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

    result = client.query_api().query_data_frame(org=st.secrets["org"], query=query)
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
