create database if not exists eletric_vehicles;

use eletric_vehicles;

# Full Schema: VIN (1-10),County,City,State,Postal Code,Model Year,Make,Model,Electric Vehicle Type,Clean Alternative Fuel Vehicle (CAFV) Eligibility,Electric Range,Base MSRP,Legislative District,DOL Vehicle ID,Vehicle Location,Electric Utility,2020 Census Tract

create external table if not exists Electric_Vehicle_Population_Data (
  vin string,
  county string,
  city string,
  state string,
  postal_code string,
  model_year string,
  make string,
  model string,
  type string
)
row format delimited
fields terminated by ','
lines terminated by '\n'
stored as textfile location 's3a://hive-data-emgs/eletric_vehicles/';
