view: forecast_day_looker_10000_zips {
  sql_table_name: "POSTCODE"."FORECAST_DAY_LOOKER_10000_ZIPS"
    ;;

  dimension: avg_cloud_cover_tot_pct {
    type: number
    sql: ${TABLE}."AVG_CLOUD_COVER_TOT_PCT" ;;
  }

  dimension: avg_humidity_relative_2_m_pct {
    type: number
    sql: ${TABLE}."AVG_HUMIDITY_RELATIVE_2M_PCT" ;;
  }

  dimension: avg_humidity_specific_2_m_gpkg {
    type: number
    sql: ${TABLE}."AVG_HUMIDITY_SPECIFIC_2M_GPKG" ;;
  }

  dimension: avg_pressure_2_m_mb {
    type: number
    sql: ${TABLE}."AVG_PRESSURE_2M_MB" ;;
  }

  dimension: temperature_swing {
    type:  number
    sql: ${max_temperature_air_2_m_f} - ${min_temperature_air_2_m_f}  ;;
  }

  dimension: avg_pressure_mean_sea_level_mb {
    type: number
    sql: ${TABLE}."AVG_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  }

  dimension: avg_radiation_solar_total_wpm2 {
    type: number
    sql: ${TABLE}."AVG_RADIATION_SOLAR_TOTAL_WPM2" ;;
  }

  dimension: avg_temperature_air_2_m_f {
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_AIR_2M_F" ;;
  }

  dimension: avg_temperature_dewpoint_2_m_f {
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_DEWPOINT_2M_F" ;;
  }

  dimension: avg_temperature_feelslike_2_m_f {
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_FEELSLIKE_2M_F" ;;
  }

  dimension: avg_temperature_heatindex_2_m_f {
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_HEATINDEX_2M_F" ;;
  }

  dimension: avg_temperature_wetbulb_2_m_f {
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_WETBULB_2M_F" ;;
  }

  dimension: avg_temperature_windchill_2_m_f {
    type: number
    sql: ${TABLE}."AVG_TEMPERATURE_WINDCHILL_2M_F" ;;
  }

  dimension: avg_wind_direction_100_m_deg {
    type: number
    sql: ${TABLE}."AVG_WIND_DIRECTION_100M_DEG" ;;
  }

  dimension: avg_wind_direction_10_m_deg {
    type: number
    sql: ${TABLE}."AVG_WIND_DIRECTION_10M_DEG" ;;
  }

  dimension: avg_wind_direction_80_m_deg {
    type: number
    sql: ${TABLE}."AVG_WIND_DIRECTION_80M_DEG" ;;
  }

  dimension: avg_wind_speed_100_m_mph {
    type: number
    sql: ${TABLE}."AVG_WIND_SPEED_100M_MPH" ;;
  }

  dimension: avg_wind_speed_10_m_mph {
    type: number
    sql: ${TABLE}."AVG_WIND_SPEED_10M_MPH" ;;
  }

  dimension: avg_wind_speed_80_m_mph {
    type: number
    sql: ${TABLE}."AVG_WIND_SPEED_80M_MPH" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension_group: date_valid_std {
    label: ""
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      day_of_year,
      year
    ]
    # convert_tz: no
    datatype: date
    sql: ${TABLE}."DATE_VALID_STD" ;;
  }



  dimension: doy_std {
    type: number
    sql: ${TABLE}."DOY_STD" ;;
  }

  dimension: max_cloud_cover_tot_pct {
    type: number
    sql: ${TABLE}."MAX_CLOUD_COVER_TOT_PCT" ;;
  }

  dimension: max_humidity_relative_2_m_pct {
    type: number
    sql: ${TABLE}."MAX_HUMIDITY_RELATIVE_2M_PCT" ;;
  }

  dimension: max_humidity_specific_2_m_gpkg {
    type: number
    sql: ${TABLE}."MAX_HUMIDITY_SPECIFIC_2M_GPKG" ;;
  }

  dimension: max_pressure_2_m_mb {
    type: number
    sql: ${TABLE}."MAX_PRESSURE_2M_MB" ;;
  }

  dimension: max_pressure_mean_sea_level_mb {
    type: number
    sql: ${TABLE}."MAX_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  }

  dimension: max_radiation_solar_total_wpm2 {
    type: number
    sql: ${TABLE}."MAX_RADIATION_SOLAR_TOTAL_WPM2" ;;
  }

  dimension: max_temperature_air_2_m_f {
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_AIR_2M_F" ;;
  }

  dimension: max_temperature_dewpoint_2_m_f {
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_DEWPOINT_2M_F" ;;
  }

  dimension: max_temperature_feelslike_2_m_f {
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_FEELSLIKE_2M_F" ;;
  }

  dimension: max_temperature_heatindex_2_m_f {
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_HEATINDEX_2M_F" ;;
  }

  dimension: max_temperature_wetbulb_2_m_f {
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_WETBULB_2M_F" ;;
  }

  dimension: max_temperature_windchill_2_m_f {
    type: number
    sql: ${TABLE}."MAX_TEMPERATURE_WINDCHILL_2M_F" ;;
  }

  dimension: max_wind_speed_100_m_mph {
    type: number
    sql: ${TABLE}."MAX_WIND_SPEED_100M_MPH" ;;
  }

  dimension: max_wind_speed_10_m_mph {
    type: number
    sql: ${TABLE}."MAX_WIND_SPEED_10M_MPH" ;;
  }

  dimension: max_wind_speed_80_m_mph {
    type: number
    sql: ${TABLE}."MAX_WIND_SPEED_80M_MPH" ;;
  }

  dimension: min_cloud_cover_tot_pct {
    type: number
    sql: ${TABLE}."MIN_CLOUD_COVER_TOT_PCT" ;;
  }

  dimension: min_humidity_relative_2_m_pct {
    type: number
    sql: ${TABLE}."MIN_HUMIDITY_RELATIVE_2M_PCT" ;;
  }

  dimension: min_humidity_specific_2_m_gpkg {
    type: number
    sql: ${TABLE}."MIN_HUMIDITY_SPECIFIC_2M_GPKG" ;;
  }

  dimension: min_pressure_2_m_mb {
    type: number
    sql: ${TABLE}."MIN_PRESSURE_2M_MB" ;;
  }

  dimension: min_pressure_mean_sea_level_mb {
    type: number
    sql: ${TABLE}."MIN_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  }

  dimension: min_radiation_solar_total_wpm2 {
    type: number
    sql: ${TABLE}."MIN_RADIATION_SOLAR_TOTAL_WPM2" ;;
  }

  dimension: min_temperature_air_2_m_f {
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_AIR_2M_F" ;;
  }

  dimension: min_temperature_dewpoint_2_m_f {
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_DEWPOINT_2M_F" ;;
  }

  dimension: min_temperature_feelslike_2_m_f {
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_FEELSLIKE_2M_F" ;;
  }

  dimension: min_temperature_heatindex_2_m_f {
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_HEATINDEX_2M_F" ;;
  }

  dimension: min_temperature_wetbulb_2_m_f {
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_WETBULB_2M_F" ;;
  }

  dimension: min_temperature_windchill_2_m_f {
    type: number
    sql: ${TABLE}."MIN_TEMPERATURE_WINDCHILL_2M_F" ;;
  }

  dimension: min_wind_speed_100_m_mph {
    type: number
    sql: ${TABLE}."MIN_WIND_SPEED_100M_MPH" ;;
  }

  dimension: min_wind_speed_10_m_mph {
    type: number
    sql: ${TABLE}."MIN_WIND_SPEED_10M_MPH" ;;
  }

  dimension: min_wind_speed_80_m_mph {
    type: number
    sql: ${TABLE}."MIN_WIND_SPEED_80M_MPH" ;;
  }

  dimension: postal_code {
    label: "Location"
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
    map_layer_name: us_zipcode_tabulation_areas
    html: {{zip_to_city.primary_city._value }}, {{zip_to_city.state._value }} {{value}} ;;
    link: {
      label: "{{ zip_to_city.city_state._value }} - Deep Dive"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/866?Postal%20Code={{ value }}"
    }
    link: {
      label: "{{ zip_to_city.primary_city._value }}, {{ zip_to_city.state._value }} - Deep Dive"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/866?City={{zip_to_city.primary_city._value}}&State={{zip_to_city.state._value}}"
    }
    link: {
      label: "{{ zip_to_city.city_state._value }} - Forecast"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/881?Postal%20Code={{ value }}"
    }
    link: {
      label: "{{ zip_to_city.primary_city._value }}, {{ zip_to_city.state._value }} - Forecast"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/881?City={{zip_to_city.primary_city._value}}&State={{zip_to_city.state._value}}"
    }
    link: {
      label: "{{ zip_to_city.city_state._value }} - 7 Day Anomalies"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/889?City={{zip_to_city.primary_city._value}}&State={{zip_to_city.state._value}}&Postal%20Code={{ value }}"
    }
  }


  dimension: probability_of_precipitation_pct {
    type: number
    sql: ${TABLE}."PROBABILITY_OF_PRECIPITATION_PCT" ;;
  }

  dimension: probability_of_snow_pct {
    type: number
    sql: ${TABLE}."PROBABILITY_OF_SNOW_PCT" ;;
  }

  dimension_group: time_init_utc {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."TIME_INIT_UTC" ;;
  }

  dimension: tot_precipitation_in {
    type: number
    sql: ${TABLE}."TOT_PRECIPITATION_IN" ;;
  }

  dimension: tot_radiation_solar_total_wpm2 {
    type: number
    sql: ${TABLE}."TOT_RADIATION_SOLAR_TOTAL_WPM2" ;;
  }

  dimension: tot_snowfall_in {
    type: number
    sql: ${TABLE}."TOT_SNOWFALL_IN" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_snow {
    type:  sum
    sql: ${tot_snowfall_in} ;;
    value_format: "#,##0.00"
    drill_fields: [date_valid_std_date, drill_fields*, tot_snowfall_in]
  }

  measure: average_snow {
    type: average
    sql: ${tot_snowfall_in} ;;
    value_format: "#,##0.00"
  }

  measure: total_rain {
    type:  sum
    sql: ${tot_precipitation_in} ;;
    value_format: "#,##0.00"
    drill_fields: [date_valid_std_date, drill_fields*, tot_precipitation_in]
  }

  measure: average_rain {
    type: average
    sql: ${tot_precipitation_in} ;;
    value_format: "#,##0.00"
  }

  measure: average_temperature_swing {
    type: average
    sql: ${temperature_swing} ;;
    value_format_name: decimal_1
    drill_fields: [drill_fields*, temperature_swing]
  }

  measure: max_temperature_swing {
    type: max
    sql: ${temperature_swing} ;;
    value_format_name: decimal_1
    drill_fields: [date_valid_std_date, drill_fields*, max_temperature_swing]
  }

  measure: min_temperature_swing {
    type: min
    sql: ${temperature_swing} ;;
    value_format_name: decimal_1
  }

  measure: average_temp {
    type: average
    sql: ${avg_temperature_air_2_m_f} ;;
  }

  measure: min_temp {
    type:  min
    sql:  ${min_temperature_air_2_m_f} ;;
    value_format: "0"
    drill_fields: [date_valid_std_date, drill_fields*, min_temp]
  }

  measure: max_temp {
    type:  max
    sql: ${max_temperature_air_2_m_f} ;;
    value_format: "0"
    drill_fields: [date_valid_std_date, drill_fields*, max_temp]
  }

  measure: average_humidity {
    type: average
    sql: ${avg_humidity_relative_2_m_pct} ;;
    value_format: "0"
  }

  measure: average_cloud_cover {
    type: average
    sql: ${avg_cloud_cover_tot_pct} ;;
  }

  measure: locations_with_rain {
    type: count_distinct
    sql: ${postal_code} ;;
    filters: {
      field: has_rainfall
      value: "yes"
    }
    drill_fields: [drill_fields*, total_rain]
  }

  measure: locations_with_snow {
    type: count_distinct
    sql: ${postal_code} ;;
    filters: {
      field: has_snowfall
      value: "yes"
    }
    drill_fields: [drill_fields*, total_snow]
  }

  dimension: has_snowfall {
    type: yesno
    sql: ${tot_snowfall_in} > 0 ;;
  }

  set: drill_fields {
    fields: [postal_code]
  }

  dimension: has_rainfall {
    type: yesno
    sql: ${tot_precipitation_in} > 0 ;;
  }

}
