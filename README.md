## What does this Looker Block do for me?
**(1) Quantify the Impact of Weather on Your Business** - Bring historical, future, and climatological weather data into your machine learning models and day-to-day analytics to help quantify the impact of weather on your operations, reduce waste, increase return on investment, fine-tune logistics, deploy strategic marketing, improve resource planning, and more.


**(2) Query Hyper-Local Weather and Climate Data** - From lat/lon coordinates to geographically bounded areas such as ZIP or Postal Code, designated market area, metropolitan statistical area, and more, this block gives you the ability to ask weather related questions for any point(s) of interest.

**(3) Analyze Zip Codes and See Anomalies** - Dive into a particular zip code to see past weather trends, a future forecast, and even find future weather anomalies based on climatological trends.

**A sampling of the analysis this Block can enable includes:**

- Retail & Food Service: Analyze weather’s effects on product sales, seasonal inventory, and footfall traffic.
- Finance: Leverage weather data to find alpha and generate optimum trade signals.
- Real Estate: Monitor weather’s impact on asset locations.
- Energy: Anticipate weather anomalies and potential changes in demand.
- Logistics: Identify weather events and perils that result in delivery delays.
- Healthcare: Understand weather’s influence on emergency room and clinic visits to optimize staffing.
- Agriculture: Quantify the impact of weather on planting schedules, crop yields, and overall field performance.
- And More: Nearly every industry has some degree of weather sensitivity.

## Implementation Instructions

#### Accessing the account share

#### Model and View Files

* Create a new project by hitting `New LookML Project` under `Develop`->`Manager LookML Projects` in your Looker instance.
* Under **Starting Point**, choose **Clone Public Git Repository**
* Enter **git://github.com/llooker/datablocks-weathersource.git**

## Customizations

* **Connection**: in the `weathersource` model file, change the connection name at the top to the name of your Snowflake share connection.

* **Dashboards**: you'll want to move to dashboards out of the LookML Dashboards folder.
  * Pick the folder that you want to move these dashboards too
  * Navigate to Zip Detail, Zip Forecast, and Zip Anomaly and make note of the dashboard number which can be found in the url (i.e. if the url was company.looker.com/dashboards/886 then **886** is the dashboard number)
  * Use these numbers to update the appropriate links in four locations (next step)

* **Links**: You will find links in these view files: ``forecast_day_looker_10000_zips``, ``history_day_looker_10000_zips``, ``zip_to_city``, ``county_fips_codes``. These will need to updated to reflect the new dashboard s.
  * Dashboard IDs are the digits that immediately follow `mycompany.looker.com/dashboards/`.
  * Once you copy over the dashboards into a folder, click into each one and grab the ID (for example, if you view a dashboard and the URL is `mycompany.looker.com/dashboards/45` then the dashboard ID is **45**)
  * Search for `link` in all of the files. Under the `url` parameter of each link, change the dashboard ID (number) to reflect your dashboard IDs.
    * If the label ends in `- Deep Dive`, the dashboard ID should be for the `Zip Detail` dashboard
    * If the label ends in `- Forecast`, the dashboard ID should be for the `Zip Forecast` dashboard
    * If the label ends in `- Anomaly`, the dashboard ID should be for the `Zip Anomaly` dashboard

## Weather Source Data Structure

* Historical, Forecasted, and Climatalogical data is updated daily. Hisortical and Forecasted data contain a variety of weather metrics including cloud cover, humidity, pressure, radiation, temperature, wind direction, and precipitation. Maximums, minimums, averages, and totals (for precipitation) are included for these fields (e.g. average temperate, max temperate, and min temperature for a given zip code for a given day).

* Climatological data contains information that allows you to see how the current weather compares to historical weather patterns using standard deviations and averages.

* To aid in your analysis, Looker has already defined the below measures (aggregates) for the this block. These measures are available for both historical and forecasted data. Measures outside of these will need to be created by the user.

  - **total_snow:** total snowfall in inches
  - **average_snow:** average snowfall in inches
  - **total_rain:** total rain in inches
  - **average_rain:** average rain in inches
  - **average_temperature_swing:** average temperate swing (max air temperature minus minimum air temperature)
  - **max_temperature_swing:** max temperate swing (max air temperature minus minimum air temperature)
  - **min_temperature_swing:** min temperate swing (max air temperature minus minimum air temperature)
  - **average_temp:** average air temperature
  - **min_temp:** minimum air temperature
  - **max_temp:** maximum air temperature
  - **average_humidity:** average relative humidity
  - **average_cloud_cover:** average cloud cover
  - **locations_with_rain:** number of locations that have had rainfall for a given date range (if no date range included, will count all the days that a location had rain)
  - **locations_with_snow:** number of locations that have had snowfall for a given date range (if no date range included, will count all the days that a location had snow)

## Block Structure

* ``weathersource`` contains all join logic to build out the relevant explores: Historical Data - FIPS Level, Historical Data - ZIP Level, and Forecast Data - ZIP Level.

* ``climatology_day_looker_10000_zips``: contains all of the dimensions and measures for climatological zip code data. Many of the dimensions are hidden using the ``hidden: yes`` parameter. This is done to create a more intuitive explore.
* ``forecast_day_looker_10000_zips``: contains all of the dimensions and measures for forecasted zip code data (seven day forecast). Many of the dimensions are hidden using the ``hidden: yes`` parameter. This is done to create a more intuitive explore.
* ``history_day_looker_10000_zips``: contains all of the dimensions and measures for historical zip code data (two years of data). Many of the dimensions are hidden using the ``hidden: yes`` parameter. This is done to create a more intuitive explore.
* ``zip_to_city``: this view file is used to map zip codes to particular cities. It is joined with the following view files: ``climatology_day_looker_10000_zips``, ``forecast_day_looker_10000_zips``, ``history_day_looker_10000_zips``
* ``zip_detail``: this dashboard allows a user to see a high level summary for a particular zip code for the last 30 days (default). You can click on any zip code on the map to drill down further or use the filter options. You can also link out to the zip forecast and zip anomaly dashboards from here to see the forecast for that particular zip code or see upcoming weather anomalies.
* ``zip_forecast``: this dashboard allows a user to see the seven day forecast for a particular zip code.
* ``zip_anomaly``: this dashboard shows the upcoming weather anomalies. It requires a zip code before it will populate with data and is usually reached by linking from the zip detail of zip forecast dashboard


## What if I find an error? Suggestions for improvements?

Great! Blocks were designed for continuous improvement through the help of the entire Looker community, and we'd love your input. To log an error or improvement recommendations, simply create a "New Issue" in the corresponding [Github repo for this Block](https://github.com/llooker/weather_source/issues). Please be as detailed as possible in your explanation, and we'll address it as quick as we can.
