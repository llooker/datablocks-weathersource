connection: "bruce_snowflake_weathersource"

# include all the views
include: "/views/**/*.view"
include: "../*dashboard.lookml"

datagroup: kateweather_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kateweather_default_datagroup

explore: history_day {
  label: "Historical Data - FIPS Level"
  join: county_fips_codes {
    type: left_outer
    relationship: many_to_one
    sql_on: ${county_fips_codes.fips_code} = ${history_day.fips_county_code} ;;
  }
}

explore: history_day_looker_10000_zips {
  label: "Historical Data - ZIP Level"
  join: zip_to_city {
    type: left_outer
    relationship: many_to_one
    sql_on: ${history_day_looker_10000_zips.postal_code} = ${zip_to_city.zipcode} ;;
  }
}

explore: forecast_day_looker_10000_zips {
  label: "Forecast Data - ZIP Level"
  join: zip_to_city {
    type: left_outer
    relationship: many_to_one
    sql_on: ${forecast_day_looker_10000_zips.postal_code} = ${zip_to_city.zipcode} ;;
  }
  join: climatology_day_looker_10000_zips {
    type: left_outer
    relationship: one_to_one
    sql_on: ${climatology_day_looker_10000_zips.postal_code} = ${forecast_day_looker_10000_zips.postal_code} AND
            ${forecast_day_looker_10000_zips.doy_std} = ${climatology_day_looker_10000_zips.doy_std};;
  }
}
