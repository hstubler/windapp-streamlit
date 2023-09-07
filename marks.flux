f1 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LATITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "WG2")
  |> drop(columns: ["_start","_stop","_field","level"])

f2 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LONGITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "WG2")
  |> drop(columns: ["_start","_stop","_field","level"])
 

f3 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWD_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "WG2")
  |> drop(columns: ["_start","_stop","_field","level"])
 

f4 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWS_MDSS_km_h_1")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "WG2")
  |> drop(columns: ["_start","_stop","_field","level"])
 
f5 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LATITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "WG1")
  |> drop(columns: ["_start","_stop","_field","level"])
 

f6 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LONGITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "WG1")
  |> drop(columns: ["_start","_stop","_field","level"])
  

f7 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWD_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "WG1")
  |> drop(columns: ["_start","_stop","_field","level"])


f8 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWS_MDSS_km_h_1")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "WG1")
  |> drop(columns: ["_start","_stop","_field","level"])

f9 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LATITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "LG1")
  |> drop(columns: ["_start","_stop","_field","level"])


f10 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LONGITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "LG1")
  |> drop(columns: ["_start","_stop","_field","level"])


f11 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWD_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "LG1")
  |> drop(columns: ["_start","_stop","_field","level"])

f12 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWS_MDSS_km_h_1")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "LG1")
  |> drop(columns: ["_start","_stop","_field","level"])

f13 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LATITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "LG2")
  |> drop(columns: ["_start","_stop","_field","level"])


f14 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LONGITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "LG2")
  |> drop(columns: ["_start","_stop","_field","level"])


f15 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWD_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "LG2")
  |> drop(columns: ["_start","_stop","_field","level"])


f16 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWS_MDSS_km_h_1")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "LG2")
  |> drop(columns: ["_start","_stop","_field","level"])


f17 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LATITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "M1")
  |> drop(columns: ["_start","_stop","_field","level"])


f18 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "LONGITUDE_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "M1")
  |> drop(columns: ["_start","_stop","_field","level"])


f19 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWD_MDSS_deg")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "M1")
  |> drop(columns: ["_start","_stop","_field","level"])


f20 = from(bucket: "sailgp")
  |> range(start: {startTime}, stop: {stopTime})
  |> filter(fn: (r) => r["_measurement"] == "TWS_MDSS_km_h_1")
  |> filter(fn: (r) => r["_field"] == "value")
  |> filter(fn: (r) => r["level"] == "mdss")
  |> filter(fn: (r) => r["boat"] == "M1")
  |> drop(columns: ["_start","_stop","_field","level"])


union(tables: [f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20])
  |> aggregateWindow(every: 100ms, fn: mean, createEmpty: true)
  |> pivot(rowKey: ["_time"], columnKey: ["_measurement"], valueColumn: "_value")