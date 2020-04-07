- dashboard: zip_forecast_anomalies
  title: Zip Forecast Anomalies
  layout: newspaper
  elements:
  - name: ''
    type: text
    body_text: <a  type="button" target="_blank"  href="https://weathersource.com/sales/"
      class="btn btn-primary btn-lg btn-block">Contact Weather Source</a>
    row: 9
    col: 0
    width: 5
    height: 5
  - title: Air Temperature Anomalies
    name: Air Temperature Anomalies
    model: fips_data
    explore: forecast_day_looker_10000_zips
    type: looker_line
    fields: [forecast_day_looker_10000_zips.postal_code, forecast_day_looker_10000_zips.date_valid_std_date,
      climatology_day_looker_10000_zips.avg_of__daily_avg_temperature_air_f, climatology_day_looker_10000_zips.std_of__daily_avg_temperature_air_f,
      forecast_day_looker_10000_zips.average_temp, climatology_day_looker_10000_zips.avg_daily_air_temp,
      climatology_day_looker_10000_zips.one_sd_limit_air_temp, climatology_day_looker_10000_zips.one_sd_limit_air_temp_minus]
    filters:
      forecast_day_looker_10000_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_looker_10000_zips.date_valid_std_date desc]
    limit: 500
    dynamic_fields: [{table_calculation: outlier, label: Outlier, expression: 'if(${forecast_day_looker_10000_zips.average_temp}>${climatology_day_looker_10000_zips.one_sd_limit_air_temp}
          OR ${forecast_day_looker_10000_zips.average_temp} < ${climatology_day_looker_10000_zips.one_sd_limit_air_temp_minus},${forecast_day_looker_10000_zips.average_temp},null)',
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
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    size_by_field: outlier
    series_types:
      outlier: scatter
    series_colors:
      climatology_day_looker_10000_zips.one_sd_limit_air_temp: green
      climatology_day_looker_10000_zips.one_sd_limit_air_temp_minus: green
      outlier: red
      forecast_day_looker_10000_zips.average_temp: blue
    series_point_styles: {}
    hidden_fields: [forecast_day_looker_10000_zips.postal_code, climatology_day_looker_10000_zips.avg_of__daily_avg_temperature_air_f,
      climatology_day_looker_10000_zips.std_of__daily_avg_temperature_air_f, climatology_day_looker_10000_zips.avg_daily_air_temp,
      climatology_day_looker_10000_zips.one_sd_daily_avg_temp_air_minus]
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
      City: zip_to_city.primary_city
      State: zip_to_city.state
      Postal Code: forecast_day_looker_10000_zips.postal_code
      Number of Standard Deviations: climatology_day_looker_10000_zips.number_of_SD
    row: 0
    col: 0
    width: 24
    height: 9
  filters:
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fips_data
    explore: forecast_day_looker_10000_zips
    listens_to_filters: [State]
    field: zip_to_city.primary_city
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: fips_data
    explore: forecast_day_looker_10000_zips
    listens_to_filters: [City]
    field: zip_to_city.state
  - name: Postal Code
    title: Postal Code
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: true
    model: fips_data
    explore: forecast_day_looker_10000_zips
    listens_to_filters: [State, City]
    field: forecast_day_looker_10000_zips.postal_code
  - name: Number of Standard Deviations
    title: Number of Standard Deviations
    type: field_filter
    default_value: '1'
    allow_multiple_values: true
    required: false
    model: fips_data
    explore: forecast_day_looker_10000_zips
    listens_to_filters: []
    field: climatology_day_looker_10000_zips.number_of_SD
