## This view file is used to map zip codes to city and state

view: zip_to_city {
  sql_table_name: @{schema_name}.POSTAL_CODES_CAPITALS_CA_EU_US
  ;;

#######################
## Dimensions
#######################
  dimension: city_state {
    type: string
    sql: ${city} || ', ' || ${state} || ' ' || ${zipcode} ;;
    link: {
      label: "{{ city_state._value }} - Deep Dive"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/866?Postal%20Code={{ zipcode._value }}"
    }
    link: {
      label: "{{ city._value }}, {{ state._value }} - Deep Dive"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/866?City={{city._value}}&State={{state._value}}"
    }
    link: {
      label: "{{ city_state._value }} - Forecast"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/881?Postal%20Code={{ zipcode._value }}"
    }
    link: {
      label: "{{ city._value }}, {{ state._value }} - Forecast"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/881?City={{city._value}}&State={{state._value}}"
    }
    link: {
      label: "{{ city_state._value }} - 7 Day Anomalies"
      icon_url: "https://awsmp-logos.s3.amazonaws.com/0d11e4de-e61f-4383-825b-9bcd69598dac/62abb10670ce1f306d5147e144908f32.png"
      url: "/dashboards/889?City={{city._value}}&State={{state._value}}&Postal%20Code={{ zipcode._value }}"
    }
  }

  dimension: city {
    type: string
    sql: ${TABLE}.city ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: zipcode {
    type: zipcode
    sql: ${TABLE}.postal_code ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

#######################
## Hidden Fields
#######################
  dimension: country {
    hidden: yes
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }
  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
