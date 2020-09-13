- dashboard: zip_forecast
  title: Zip Forecast
  layout: newspaper
  elements:
  - title: Highest Temp
    name: Highest Temp
    model: weathersource
    explore: forecast_day_zips
    type: single_value
    fields: [forecast_day_zips.date_valid_std_date, forecast_day_zips.max_temp,
      forecast_day_zips.postal_code]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
      forecast_day_zips.max_temp: NOT NULL
    sorts: [forecast_day_zips.max_temp desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: red
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
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_fields: [forecast_day_zips.postal_code]
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
    row: 0
    col: 0
    width: 8
    height: 4
  - title: Max Temp Swing
    name: Max Temp Swing
    model: weathersource
    explore: forecast_day_zips
    type: single_value
    fields: [forecast_day_zips.date_valid_std_date, forecast_day_zips.postal_code,
      forecast_day_zips.max_temperature_swing]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
      forecast_day_zips.max_temperature_swing: NOT NULL
    sorts: [forecast_day_zips.max_temperature_swing desc]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [forecast_day_zips.postal_code]
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
    row: 0
    col: 8
    width: 8
    height: 4
  - title: Coldest Temp
    name: Coldest Temp
    model: weathersource
    explore: forecast_day_zips
    type: single_value
    fields: [forecast_day_zips.date_valid_std_date, forecast_day_zips.postal_code,
      forecast_day_zips.min_temp]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_zips.min_temp]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: blue
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
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
    row: 0
    col: 16
    width: 8
    height: 4
  - title: Total Snowfall
    name: Total Snowfall
    model: weathersource
    explore: forecast_day_zips
    type: looker_map
    fields: [forecast_day_zips.postal_code, forecast_day_zips.total_snow]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_zips.total_snow desc]
    limit: 500
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
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    series_types: {}
    defaults_version: 1
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
    row: 4
    col: 0
    width: 10
    height: 8
  - title: Total Rainfall
    name: Total Rainfall
    model: weathersource
    explore: forecast_day_zips
    type: looker_map
    fields: [forecast_day_zips.postal_code, forecast_day_zips.total_rain]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_zips.total_rain desc]
    limit: 500
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
    show_view_names: false
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    defaults_version: 1
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
    row: 12
    col: 0
    width: 10
    height: 8
  - title: Max / Min Temperature Forecast by Day
    name: Max / Min Temperature Forecast by Day
    model: weathersource
    explore: forecast_day_zips
    type: looker_line
    fields: [forecast_day_zips.date_valid_std_date, forecast_day_zips.max_temp,
      forecast_day_zips.min_temp]
    fill_fields: [forecast_day_zips.date_valid_std_date]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_zips.date_valid_std_date desc]
    limit: 500
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
    show_null_points: true
    interpolation: monotone
    series_colors:
      forecast_day_zips.max_temp: red
      forecast_day_zips.min_temp: blue
    defaults_version: 1
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
    row: 20
    col: 0
    width: 24
    height: 6
  - title: Avg Temp Swing
    name: Avg Temp Swing
    model: weathersource
    explore: forecast_day_zips
    type: looker_line
    fields: [forecast_day_zips.date_valid_std_date, forecast_day_zips.average_temperature_swing]
    fill_fields: [forecast_day_zips.date_valid_std_date]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_zips.date_valid_std_date desc]
    limit: 500
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
    show_null_points: true
    interpolation: monotone
    defaults_version: 1
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
    row: 12
    col: 10
    width: 14
    height: 8
  - title: Temp vs Humidity
    name: Temp vs Humidity
    model: weathersource
    explore: forecast_day_zips
    type: looker_scatter
    fields: [forecast_day_zips.date_valid_std_date, forecast_day_zips.average_humidity,
      forecast_day_zips.average_temp]
    fill_fields: [forecast_day_zips.date_valid_std_date]
    filters:
      forecast_day_zips.date_valid_std_date: after 1 days from now
    sorts: [forecast_day_zips.date_valid_std_date desc]
    limit: 500
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
    show_null_points: true
    y_axes: [{label: '', orientation: left, series: [{axisId: forecast_day_zips.average_temp,
            id: forecast_day_zips.average_temp, name: Average Temp},
          {axisId: forecast_day_zips.average_humidity, id: forecast_day_zips.average_humidity,
            name: Average Humidity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    interpolation: linear
    defaults_version: 1
    listen:
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: forecast_day_zips.postal_code
    row: 4
    col: 10
    width: 14
    height: 8
  filters:
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: weathersource
    explore: forecast_day_zips
    listens_to_filters: [State]
    field: zip_to_city.city
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: weathersource
    explore: forecast_day_zips
    listens_to_filters: [City]
    field: zip_to_city.state
  - name: Postal Code
    title: Postal Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: weathersource
    explore: forecast_day_zips
    listens_to_filters: [State, City]
    field: forecast_day_zips.postal_code
