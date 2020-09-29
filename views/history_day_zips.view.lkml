view: history_day_zips {
  sql_table_name: @{schema_name}.history_day
    ;;

#######################
## Dimensions
#######################

## Averages
  dimension: avg_cloud_cover_tot_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_cloud_cover_tot_pct ;;
  }

  dimension: avg_humidity_relative_2_m_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_humidity_relative_2m_pct ;;
  }

  dimension: avg_humidity_specific_2_m_gpkg {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_humidity_specific_2m_gpkg ;;
  }

  dimension: avg_pressure_2_m_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_pressure_2m_mb ;;
  }

  dimension: avg_pressure_mean_sea_level_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_pressure_mean_sea_level_mb ;;
  }

  dimension: avg_pressure_tendency_2_m_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_pressure_tendency_2m_mb ;;
  }

  dimension: avg_radiation_solar_total_wpm2 {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_radiation_solar_total_wpm2 ;;
  }

  dimension: avg_temperature_air_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_temperature_air_2m_f ;;
  }

  dimension: avg_temperature_dewpoint_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_temperature_dewpoint_2m_f ;;
  }

  dimension: avg_temperature_feelslike_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_temperature_feelslike_2m_f ;;
  }

  dimension: avg_temperature_heatindex_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_temperature_heatindex_2m_f ;;
  }

  dimension: avg_temperature_wetbulb_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_temperature_wetbulb_2m_f ;;
  }

  dimension: avg_temperature_windchill_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_temperature_windchill_2m_f ;;
  }

  dimension: avg_wind_direction_100_m_deg {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_wind_direction_100m_deg ;;
  }

  dimension: avg_wind_direction_10_m_deg {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_wind_direction_10m_deg ;;
  }

  dimension: avg_wind_direction_80_m_deg {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_wind_direction_80m_deg ;;
  }

  dimension: avg_wind_speed_100_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_wind_speed_100m_mph ;;
  }

  dimension: avg_wind_speed_10_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_wind_speed_10m_mph ;;
  }

  dimension: avg_wind_speed_80_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.avg_wind_speed_80m_mph ;;
  }

## Max
  dimension: max_cloud_cover_tot_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.max_cloud_cover_tot_pct ;;
  }

  dimension: max_humidity_relative_2_m_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.max_humidity_relative_2m_pct ;;
  }

  dimension: max_humidity_specific_2_m_gpkg {
    hidden: yes
    type: number
    sql: ${TABLE}.max_humidity_specific_2m_gpkg ;;
  }

  dimension: max_pressure_2_m_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.max_pressure_2m_mb ;;
  }

  dimension: max_pressure_mean_sea_level_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.max_pressure_mean_sea_level_mb ;;
  }

  dimension: max_pressure_tendency_2_m_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.max_pressure_tendency_2m_mb ;;
  }

  dimension: max_radiation_solar_total_wpm2 {
    hidden: yes
    type: number
    sql: ${TABLE}.max_radiation_solar_total_wpm2 ;;
  }

  dimension: max_temperature_air_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.max_temperature_air_2m_f ;;
  }

  dimension: max_temperature_dewpoint_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.max_temperature_dewpoint_2m_f ;;
  }

  dimension: max_temperature_feelslike_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.max_temperature_feelslike_2m_f ;;
  }

  dimension: max_temperature_heatindex_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.max_temperature_heatindex_2m_f ;;
  }

  dimension: max_temperature_wetbulb_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.max_temperature_wetbulb_2m_f ;;
  }

  dimension: max_temperature_windchill_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.max_temperature_windchill_2m_f ;;
  }

  dimension: max_wind_speed_100_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.max_wind_speed_100m_mph ;;
  }

  dimension: max_wind_speed_10_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.max_wind_speed_10m_mph ;;
  }

  dimension: max_wind_speed_80_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.max_wind_speed_80m_mph ;;
  }

