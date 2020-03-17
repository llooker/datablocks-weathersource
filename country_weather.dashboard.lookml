- dashboard: country_weather_pulse
  title: Country Weather Pulse
  layout: newspaper
  elements:
  - title: Highest Recorded Temperature
    name: Highest Recorded Temperature
    model: fips_data
    explore: history_day
    type: single_value
    fields: [history_day.max_temp, county_fips_codes.location_name, history_day.fips_county_code]
    filters:
      county_fips_codes.location_name: "-EMPTY,-NULL"
    sorts: [history_day.max_temp desc]
    limit: 1
    custom_color_enabled: true
    custom_color: "#ff213d"
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [history_day.fips_county_code]
    listen:
      Date: history_day.date_date
    row: 12
    col: 19
    width: 5
    height: 6
  - title: Lowest Recorded Temperature
    name: Lowest Recorded Temperature
    model: fips_data
    explore: history_day
    type: single_value
    fields: [county_fips_codes.location_name, history_day.fips_county_code, history_day.min_temp]
    sorts: [history_day.min_temp]
    limit: 1
    custom_color_enabled: true
    custom_color: "#49f3ff"
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [history_day.fips_county_code]
    listen:
      Date: history_day.date_date
    row: 12
    col: 13
    width: 6
    height: 6
  - title: Most Rainfall
    name: Most Rainfall
    model: fips_data
    explore: history_day
    type: single_value
    fields: [history_day.total_rain, county_fips_codes.location_name, history_day.fips_county_code]
    sorts: [history_day.total_rain desc]
    limit: 1
    custom_color_enabled: true
    custom_color: "#1d25ff"
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [history_day.fips_county_code]
    listen:
      Date: history_day.date_date
    row: 0
    col: 13
    width: 6
    height: 6
  - title: Most Snowfall
    name: Most Snowfall
    model: fips_data
    explore: history_day
    type: single_value
    fields: [history_day.total_snow, county_fips_codes.location_name, history_day.fips_county_code]
    filters:
      history_day.total_snow: ">0"
    sorts: [history_day.total_snow desc]
    limit: 1
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [history_day.fips_county_code]
    listen:
      Date: history_day.date_date
    row: 6
    col: 13
    width: 6
    height: 6
  - name: Rain Summary
    type: text
    title_text: Rain Summary
    body_text: <img src="https://image.flaticon.com/icons/svg/1164/1164945.svg" width="100"
      height="100" class="btn-block"/>
    row: 0
    col: 8
    width: 5
    height: 6
  - name: Snow Summary
    type: text
    title_text: Snow Summary
    body_text: <img src="https://image.flaticon.com/icons/svg/2323/2323261.svg" width="100"
      height="100" class="btn-block"/>
    row: 6
    col: 8
    width: 5
    height: 6
  - name: Temperature Summary
    type: text
    title_text: Temperature Summary
    body_text: <img src="https://image.flaticon.com/icons/svg/1684/1684375.svg" width="100"
      height="100" class="btn-block"/>
    row: 12
    col: 8
    width: 5
    height: 6
  - title: Locations with Rain
    name: Locations with Rain
    model: fips_data
    explore: history_day
    type: single_value
    fields: [history_day.locations_with_rain]
    limit: 500
    custom_color_enabled: true
    custom_color: "#1d25ff"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen:
      Date: history_day.date_date
    row: 0
    col: 19
    width: 5
    height: 6
  - title: Locations with Snow
    name: Locations with Snow
    model: fips_data
    explore: history_day
    type: single_value
    fields: [history_day.locations_with_snow]
    limit: 500
    series_types: {}
    listen:
      Date: history_day.date_date
    row: 6
    col: 19
    width: 5
    height: 6
  - title: Total Rain by Fips County
    name: Total Rain by Fips County
    model: fips_data
    explore: history_day
    type: looker_map
    fields: [history_day.fips_county_code, history_day.total_rain]
    filters:
      history_day.total_rain: ">0"
    sorts: [history_day.total_rain desc]
    limit: 5000
    series_types: {}
    listen:
      Date: history_day.date_date
    row: 0
    col: 0
    width: 8
    height: 6
  - title: Total Snow by Fips County
    name: Total Snow by Fips County
    model: fips_data
    explore: history_day
    type: looker_map
    fields: [history_day.fips_county_code, history_day.total_snow]
    filters:
      history_day.total_snow: ">0"
    sorts: [history_day.total_snow desc]
    limit: 5000
    series_types: {}
    listen:
      Date: history_day.date_date
    row: 6
    col: 0
    width: 8
    height: 6
  - title: Average Temp by Fips County
    name: Average Temp by Fips County
    model: fips_data
    explore: history_day
    type: looker_map
    fields: [history_day.fips_county_code, history_day.average_temp]
    limit: 5000
    series_types: {}
    listen:
      Date: history_day.date_date
    row: 12
    col: 0
    width: 8
    height: 6
  - title: Average Humidity by Fips County
    name: Average Humidity by Fips County
    model: fips_data
    explore: history_day
    type: looker_map
    fields: [history_day.fips_county_code, history_day.average_humidity]
    limit: 5000
    series_types: {}
    listen:
      Date: history_day.date_date
    row: 18
    col: 0
    width: 8
    height: 6
  - name: Humidity Summary
    type: text
    title_text: Humidity Summary
    body_text: <img src="https://image.flaticon.com/icons/svg/1779/1779883.svg" width="100"
      height="100" class="btn-block"/>
    row: 18
    col: 8
    width: 5
    height: 6
  - title: Lowest Average Humidity
    name: Lowest Average Humidity
    model: fips_data
    explore: history_day
    type: single_value
    fields: [county_fips_codes.location_name, history_day.fips_county_code, history_day.average_humidity]
    sorts: [history_day.average_humidity]
    limit: 1
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [history_day.fips_county_code]
    listen:
      Date: history_day.date_date
    row: 18
    col: 13
    width: 6
    height: 6
  - title: Highest Average Humidity
    name: Highest Average Humidity
    model: fips_data
    explore: history_day
    type: single_value
    fields: [county_fips_codes.location_name, history_day.fips_county_code, history_day.average_humidity]
    sorts: [history_day.average_humidity desc]
    limit: 1
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    comparison_label: ''
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    hidden_fields: [history_day.fips_county_code]
    listen:
      Date: history_day.date_date
    row: 18
    col: 19
    width: 5
    height: 6
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: last 30 days
    allow_multiple_values: true
    required: false
    model: fips_data
    explore: history_day
    listens_to_filters: []
    field: history_day.date_date
