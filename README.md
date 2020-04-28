# Getting Started with Data Blocks

Check out our [**Blocks Directory**](https://looker.com/platform/blocks/directory#data) for a full list of data blocks and use cases

[**Start Modeling**](https://discourse.looker.com/t/data-block-data-block-setup-instructions-and-everything-in-between/5949) by reading through this discourse post.


### Adding LookML Files to your Looker Project

- Copy the LookML files from this repo [(or download here)](https://github.com/llooker/datablocks-weathersource/archive/master.zip)
- Add the files to your Looker project
- Change the `connection` parameter in the model file to your Snowflake share connection

Now you're ready to explore [Weather Source](https://weathersource.com/) data and combine with your other datasets!

This Looker block contains three explores, five dashbaords, and six different view files that can be used for analysis:

* Explores:
  * Historical Data - FIPS Level
  * Historical Data - ZIP Level
  * Forecast Data - Zip Level

* Dashboards:
  * Country Weather Pulse
  * State Detail
  * Zip Detail
  * Zip Forecast
  * Zip Anomaly

* View Files:
  * Lookup files:
    * county_fips_codes
    * zip_to_city

  * Data files:
    * climatology_day_looker_10000_zips
    * forecast_day_looker_10000_zips
    * history_day_looker_10000_zips
    * history_day

**history_day_looker_10000_zips:** This view file contains two years of historical weather data for 10,000 randomized zip codes throughout the United States. It includes various weather related fields around cloud cover, humidity, pressure, radiation, temperature, wind direction, and precipitation. Maximums, minimums, averages, and totals (for precipitation) for these fields (e.g. average temperate, max temperate, and min temperature for a given zip code for a given day). To aid in your analysis, Looker has already defined the following measures for you:

* total_snow: total snowfall in inches
* average_snow: average snowfall in inches
* total_rain: total rain in inches
* average_rain: average rain in inches
* average_temperature_swing: average temperate swing (max air temperature minus minimum air temperature)
* max_temperature_swing: max temperate swing (max air temperature minus minimum air temperature)
* min_temperature_swing: min temperate swing (max air temperature minus minimum air temperature)
* average_temp: average air temperature
* min_temp: minimum air temperature
* max_temp: maximum air temperature
* average_humidity: average relative humidity
* average_cloud_cover: average cloud cover
* locations_with_rain: number of locations that have had rainfall for a given date range (if no date range included, will count all the days that a location had rain)
* locations_with_snow: number of locations that have had snowfall for a given date range (if no date range included, will count all the days that a location had snow)

**forecast_day_looker_10000_zips:** This view file contains seven days of forecast weather data for 10,000 randomized zip codes throughout the United States. The fields are the same as the historical data weather fields.

* total_snow: total snowfall in inches
* average_snow: average snowfall in inches
* total_rain: total rain in inches
* average_rain: average rain in inches
* average_temperature_swing: average temperate swing (max air temperature minus minimum air temperature)
* max_temperature_swing: max temperate swing (max air temperature minus minimum air temperature)
* min_temperature_swing: min temperate swing (max air temperature minus minimum air temperature)
* average_temp: average air temperature
* min_temp: minimum air temperature
* max_temp: maximum air temperature
* average_humidity: average relative humidity
* average_cloud_cover: average cloud cover
* locations_with_rain: number of locations that predict to have rainfall for a given date range (if no date range included, will count all the days that a location is predicted to have rain)
* locations_with_snow: number of locations that predict to have snowfall for a given date range (if no date range included, will count all the days that a location is predicted to have snow)

**climatology_day_looker_10000_zips:**
