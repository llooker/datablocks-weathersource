view: climatology_day_looker_10000_zips {
  sql_table_name: "POSTCODE"."CLIMATOLOGY_DAY_LOOKER_10000_ZIPS"
    ;;

  dimension: avg_of__daily_avg_temperature_air_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_AVG_TEMPERATURE_AIR_F" ;;
  }
  dimension: std_of__daily_avg_temperature_air_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_AVG_TEMPERATURE_AIR_F" ;;
  }

  parameter: number_of_SD {
    view_label: "Number of Standard Deviations"
    allowed_value: { value: "1" }
    allowed_value: { value: "2" }
    allowed_value: { value: "3" }
    default_value: "1"
  }

  dimension: upper_limit {
    type: number
    sql: CASE
          WHEN {% parameter number_of_SD %} = '1' THEN ${avg_of__daily_avg_temperature_air_f} + ${std_of__daily_avg_temperature_air_f}
          WHEN {% parameter number_of_SD %} = '2' THEN ${avg_of__daily_avg_temperature_air_f} + ${std_of__daily_avg_temperature_air_f} * 2
          WHEN {% parameter number_of_SD %} = '3' THEN ${avg_of__daily_avg_temperature_air_f} + ${std_of__daily_avg_temperature_air_f} * 3
        END ;;
    label_from_parameter: number_of_SD
  }

  dimension: lower_limit {
    type: number
    sql: CASE
          WHEN {% parameter number_of_SD %} = '1' THEN ${avg_of__daily_avg_temperature_air_f} - ${std_of__daily_avg_temperature_air_f}
          WHEN {% parameter number_of_SD %} = '2' THEN ${avg_of__daily_avg_temperature_air_f} - ${std_of__daily_avg_temperature_air_f} * 2
          WHEN {% parameter number_of_SD %} = '3' THEN ${avg_of__daily_avg_temperature_air_f} - ${std_of__daily_avg_temperature_air_f} * 3
        END ;;
    label_from_parameter: number_of_SD
  }


  measure: one_sd_limit_air_temp {
    type: sum
    sql: ${upper_limit} ;;
  }

  measure: one_sd_limit_air_temp_minus {
    type: sum
    sql: ${lower_limit} ;;
  }

  measure: avg_daily_air_temp {
#     hidden: yes
    type: average
    sql: ${avg_of__daily_avg_temperature_air_f} ;;
  }

