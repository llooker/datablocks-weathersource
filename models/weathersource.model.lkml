# Change connection to your own snowflake share connection name
connection: "@{connection_name}"

# include all the views
include: "/views/**/*.view"
include: "/dashboards/**/*.dashboard"

datagroup: weathersource_datagroup {
  sql_trigger: SELECT MAX(date_valid_std) FROM postcode.history_day_zips;;
  max_cache_age: "12 hour"
}

persist_with: weathersource_datagroup

# Use this explore to view historical weather by zip code for last 2 years
explore: history_day_zips {
  label: "Historical Data - ZIP Level"
  join: zip_to_city {
    type: left_outer
    relationship: many_to_one
    sql_on: ${history_day_zips.postal_code} = ${zip_to_city.zipcode} ;;
  }
}

# Use this explore to view forecasted weather by zip for next 7 days and climatology data by zip for current year
explore: forecast_day_zips {
  label: "Forecast Data - ZIP Level"
  join: zip_to_city {
    type: left_outer
    relationship: many_to_one
    sql_on: ${forecast_day_zips.postal_code} = ${zip_to_city.zipcode} ;;
  }
  join: climatology_day_zips {
    type: left_outer
    relationship: one_to_one
    sql_on: ${climatology_day_zips.postal_code} = ${forecast_day_zips.postal_code} AND
            ${forecast_day_zips.doy_std} = ${climatology_day_zips.doy_std};;
  }
}