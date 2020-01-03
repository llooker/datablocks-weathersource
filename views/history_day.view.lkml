view: history_day {
  sql_table_name: WEATHERSOURCE.COUNTY.HISTORY_DAY ;;


  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: fips_county_code {
    type: string
    sql: ${TABLE}."FIPS_CODE" ;;
  }

  dimension: location {
    type: string
    sql: ${TABLE}."FIPS_CODE" ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE_VALID_STD" ;;
  }

  dimension: day_of_year{
    type: number
    sql: ${TABLE}."DOY_STD" ;;
  }

  dimension: avg_cloud_cover_tot_pct {
    type: number
    sql: ${TABLE}."AVG_CLOUD_COVER_TOT_PCT" ;;
  }

  dimension: avg_humidity_relative_2_m_pct {
    group_label: "Avg Humidity"
    type: number
    sql: ${TABLE}."AVG_HUMIDITY_RELATIVE_2M_PCT" ;;
  }

  dimension: avg_humidity_specific_2_m_gpkg {
    group_label: "Avg Humidity"
    type: number
    sql: ${TABLE}."AVG_HUMIDITY_SPECIFIC_2M_GPKG" ;;
  }

  dimension: avg_pressure_2_m_mb {
    group_label: "Avg Air Pressure"
    type: number
    sql: ${TABLE}."AVG_PRESSURE_2M_MB" ;;
  }

  dimension: avg_pressure_mean_sea_level_mb {
    group_label: "Avg Air Pressure"
    type: number
    sql: ${TABLE}."AVG_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  }

  dimension: avg_pressure_tendency_2_m_mb {
    group_label: "Avg Air Pressure"
    type: number
    sql: ${TABLE}."AVG_PRESSURE_TENDENCY_2M_MB" ;;
  }

  dimension: avg_radiation_solar_total_wpm2 {
    type: number
    sql: ${TABLE}."AVG_RADIATION_SOLAR_TOTAL_WPM2" ;;
  }

  dimension: avg_temperature_air_2_m_f {
    group_label: "Avg Temperature"
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_AIR_2M_F" ;;
  }

  dimension: avg_temperature_dewpoint_2_m_f {
    group_label: "Avg Temperature"
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_DEWPOINT_2M_F" ;;
  }

  dimension: avg_temperature_feelslike_2_m_f {
    group_label: "Avg Temperature"
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_FEELSLIKE_2M_F" ;;
  }

  dimension: avg_temperature_heatindex_2_m_f {
    group_label: "Avg Temperature"
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_HEATINDEX_2M_F" ;;
  }

  dimension: avg_temperature_wetbulb_2_m_f {
    group_label: "Avg Temperature"
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_WETBULB_2M_F" ;;
  }

  dimension: avg_temperature_windchill_2_m_f {
    group_label: "Avg Temperature"
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_WINDCHILL_2M_F" ;;
  }

  dimension: avg_wind_direction_100_m_deg {
    group_label: "Avg Wind Direction"
    type: number
    sql: ${TABLE}."AVG_WIND_DIRECTION_100M_DEG" ;;
  }

  dimension: avg_wind_direction_10_m_deg {
    group_label: "Avg Wind Direction"
    type: number
    sql: ${TABLE}."AVG_WIND_DIRECTION_10M_DEG" ;;
  }

  dimension: avg_wind_direction_80_m_deg {
    group_label: "Avg Wind Direction"
    type: number
    sql: ${TABLE}."AVG_WIND_DIRECTION_80M_DEG" ;;
  }

  dimension: avg_wind_speed_100_m_mph {
    group_label: "Avg Wind Speed"
    type: number
    sql: ${TABLE}."AVG_WIND_SPEED_100M_MPH" ;;
  }

  dimension: avg_wind_speed_10_m_mph {
    group_label: "Avg Wind Speed"
    type: number
    sql: ${TABLE}."AVG_WIND_SPEED_10M_MPH" ;;
  }

  dimension: avg_wind_speed_80_m_mph {
    group_label: "Avg Wind Speed"
    type: number
    sql: ${TABLE}."AVG_WIND_SPEED_80M_MPH" ;;
  }

  dimension: max_cloud_cover_tot_pct {
    type: number
    sql: ${TABLE}."MAX_CLOUD_COVER_TOT_PCT" ;;
  }

  dimension: max_humidity_relative_2_m_pct {
    group_label: "Max Humidity"
    type: number
    sql: ${TABLE}."MAX_HUMIDITY_RELATIVE_2M_PCT" ;;
  }

  dimension: max_humidity_specific_2_m_gpkg {
    group_label: "Max Humidity"
    type: number
    sql: ${TABLE}."MAX_HUMIDITY_SPECIFIC_2M_GPKG" ;;
  }

  dimension: max_pressure_2_m_mb {
    group_label: "Max Air Pressure"
    type: number
    sql: ${TABLE}."MAX_PRESSURE_2M_MB" ;;
  }

  dimension: max_pressure_mean_sea_level_mb {
    group_label: "Max Air Pressure"
    type: number
    sql: ${TABLE}."MAX_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  }

  dimension: max_pressure_tendency_2_m_mb {
    group_label: "Max Air Pressure"
    type: number
    sql: ${TABLE}."MAX_PRESSURE_TENDENCY_2M_MB" ;;
  }

  dimension: max_radiation_solar_total_wpm2 {
    type: number
    sql: ${TABLE}."MAX_RADIATION_SOLAR_TOTAL_WPM2" ;;
  }

  dimension: max_temperature_air_2_m_f {
    group_label: "Max Temperature"
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_AIR_2M_F" ;;
  }

  dimension: max_temperature_dewpoint_2_m_f {
    group_label: "Max Temperature"
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_DEWPOINT_2M_F" ;;
  }

  dimension: max_temperature_feelslike_2_m_f {
    group_label: "Max Temperature"
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_FEELSLIKE_2M_F" ;;
  }

  dimension: max_temperature_heatindex_2_m_f {
    group_label: "Max Temperature"
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_HEATINDEX_2M_F" ;;
  }

  dimension: max_temperature_wetbulb_2_m_f {
     group_label: "Max Temperature"
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_WETBULB_2M_F" ;;
  }

  dimension: max_temperature_windchill_2_m_f {
     group_label: "Max Temperature"
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_WINDCHILL_2M_F" ;;
  }

  dimension: max_wind_speed_100_m_mph {
    group_label: "Max Wind Speed"
    type: number
    sql: ${TABLE}."MAX_WIND_SPEED_100M_MPH" ;;
  }

  dimension: max_wind_speed_10_m_mph {
    group_label: "Max Wind Speed"
    type: number
    sql: ${TABLE}."MAX_WIND_SPEED_10M_MPH" ;;
  }

  dimension: max_wind_speed_80_m_mph {
    group_label: "Max Wind Speed"
    type: number
    sql: ${TABLE}."MAX_WIND_SPEED_80M_MPH" ;;
  }

  dimension: min_cloud_cover_tot_pct {
    type: number
    sql: ${TABLE}."MIN_CLOUD_COVER_TOT_PCT" ;;
  }

  dimension: min_humidity_relative_2_m_pct {
    group_label: "Min Humidity"
    type: number
    sql: ${TABLE}."MIN_HUMIDITY_RELATIVE_2M_PCT" ;;
  }

  dimension: min_humidity_specific_2_m_gpkg {
    group_label: "Min Humidity"
    type: number
    sql: ${TABLE}."MIN_HUMIDITY_SPECIFIC_2M_GPKG" ;;
  }

  dimension: min_pressure_2_m_mb {
    group_label: "Min Air Pressure"
    type: number
    sql: ${TABLE}."MIN_PRESSURE_2M_MB" ;;
  }

  dimension: min_pressure_mean_sea_level_mb {
    group_label: "Min Air Pressure"
    type: number
    sql: ${TABLE}."MIN_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  }

  dimension: min_pressure_tendency_2_m_mb {
    group_label: "Min Air Pressure"
    type: number
    sql: ${TABLE}."MIN_PRESSURE_TENDENCY_2M_MB" ;;
  }

  dimension: min_radiation_solar_total_wpm2 {
    hidden: yes
    type: number
    sql: ${TABLE}."MIN_RADIATION_SOLAR_TOTAL_WPM2" ;;
  }

  dimension: min_temperature_air_2_m_f {
    group_label: "Min Temperature"
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_AIR_2M_F" ;;
  }

  dimension: min_temperature_dewpoint_2_m_f {
    group_label: "Min Temperature"
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_DEWPOINT_2M_F" ;;
  }

  dimension: min_temperature_feelslike_2_m_f {
    group_label: "Min Temperature"
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_FEELSLIKE_2M_F" ;;
  }

  dimension: min_temperature_heatindex_2_m_f {
    group_label: "Min Temperature"
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_HEATINDEX_2M_F" ;;
  }

  dimension: min_temperature_wetbulb_2_m_f {
    group_label: "Min Temperature"
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_WETBULB_2M_F" ;;
  }

  dimension: min_temperature_windchill_2_m_f {
    group_label: "Min Temperature"
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_WINDCHILL_2M_F" ;;
  }

  dimension: min_wind_speed_100_m_mph {
    group_label: "Min Wind Speed"
    type: number
    sql: ${TABLE}."MIN_WIND_SPEED_100M_MPH" ;;
  }

  dimension: min_wind_speed_10_m_mph {
    group_label: "Min Wind Speed"
    type: number
    sql: ${TABLE}."MIN_WIND_SPEED_10M_MPH" ;;
  }

  dimension: min_wind_speed_80_m_mph {
    group_label: "Min Wind Speed"
    type: number
    sql: ${TABLE}."MIN_WIND_SPEED_80M_MPH" ;;
  }

  dimension: tot_precipitation_in {
    type: number
    sql: ${TABLE}."TOT_PRECIPITATION_IN" ;;
  }

  dimension: has_rainfall {
    type: yesno
    sql: ${tot_precipitation_in} > 0 ;;
  }

  dimension: tot_radiation_solar_total_wpm2 {
    type: number
    sql: ${TABLE}."TOT_RADIATION_SOLAR_TOTAL_WPM2" ;;
  }

  dimension: tot_snowdepth_in {
    type: number
    sql: ${TABLE}."TOT_SNOWDEPTH_IN" ;;
  }

  dimension: tot_snowfall_in {
    type: number
    sql: ${TABLE}."TOT_SNOWFALL_IN" ;;
  }

  dimension: has_snowfall {
    type: yesno
    sql: ${tot_snowfall_in} > 0 ;;
  }

  # temperature extremes
  dimension: temperature_swing {
    type:  number
    sql: ${max_temperature_heatindex_2_m_f} - ${min_temperature_heatindex_2_m_f}  ;;
  }

#   dimension: temp_group {
#     case: {
#       when: {
#         sql:  ${avg_temperature_heatindex_2_m_f} < 0 ;;
#         label: "cold"
#       }
#       when: {
#         sql:  ${avg_temperature_heatindex_2_m_f} < 0 ;;
#         label: "cold"
#       }
#       when: {
#         sql:  ${avg_temperature_heatindex_2_m_f} < 0 ;;
#         label: "cold"
#       }
#       when: {
#         sql:  ${avg_temperature_heatindex_2_m_f} < 0 ;;
#         label: "cold"
#       }
#       # Possibly more when statements
#       else: "hot"
#     }
#     }


  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_snow {
    type:  sum
    sql: ${tot_snowfall_in} ;;
    value_format: "#,000.00"
    }

  measure: average_snow {
    type: average
    sql: ${tot_snowfall_in} ;;
    value_format: "#,000.00"
    }

  measure: total_rain {
    type:  sum
    sql: ${tot_precipitation_in} ;;
    value_format: "#,000.00"
    }

  measure: average_rain {
    type: average
    sql: ${tot_precipitation_in} ;;
    value_format: "#,000.00"
  }

  measure: average_temperature_swing {
    type: average
    sql: ${temperature_swing} ;;
  }

  measure: average_temp {
    type: average
    sql: ${avg_temperature_heatindex_2_m_f} ;;
  }

  measure: min_temp {
    type:  min
    sql:  ${min_temperature_heatindex_2_m_f} ;;
  }

  measure: max_temp {
    type:  max
    sql:  ${min_temperature_heatindex_2_m_f} ;;
  }

  measure: average_humidity {
    type: average
    sql: ${avg_humidity_relative_2_m_pct} ;;
  }

  measure: average_cloud_cover {
    type: average
    sql: ${avg_cloud_cover_tot_pct} ;;
  }

  measure: locations_with_rain {
    type: count
    filters: {
      field: has_rainfall
      value: "yes"
    }
  }
# measure: total_days_with_rainfall {
#   type: count_distinct
#   filters: {
#     field: has_rainfall
#     value: "yes"
#   }




}