#   measure: osd_daily_aat_plus {
#     type: number
#     sql: ${one_sd_daily_avg_temp_air_plus} ;;
#   }
#
#   measure: osd_daily_aat_minus {
#     type: number
#     sql: ${one_sd_daily_avg_temp_air_minus} ;;
#   }

  dimension: avg_of__daily_avg_temperature_dewpoint_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_AVG_TEMPERATURE_DEWPOINT_F" ;;
  }
  dimension: avg_of__daily_avg_temperature_feelslike_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_AVG_TEMPERATURE_FEELSLIKE_F" ;;
  }
  dimension: avg_of__daily_avg_temperature_wetbulb_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_AVG_TEMPERATURE_WETBULB_F" ;;
  }

  dimension: avg_of__daily_max_temperature_air_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_MAX_TEMPERATURE_AIR_F" ;;
  }
  dimension: avg_of__daily_max_temperature_dewpoint_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_MAX_TEMPERATURE_DEWPOINT_F" ;;
  }
  dimension: avg_of__daily_max_temperature_feelslike_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_MAX_TEMPERATURE_FEELSLIKE_F" ;;
  }
  dimension: avg_of__daily_max_temperature_wetbulb_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_MAX_TEMPERATURE_WETBULB_F" ;;
  }

  dimension: avg_of__daily_min_temperature_air_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_MIN_TEMPERATURE_AIR_F" ;;
  }
  dimension: avg_of__daily_min_temperature_dewpoint_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_MIN_TEMPERATURE_DEWPOINT_F" ;;
  }
  dimension: avg_of__daily_min_temperature_feelslike_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_MIN_TEMPERATURE_FEELSLIKE_F" ;;
  }
  dimension: avg_of__daily_min_temperature_wetbulb_f {
    type: number
    sql: ${TABLE}."AVG_OF__DAILY_MIN_TEMPERATURE_WETBULB_F" ;;
  }

  dimension: std_of__daily_avg_temperature_dewpoint_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_AVG_TEMPERATURE_DEWPOINT_F" ;;
  }
  dimension: std_of__daily_avg_temperature_feelslike_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_AVG_TEMPERATURE_FEELSLIKE_F" ;;
  }
  dimension: std_of__daily_avg_temperature_wetbulb_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_AVG_TEMPERATURE_WETBULB_F" ;;
  }

  dimension: std_of__daily_max_temperature_air_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_MAX_TEMPERATURE_AIR_F" ;;
  }
  dimension: std_of__daily_max_temperature_dewpoint_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_MAX_TEMPERATURE_DEWPOINT_F" ;;
  }
  dimension: std_of__daily_max_temperature_feelslike_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_MAX_TEMPERATURE_FEELSLIKE_F" ;;
  }
  dimension: std_of__daily_max_temperature_wetbulb_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_MAX_TEMPERATURE_WETBULB_F" ;;
  }

  dimension: std_of__daily_min_temperature_air_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_MIN_TEMPERATURE_AIR_F" ;;
  }
  dimension: std_of__daily_min_temperature_dewpoint_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_MIN_TEMPERATURE_DEWPOINT_F" ;;
  }
  dimension: std_of__daily_min_temperature_feelslike_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_MIN_TEMPERATURE_FEELSLIKE_F" ;;
  }
  dimension: std_of__daily_min_temperature_wetbulb_f {
    type: number
    sql: ${TABLE}."STD_OF__DAILY_MIN_TEMPERATURE_WETBULB_F" ;;
  }

  # dimension: avg_of__daily_avg_cloud_cover_tot_pct {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_AVG_CLOUD_COVER_TOT_PCT" ;;
  # }
  # dimension: avg_of__daily_max_cloud_cover_tot_pct {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MAX_CLOUD_COVER_TOT_PCT" ;;
  # }

  # dimension: avg_of__daily_avg_humidity_relative_pct {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_AVG_HUMIDITY_RELATIVE_PCT" ;;
  # }
  # dimension: avg_of__daily_avg_humidity_specific_gpkg {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_AVG_HUMIDITY_SPECIFIC_GPKG" ;;
  # }

  # dimension: avg_of__daily_avg_pressure_mean_sea_level_mb {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_AVG_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  # }
  # dimension: avg_of__daily_avg_pressure_surface_mb {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_AVG_PRESSURE_SURFACE_MB" ;;
  # }
  # dimension: avg_of__daily_max_pressure_mean_sea_level_mb {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MAX_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  # }
  # dimension: avg_of__daily_max_pressure_surface_mb {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MAX_PRESSURE_SURFACE_MB" ;;
  # }

  # dimension: avg_of__daily_avg_radiation_solar_total_wpm2 {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_AVG_RADIATION_SOLAR_TOTAL_WPM2" ;;
  # }


  # dimension: avg_of__daily_avg_wind_speed_10_m_mph {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_AVG_WIND_SPEED_10M_MPH" ;;
  # }

  # dimension: avg_of__daily_max_humidity_relative_pct {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MAX_HUMIDITY_RELATIVE_PCT" ;;
  # }
  # dimension: avg_of__daily_max_humidity_specific_gpkg {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MAX_HUMIDITY_SPECIFIC_GPKG" ;;
  # }


  # dimension: avg_of__daily_max_radiation_solar_total_wpm2 {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MAX_RADIATION_SOLAR_TOTAL_WPM2" ;;
  # }
  # dimension: avg_of__daily_max_wind_speed_10_m_mph {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MAX_WIND_SPEED_10M_MPH" ;;
  # }

  # dimension: avg_of__daily_min_cloud_cover_tot_pct {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MIN_CLOUD_COVER_TOT_PCT" ;;
  # }

  # dimension: avg_of__daily_min_humidity_relative_pct {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MIN_HUMIDITY_RELATIVE_PCT" ;;
  # }
  # dimension: avg_of__daily_min_humidity_specific_gpkg {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MIN_HUMIDITY_SPECIFIC_GPKG" ;;
  # }

  # dimension: avg_of__daily_min_pressure_mean_sea_level_mb {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MIN_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  # }
  # dimension: avg_of__daily_min_pressure_surface_mb {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MIN_PRESSURE_SURFACE_MB" ;;
  # }

  # dimension: avg_of__daily_min_radiation_solar_total_wpm2 {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MIN_RADIATION_SOLAR_TOTAL_WPM2" ;;
  # }

  # dimension: avg_of__daily_min_wind_speed_10_m_mph {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_MIN_WIND_SPEED_10M_MPH" ;;
  # }

  # dimension: avg_of__daily_tot_radiation_solar_total_wpm2 {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__DAILY_TOT_RADIATION_SOLAR_TOTAL_WPM2" ;;
  # }

  # dimension: avg_of__pos_daily_snowdepth_in {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__POS_DAILY_SNOWDEPTH_IN" ;;
  # }

  # dimension: avg_of__pos_daily_tot_precipitation_in {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__POS_DAILY_TOT_PRECIPITATION_IN" ;;
  # }

  # dimension: avg_of__pos_daily_tot_snowfall_in {
  #   type: number
  #   sql: ${TABLE}."AVG_OF__POS_DAILY_TOT_SNOWFALL_IN" ;;
  # }

  # dimension: avg_vec_of__daily_avg_vec_wind_direction_100_m_deg {
  #   type: number
  #   sql: ${TABLE}."AVG_VEC_OF__DAILY_AVG_VEC_WIND_DIRECTION_100M_DEG" ;;
  # }

  # dimension: avg_vec_of__daily_avg_vec_wind_direction_10_m_deg {
  #   type: number
  #   sql: ${TABLE}."AVG_VEC_OF__DAILY_AVG_VEC_WIND_DIRECTION_10M_DEG" ;;
  # }

  # dimension: avg_vec_of__daily_avg_vec_wind_direction_80_m_deg {
  #   type: number
  #   sql: ${TABLE}."AVG_VEC_OF__DAILY_AVG_VEC_WIND_DIRECTION_80M_DEG" ;;
  # }

  # dimension: country {
  #   type: string
  #   map_layer_name: countries
  #   sql: ${TABLE}."COUNTRY" ;;
  # }

  dimension: doy_std {
    type: number
    sql: ${TABLE}."DOY_STD" ;;
  }

  # dimension: frq_of__daily_tot_precipitation_001_010_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__DAILY_TOT_PRECIPITATION_001_010_IN_PCT" ;;
  # }

  # dimension: frq_of__daily_tot_precipitation_010_025_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__DAILY_TOT_PRECIPITATION_010_025_IN_PCT" ;;
  # }

  # dimension: frq_of__daily_tot_precipitation_025_050_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__DAILY_TOT_PRECIPITATION_025_050_IN_PCT" ;;
  # }

  # dimension: frq_of__daily_tot_precipitation_050_100_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__DAILY_TOT_PRECIPITATION_050_100_IN_PCT" ;;
  # }

  # dimension: frq_of__daily_tot_precipitation_100_250_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__DAILY_TOT_PRECIPITATION_100_250_IN_PCT" ;;
  # }

  # dimension: frq_of__daily_tot_precipitation_250_500_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__DAILY_TOT_PRECIPITATION_250_500_IN_PCT" ;;
  # }

  # dimension: frq_of__daily_tot_precipitation_500_gtr_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__DAILY_TOT_PRECIPITATION_500_GTR_IN_PCT" ;;
  # }

  # dimension: frq_of__daily_tot_precipitation_zero_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__DAILY_TOT_PRECIPITATION_ZERO_IN_PCT" ;;
  # }

  # dimension: frq_of__pos_daily_tot_precipitation_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__POS_DAILY_TOT_PRECIPITATION_IN_PCT" ;;
  # }

  # dimension: frq_of__pos_daily_tot_snowfall_in_pct {
  #   type: number
  #   sql: ${TABLE}."FRQ_OF__POS_DAILY_TOT_SNOWFALL_IN_PCT" ;;
  # }

  # dimension: pct_frq_of__daily_tot_snowfall_001_010_in_pct {
  #   type: number
  #   sql: ${TABLE}."PCT_FRQ_OF__DAILY_TOT_SNOWFALL_001_010_IN_PCT" ;;
  # }

  # dimension: pct_frq_of__daily_tot_snowfall_010_025_in_pct {
  #   type: number
  #   sql: ${TABLE}."PCT_FRQ_OF__DAILY_TOT_SNOWFALL_010_025_IN_PCT" ;;
  # }

  # dimension: pct_frq_of__daily_tot_snowfall_025_050_in_pct {
  #   type: number
  #   sql: ${TABLE}."PCT_FRQ_OF__DAILY_TOT_SNOWFALL_025_050_IN_PCT" ;;
  # }

  # dimension: pct_frq_of__daily_tot_snowfall_050_100_in_pct {
  #   type: number
  #   sql: ${TABLE}."PCT_FRQ_OF__DAILY_TOT_SNOWFALL_050_100_IN_PCT" ;;
  # }

  # dimension: pct_frq_of__daily_tot_snowfall_100_150_in_pct {
  #   type: number
  #   sql: ${TABLE}."PCT_FRQ_OF__DAILY_TOT_SNOWFALL_100_150_IN_PCT" ;;
  # }

  # dimension: pct_frq_of__daily_tot_snowfall_150_250_in_pct {
  #   type: number
  #   sql: ${TABLE}."PCT_FRQ_OF__DAILY_TOT_SNOWFALL_150_250_IN_PCT" ;;
  # }

  # dimension: pct_frq_of__daily_tot_snowfall_250_gtr_in_pct {
  #   type: number
  #   sql: ${TABLE}."PCT_FRQ_OF__DAILY_TOT_SNOWFALL_250_GTR_IN_PCT" ;;
  # }

  # dimension: pct_frq_of__daily_tot_snowfall_zero_in_pct {
  #   type: number
  #   sql: ${TABLE}."PCT_FRQ_OF__DAILY_TOT_SNOWFALL_ZERO_IN_PCT" ;;
  # }

  dimension: postal_code {
    label: "Zip Code"
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  # dimension: std_of__daily_avg_cloud_cover_tot_pct {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_AVG_CLOUD_COVER_TOT_PCT" ;;
  # }

  # dimension: std_of__daily_avg_humidity_relative_pct {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_AVG_HUMIDITY_RELATIVE_PCT" ;;
  # }

  # dimension: std_of__daily_avg_humidity_specific_gpkg {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_AVG_HUMIDITY_SPECIFIC_GPKG" ;;
  # }

  # dimension: std_of__daily_avg_pressure_mean_sea_level_mb {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_AVG_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  # }

  # dimension: std_of__daily_avg_pressure_surface_mb {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_AVG_PRESSURE_SURFACE_MB" ;;
  # }

  # dimension: std_of__daily_avg_radiation_solar_total_wpm2 {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_AVG_RADIATION_SOLAR_TOTAL_WPM2" ;;
  # }


  # dimension: std_of__daily_avg_wind_speed_10_m_mph {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_AVG_WIND_SPEED_10M_MPH" ;;
  # }

  # dimension: std_of__daily_max_cloud_cover_tot_pct {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MAX_CLOUD_COVER_TOT_PCT" ;;
  # }

  # dimension: std_of__daily_max_humidity_relative_pct {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MAX_HUMIDITY_RELATIVE_PCT" ;;
  # }

  # dimension: std_of__daily_max_humidity_specific_gpkg {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MAX_HUMIDITY_SPECIFIC_GPKG" ;;
  # }

  # dimension: std_of__daily_max_pressure_mean_sea_level_mb {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MAX_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  # }

  # dimension: std_of__daily_max_pressure_surface_mb {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MAX_PRESSURE_SURFACE_MB" ;;
  # }

  # dimension: std_of__daily_max_radiation_solar_total_wpm2 {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MAX_RADIATION_SOLAR_TOTAL_WPM2" ;;
  # }


  # dimension: std_of__daily_max_wind_speed_10_m_mph {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MAX_WIND_SPEED_10M_MPH" ;;
  # }

  # dimension: std_of__daily_min_cloud_cover_tot_pct {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MIN_CLOUD_COVER_TOT_PCT" ;;
  # }

  # dimension: std_of__daily_min_humidity_relative_pct {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MIN_HUMIDITY_RELATIVE_PCT" ;;
  # }

  # dimension: std_of__daily_min_humidity_specific_gpkg {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MIN_HUMIDITY_SPECIFIC_GPKG" ;;
  # }

  # dimension: std_of__daily_min_pressure_mean_sea_level_mb {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MIN_PRESSURE_MEAN_SEA_LEVEL_MB" ;;
  # }

  # dimension: std_of__daily_min_pressure_surface_mb {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MIN_PRESSURE_SURFACE_MB" ;;
  # }

  # dimension: std_of__daily_min_radiation_solar_total_wpm2 {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MIN_RADIATION_SOLAR_TOTAL_WPM2" ;;
  # }


  # dimension: std_of__daily_min_wind_speed_10_m_mph {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_MIN_WIND_SPEED_10M_MPH" ;;
  # }

  # dimension: std_of__daily_tot_radiation_solar_total_wpm2 {
  #   type: number
  #   sql: ${TABLE}."STD_OF__DAILY_TOT_RADIATION_SOLAR_TOTAL_WPM2" ;;
  # }

  # dimension: std_of__pos_daily_snowdepth_in {
  #   type: number
  #   sql: ${TABLE}."STD_OF__POS_DAILY_SNOWDEPTH_IN" ;;
  # }

  # dimension: std_of__pos_daily_tot_precipitation_in {
  #   type: number
  #   sql: ${TABLE}."STD_OF__POS_DAILY_TOT_PRECIPITATION_IN" ;;
  # }

  # dimension: std_of__pos_daily_tot_snowfall_in {
  #   type: number
  #   sql: ${TABLE}."STD_OF__POS_DAILY_TOT_SNOWFALL_IN" ;;
  # }

  measure: count {
    type: count
    drill_fields: []
  }
}
