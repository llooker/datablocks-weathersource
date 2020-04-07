view: zip_to_city {
  sql_table_name: WEATHERSOURCE_FIPS.FIPS.ZIP_TO_CITY ;;


  dimension: acceptable_cities {
    type: string
    sql: ${TABLE}."ACCEPTABLE_CITIES" ;;
  }

  dimension: area_codes {
    type: string
    sql: ${TABLE}."AREA_CODES" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}."COUNTY" ;;
  }

  dimension: decommissioned {
    type: yesno
    sql: ${TABLE}."DECOMMISSIONED" ;;
  }

  dimension: irs_estimated_population_2015 {
    type: string
    sql: ${TABLE}."IRS_ESTIMATED_POPULATION_2015" ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}."LATITUDE" ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}."LONGITUDE" ;;
  }

  dimension: primary_city {
    type: string
    sql: ${TABLE}."PRIMARY_CITY" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: city_state {
    type: string
    sql: ${primary_city} || ', ' || ${state} || ' ' || ${zipcode} ;;
        link: {
      label: "{{ city_state._value }} - Deep Dive"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/866?Postal%20Code={{ zipcode._value }}"
    }
    link: {
      label: "{{ primary_city._value }}, {{ state._value }} - Deep Dive"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/866?City={{primary_city._value}}&State={{state._value}}"
    }
    link: {
      label: "{{ city_state._value }} - Forecast"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/881?Postal%20Code={{ zipcode._value }}"
    }
    link: {
      label: "{{ primary_city._value }}, {{ state._value }} - Forecast"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/881?City={{primary_city._value}}&State={{state._value}}"
    }
   link: {
      label: "{{ city_state._value }} - 7 Day Anomalies"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/889?City={{primary_city._value}}&State={{state._value}}&Postal%20Code={{ zipcode._value }}"
    }

    }

  dimension: timezone {
    type: string
    sql: ${TABLE}."TIMEZONE" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: unacceptable_cities {
    type: string
    sql: ${TABLE}."UNACCEPTABLE_CITIES" ;;
  }

  dimension: world_region {
    type: string
    sql: ${TABLE}."WORLD_REGION" ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}."ZIPCODE" ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
