- dashboard: state_detail
  title: State Detail
  layout: newspaper
  elements:
  - title: Total Snowfall by County
    name: Total Snowfall by County
    model: kateweather
    explore: history_day
    type: looker_map
    fields: [history_day.location, history_day.total_snow]
    sorts: [history_day.total_snow desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_latitude: 45.57427846261418
    map_longitude: -83.57282638549806
    map_zoom: 5
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    map_value_colors: [blue]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    listen:
      State: county_fips_codes.state_code
      Date Range: history_day.date_date
    row: 0
    col: 0
    width: 8
    height: 9
  - title: Total Rainfall by County
    name: Total Rainfall by County
    model: kateweather
    explore: history_day
    type: looker_map
    fields: [history_day.location, history_day.total_rain]
    sorts: [history_day.total_rain desc]
    limit: 500
    query_timezone: America/Los_Angeles
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_latitude: 36.51874190570346
    map_longitude: -84.70647811889648
    map_zoom: 5
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_view_names: false
    show_legend: true
    map_value_colors: [red]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    listen:
      State: county_fips_codes.state_code
      Date Range: history_day.date_date
    row: 9
    col: 0
    width: 8
    height: 8
  - title: Max and Min Temps
    name: Max and Min Temps
    model: kateweather
    explore: history_day
    type: looker_column
    fields: [history_day.max_temp, history_day.min_temp, history_day.date_date]
    fill_fields: [history_day.date_date]
    sorts: [history_day.date_date]
    limit: 500
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
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: time
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    map_position: custom
    map_latitude: 36.51874190570346
    map_longitude: -84.70647811889648
    map_zoom: 5
    listen:
      State: county_fips_codes.state_code
      Date Range: history_day.date_date
    row: 3
    col: 8
    width: 16
    height: 6
  - title: Humidity and Temperature
    name: Humidity and Temperature
    model: kateweather
    explore: history_day
    type: looker_scatter
    fields: [history_day.average_humidity, history_day.average_temp, history_day.date_date]
    fill_fields: [history_day.date_date]
    sorts: [history_day.date_valid_std_date desc]
    limit: 500
    query_timezone: America/Los_Angeles
    series_types: {}
    map_position: custom
    map_latitude: 36.51874190570346
    map_longitude: -84.70647811889648
    map_zoom: 5
    listen:
      State: county_fips_codes.state_code
      Date Range: history_day.date_date
    row: 9
    col: 8
    width: 16
    height: 8
  - title: Temperature and Rainfall
    name: Temperature and Rainfall
    model: kateweather
    explore: history_day
    type: looker_line
    fields: [history_day.date_month, history_day.average_temp, history_day.total_rain]
    fill_fields: [history_day.date_month]
    sorts: [history_day.date_month desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: history_day.average_temp,
            id: history_day.average_temp, name: Average Temp}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}, {
        label: !!null '', orientation: right, series: [{axisId: history_day.total_rain,
            id: history_day.total_rain, name: Total Rain}], showLabels: true, showValues: true,
        unpinAxis: false, tickDensity: default, type: linear}]
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
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#000000"}]
    show_null_points: true
    interpolation: linear
    listen:
      State: county_fips_codes.state_code
      Date Range: history_day.date_date
    row: 17
    col: 0
    width: 24
    height: 7
  - title: Highest Recorded Temperature
    name: Highest Recorded Temperature
    model: kateweather
    explore: history_day
    type: single_value
    fields: [history_day.max_temp, history_day.date_date]
    fill_fields: [history_day.date_date]
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
    listen:
      State: county_fips_codes.state_code
      Date Range: history_day.date_date
    row: 0
    col: 8
    width: 8
    height: 3
  - title: Lowest Recorded Temperature
    name: Lowest Recorded Temperature
    model: kateweather
    explore: history_day
    type: single_value
    fields: [history_day.max_temp, history_day.date_date]
    fill_fields: [history_day.date_date]
    sorts: [history_day.max_temp]
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
    listen:
      State: county_fips_codes.state_code
      Date Range: history_day.date_date
    row: 0
    col: 16
    width: 8
    height: 3
  filters:
  - name: State
    title: State
    type: field_filter
    default_value: CO
    allow_multiple_values: true
    required: false
    model: kateweather
    explore: history_day
    listens_to_filters: []
    field: county_fips_codes.state_code
  - name: Date Range
    title: Date Range
    type: date_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
