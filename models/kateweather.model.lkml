connection: "bruce_snowflake_weathersource"

# include all the views
include: "/views/**/*.view"
include: "../*dashboard.lookml"

datagroup: kateweather_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: kateweather_default_datagroup

explore: history_day {}
