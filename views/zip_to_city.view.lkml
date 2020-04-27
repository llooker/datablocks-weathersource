## This view file is used to map zip codes to city and state

view: zip_to_city {
  sql_table_name: postcode.zip_code_database
  ;;

#######################
## Dimensions
#######################
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

  dimension: primary_city {
    type: string
    sql: ${TABLE}.primary_city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.zip ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension: acceptable_cities {
    type: string
    sql: ${TABLE}.acceptable_cities ;;
  }

  dimension: county {
    type: string
    sql: ${TABLE}.county ;;
  }

  dimension: decommissioned {
    type: yesno
    sql: ${TABLE}.decommissioned = 1 ;;
  }

  dimension: timezone {
    type: string
    sql: ${TABLE}.timezone ;;
  }

#######################
## Hidden Fields
#######################
  dimension: area_codes {
    hidden: yes
    type: string
    sql: ${TABLE}.area_codes ;;
  }

  dimension: country {
    hidden: yes
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: irs_estimated_population_2015 {
    hidden: yes
    type: string
    sql: ${TABLE}.irs_estimated_population_2015 ;;
  }

  dimension: type {
    hidden: yes
    type: string
    sql: ${TABLE}.type ;;
  }

  dimension: unacceptable_cities {
    hidden: yes
    type: string
    sql: ${TABLE}.unacceptable_cities ;;
  }

  dimension: world_region {
    hidden: yes
    type: string
    sql: ${TABLE}.world_region ;;
  }

  dimension: latitude {
    hidden: yes
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    hidden: yes
    type: number
    sql: ${TABLE}.longitude ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
