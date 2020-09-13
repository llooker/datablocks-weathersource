- dashboard: zip_forecast_anomalies
  title: Zip Forecast Anomalies
  layout: newspaper
  elements:
  - name: ''
    type: text
    body_text: <a  type="button" target="_blank"  href="https://weathersource.com/sales/"
      class="btn btn-primary btn-lg btn-block">Contact Weather Source</a>
    row: 6
    col: 0
    width: 6
    height: 3
  - name: <b><font size="4">How to use this dashboard</font></b>
    type: text
    title_text: <b><font size="4">How to use this dashboard</font></b>
    body_text: |-
      If you've navigated to this page from a folder and the dashboard is **not** filtered by zip code, please add a zip code and then hit **run**.

      If you've navigated to this page from one of the links on the **Zip Detail** dashboard, no further action is required.
    row: 2
    col: 0
    width: 6
    height: 4
  - title: Air Temperature Anomalies
    name: Air Temperature Anomalies
    model: weathersource
    explore: forecast_day_zips
    type: looker_line
    fields: [forecast_day_zips.postal_code, forecast_day_zips.date_valid_std_date,
      climatology_day_zips.avg_of_daily_avg_temperature_air_f, climatology_day_zips.std_of_daily_avg_temperature_air_f,
      forecast_day_zips.average_temp,
      climatology_day_zips.air_temp_plus_std_dev, climatology_day_zips.air_temp_minus_std_dev]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_zips.date_valid_std_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: outlier, label: Outlier, expression: 'if(${forecast_day_zips.average_temp}>${climatology_day_zips.air_temp_plus_std_dev}
          OR ${forecast_day_zips.average_temp} < ${climatology_day_zips.air_temp_minus_std_dev},${forecast_day_zips.average_temp},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: lower_bound, label: Lower Bound,
        expression: "${climatology_day_zips.air_temp_minus_std_dev}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: mid_area, label: Mid Area, expression: "${climatology_day_zips.air_temp_plus_std_dev}\
          \ - ${climatology_day_zips.air_temp_minus_std_dev}", value_format: !!null '',
        value_format_name: !!null '', _kind_hint: measure, _type_hint: number}, {
        table_calculation: upper_bound, label: Upper bound, expression: "${climatology_day_zips.air_temp_plus_std_dev}",
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    size_by_field: outlier
    hidden_series: []
    font_size: 10px
    series_types:
      outlier: scatter
    series_colors:
      climatology_day_zips.air_temp_plus_std_dev: green
      climatology_day_zips.air_temp_minus_std_dev: green
      outlier: red
      forecast_day_zips.average_temp: blue
      lower_bound: transparent
      upper_bound: transparent
      mid_area: "#72D16D"
    series_labels:
      mid_area: Historical Average
      forecast_day_zips.average_temp: Average Forecast Temperature
    series_point_styles: {}
    label_color: [blue, transparent, transparent, transparent, transparent]
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [forecast_day_zips.postal_code, climatology_day_zips.avg_of_daily_avg_temperature_air_f,
      climatology_day_zips.std_of_daily_avg_temperature_air_f,
      climatology_day_zips.one_sd_daily_avg_temp_air_minus, upper_bound,
      mid_area, lower_bound]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
      Number of Standard Deviations: climatology_day_zips.number_of_SD
    row: 0
    col: 6
    width: 18
    height: 9
  - title: Humidity Anomalies
    name: Humidity Anomalies
    model: weathersource
    explore: forecast_day_zips
    type: looker_line
    fields: [forecast_day_zips.postal_code, forecast_day_zips.date_valid_std_date,
      forecast_day_zips.average_humidity, climatology_day_zips.humidity_plus_std_dev,
      climatology_day_zips.humidity_minus_std_dev]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_zips.date_valid_std_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{table_calculation: outlier, label: Outlier, expression: 'if(${forecast_day_zips.average_humidity}>${climatology_day_zips.humidity_plus_std_dev}
          OR ${forecast_day_zips.average_humidity} < ${climatology_day_zips.humidity_minus_std_dev},${forecast_day_zips.average_humidity},null)',
        value_format: !!null '', value_format_name: !!null '', _kind_hint: measure,
        _type_hint: number}, {table_calculation: lower_bound, label: Lower Bound,
        expression: "${climatology_day_zips.air_temp_minus_std_dev}",
        value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}, {table_calculation: mid_area,
        label: Mid Area, expression: "${climatology_day_zips.air_temp_plus_std_dev}\
          \ - ${climatology_day_zips.air_temp_minus_std_dev}", value_format: !!null '',
        value_format_name: !!null '', is_disabled: true, _kind_hint: dimension, _type_hint: number},
      {table_calculation: upper_bound, label: Upper bound, expression: "${climatology_day_zips.air_temp_plus_std_dev}",
        value_format: !!null '', value_format_name: !!null '', is_disabled: true,
        _kind_hint: dimension, _type_hint: 'null'}]
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    size_by_field: outlier
    hidden_series: []
    font_size: 10px
    series_types:
      outlier: scatter
    series_colors:
      climatology_day_zips.air_temp_plus_std_dev: green
      climatology_day_zips.air_temp_minus_std_dev: green
      outlier: red
      forecast_day_zips.average_temp: blue
      lower_bound: transparent
      upper_bound: transparent
      mid_area: "#72D16D"
      forecast_day_zips.average_humidity: blue
      climatology_day_zips.humidity_plus_std_dev: green
      climatology_day_zips.humidity_minus_std_dev: green
    series_labels:
      mid_area: Historical Average
      forecast_day_zips.average_temp: Average Forecast Temperature
    series_point_styles: {}
    label_color: [blue, transparent, transparent, transparent, transparent]
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [forecast_day_zips.postal_code, climatology_day_zips.one_sd_daily_avg_temp_air_minus]
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
      Number of Standard Deviations: climatology_day_zips.number_of_SD
    row: 9
    col: 0
    width: 24
    height: 8
  - title: Untitled
    name: Untitled
    model: weathersource
    explore: forecast_day_zips
    type: single_value
    fields: [forecast_day_zips.postal_code]
    sorts: [forecast_day_zips.postal_code]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 6
    height: 2
  filters:
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    model: weathersource
    explore: forecast_day_zips
    listens_to_filters: [State]
    field: zip_to_city.city
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    model: weathersource
    explore: forecast_day_zips
    listens_to_filters: [City]
    field: zip_to_city.state
  - name: Postal Code
    title: Postal Code
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    model: weathersource
    explore: forecast_day_zips
    listens_to_filters: [State, City]
    field: forecast_day_zips.postal_code
  - name: Number of Standard Deviations
    title: Number of Standard Deviations
    type: field_filter
    default_value: '1'
    allow_multiple_values: false
    required: true
    model: weathersource
    explore: forecast_day_zips
    listens_to_filters: []
    field: climatology_day_zips.number_of_SD