## Min
  dimension: min_cloud_cover_tot_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.min_cloud_cover_tot_pct ;;
  }

  dimension: min_humidity_relative_2_m_pct {
    hidden: yes
    type: number
    sql: ${TABLE}.min_humidity_relative_2m_pct ;;
  }

  dimension: min_humidity_specific_2_m_gpkg {
    hidden: yes
    type: number
    sql: ${TABLE}.min_humidity_specific_2m_gpkg ;;
  }

  dimension: min_pressure_2_m_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.min_pressure_2m_mb ;;
  }

  dimension: min_pressure_mean_sea_level_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.min_pressure_mean_sea_level_mb ;;
  }

  dimension: min_pressure_tendency_2_m_mb {
    hidden: yes
    type: number
    sql: ${TABLE}.min_pressure_tendency_2m_mb ;;
  }

  dimension: min_radiation_solar_total_wpm2 {
    hidden: yes
    type: number
    sql: ${TABLE}.min_radiation_solar_total_wpm2 ;;
  }

  dimension: min_temperature_air_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.min_temperature_air_2m_f ;;
  }

  dimension: min_temperature_dewpoint_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.min_temperature_dewpoint_2m_f ;;
  }

  dimension: min_temperature_feelslike_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.min_temperature_feelslike_2m_f ;;
  }

  dimension: min_temperature_heatindex_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.min_temperature_heatindex_2m_f ;;
  }

  dimension: min_temperature_wetbulb_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.min_temperature_wetbulb_2m_f ;;
  }

  dimension: min_temperature_windchill_2_m_f {
    hidden: yes
    type: number
    sql: ${TABLE}.min_temperature_windchill_2m_f ;;
  }

  dimension: min_wind_speed_100_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.min_wind_speed_100m_mph ;;
  }

  dimension: min_wind_speed_10_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.min_wind_speed_10m_mph ;;
  }

  dimension: min_wind_speed_80_m_mph {
    hidden: yes
    type: number
    sql: ${TABLE}.min_wind_speed_80m_mph ;;
  }

## Totals
  dimension: tot_precipitation_in {
    hidden: yes
    type: number
    sql: ${TABLE}.tot_precipitation_in ;;
  }

  dimension: tot_radiation_solar_total_wpm2 {
    hidden: yes
    type: number
    sql: ${TABLE}.tot_radiation_solar_total_wpm2 ;;
  }

  dimension: tot_snowdepth_in {
    hidden: yes
    type: number
    sql: ${TABLE}.tot_snowdepth_in ;;
  }

  dimension: tot_snowfall_in {
    hidden: yes
    type: number
    sql: ${TABLE}.tot_snowfall_in ;;
  }

#######################
## Derived Dimensions
#######################

  dimension: temperature_swing {
    hidden: yes
    type:  number
    sql: ${max_temperature_air_2_m_f} - ${min_temperature_air_2_m_f}  ;;
  }

  dimension: has_snowfall {
    type: yesno
    sql: ${tot_snowfall_in} > 0 ;;
  }

  dimension: has_rainfall {
    type: yesno
    sql: ${tot_precipitation_in} > 0 ;;
  }

#######################
## Date
#######################

  dimension_group: date_valid_std {
    label: ""
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
#     convert_tz: no
    datatype: date
    sql: ${TABLE}.date_valid_std ;;
  }

  dimension: doy_std {
    hidden: yes
    type: number
    sql: ${TABLE}.doy_std ;;
  }

#######################
## Location
#######################

  dimension: country {
    type: string
    hidden: yes
    sql: ${TABLE}.country ;;
  }

  dimension: postal_code {
    label: "Location"
    type: string
    sql: ${TABLE}.postal_code ;;
    map_layer_name: us_zipcode_tabulation_areas
    html: {{zip_to_city.city}}, {{zip_to_city.state}} {{value}} ;;
    link: {
      label: "{{ zip_to_city.city_state._value }} - Deep Dive"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/weathersource::zip_detail?Postal%20Code={{ value }}"
    }
    link: {
      label: "{{ zip_to_city.city._value }}, {{ zip_to_city.state._value }} - Deep Dive"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/weathersource::zip_detail?City={{zip_to_city.city._value}}&State={{zip_to_city.state._value}}"
    }
    link: {
      label: "{{ zip_to_city.city_state._value }} - Forecast"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/weathersource::zip_forecast?Postal%20Code={{ value }}"
    }
    link: {
      label: "{{ zip_to_city.city._value }}, {{ zip_to_city.state._value }} - Forecast"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/weathersource::zip_forecast?City={{zip_to_city.city._value}}&State={{zip_to_city.state._value}}"
    }
    link: {
      label: "{{ zip_to_city.city_state._value }} - 7 Day Anomalies"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/weathersource::zip_forecast_anomalies?City={{zip_to_city.city._value}}&State={{zip_to_city.state._value}}&Postal%20Code={{ value }}"
    }
  }

#######################
## Measures
#######################

  measure: count {
    type: count
    drill_fields: []
  }

  measure: total_snow {
    type:  sum
    sql: ${tot_snowfall_in} ;;
    value_format: "#,##0.00"
    drill_fields: [date_valid_std_date, drill_fields*, total_snow]
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
    drill_fields: [date_valid_std_date, drill_fields*, total_rain]
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
    drill_fields: [date_valid_std_date, drill_fields*, average_temperature_swing]
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

#######################
## Drills
#######################

  set: drill_fields {
    fields: [postal_code]
  }



}
