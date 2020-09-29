- dashboard: zip_detail
  title: Zip Detail
  layout: newspaper
  elements:
  - title: Total Snowfall by Postal Code
    name: Total Snowfall by Postal Code
    model: weathersource
    explore: history_day_zips
    type: looker_map
    fields: [history_day_zips.postal_code, history_day_zips.total_snow]
    sorts: [history_day_zips.total_snow desc]
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
      Date: history_day_zips.date_valid_std_date
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: history_day_zips.postal_code
    row: 7
    col: 0
    width: 10
    height: 9
  - title: Total Rainfall by Postal Code
    name: Total Rainfall by Postal Code
    model: weathersource
    explore: history_day_zips
    type: looker_map
    fields: [history_day_zips.postal_code, history_day_zips.total_rain]
    sorts: [history_day_zips.total_rain desc]
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
      Date: history_day_zips.date_valid_std_date
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: history_day_zips.postal_code
    row: 16
    col: 0
    width: 10
    height: 7
  - title: Highest Temp
    name: Highest Temp
    model: weathersource
    explore: history_day_zips
    type: single_value
    fields: [history_day_zips.postal_code, history_day_zips.max_temp,
      history_day_zips.date_valid_std_date, zip_to_city.city_state]
    sorts: [history_day_zips.max_temp desc]
    limit: 1
    column_limit: 50
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
    value_format: ''
    comparison_label: Highest Recorded Temperature
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    series_types: {}
    hidden_fields: [history_day_zips.postal_code, history_day_zips.date_valid_std_date]
    listen:
      Date: history_day_zips.date_valid_std_date
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: history_day_zips.postal_code
    row: 3
    col: 0
    width: 8
    height: 4
  - title: Coldest Temp
    name: Coldest Temp
    model: weathersource
    explore: history_day_zips
    type: single_value
    fields: [history_day_zips.postal_code, history_day_zips.date_valid_std_date,
      history_day_zips.min_temp, zip_to_city.city_state]
    sorts: [history_day_zips.min_temp]
    limit: 1
    column_limit: 50
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
    comparison_label: Lowest Recorded Temperature
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    series_types: {}
    hidden_fields: [history_day_zips.postal_code, history_day_zips.date_valid_std_date]
    listen:
      Date: history_day_zips.date_valid_std_date
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: history_day_zips.postal_code
    row: 3
    col: 16
    width: 8
    height: 4
  - title: Avg Temp Swing
    name: Avg Temp Swing
    model: weathersource
    explore: history_day_zips
    type: looker_line
    fields: [history_day_zips.date_valid_std_date, history_day_zips.average_temperature_swing]
    fill_fields: [history_day_zips.date_valid_std_date]
    sorts: [history_day_zips.date_valid_std_date desc]
    limit: 30
    column_limit: 50
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
    x_axis_label: Date
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: blue
    comparison_label: Highest Recorded Temperature
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: []
    listen:
      Date: history_day_zips.date_valid_std_date
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: history_day_zips.postal_code
    row: 16
    col: 10
    width: 14
    height: 7
  - title: Temp vs Humidity
    name: Temp vs Humidity
    model: weathersource
    explore: history_day_zips
    type: looker_scatter
    fields: [history_day_zips.date_valid_std_date, history_day_zips.average_humidity,
      history_day_zips.average_temp]
    fill_fields: [history_day_zips.date_valid_std_date]
    sorts: [history_day_zips.date_valid_std_date desc]
    limit: 30
    column_limit: 50
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
    y_axes: [{label: '', orientation: left, series: [{axisId: history_day_zips.average_temp,
            id: history_day_zips.average_temp, name: Average Temp}, {
            axisId: history_day_zips.average_humidity, id: history_day_zips.average_humidity,
            name: Average Humidity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
    x_axis_label: Date
    series_types: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: blue
    comparison_label: Highest Recorded Temperature
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
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
    hidden_fields: []
    interpolation: linear
    listen:
      Date: history_day_zips.date_valid_std_date
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: history_day_zips.postal_code
    row: 7
    col: 10
    width: 14
    height: 9
  - title: Max Temp Swing
    name: Max Temp Swing
    model: weathersource
    explore: history_day_zips
    type: single_value
    fields: [history_day_zips.max_temperature_swing, history_day_zips.date_valid_std_date,
      history_day_zips.postal_code, zip_to_city.city_state]
    sorts: [history_day_zips.max_temperature_swing desc]
    limit: 1
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: ''
    single_value_title: ''
    value_format: ''
    comparison_label: Maximum Temperature Swing
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: history_day_zips.average_temp,
            id: history_day_zips.average_temp, name: Average Temp}, {
            axisId: history_day_zips.average_humidity, id: history_day_zips.average_humidity,
            name: Average Humidity}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, type: linear}]
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
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
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
    hidden_fields: [history_day_zips.postal_code, history_day_zips.date_valid_std_date]
    interpolation: linear
    listen:
      Date: history_day_zips.date_valid_std_date
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: history_day_zips.postal_code
    row: 3
    col: 8
    width: 8
    height: 4
  - name: ''
    type: text
    title_text: ''
    body_text: |-
      <a type="button" target="_self"  href="/dashboards/weathersource::zip_detail?Date=30%20days" class="btn btn-primary btn-lg btn-block">Last 30 Days</a>

      <a type="button" target="_self"  href="/dashboards/weathersource::zip_detail?Date=7%20days" class="btn btn-primary btn-lg btn-block">Last 7 Days</a>
    row: 0
    col: 0
    width: 8
    height: 3
  - name: " (2)"
    type: text
    body_text: <a type="button" target="_blank"  href="https://weathersource.com/sales/"
      class="btn btn-primary btn-lg btn-block">Contact Weather Source</a>
    row: 0
    col: 8
    width: 8
    height: 3
  - name: " (3)"
    type: text
    body_text: |-
      <a type="button" target="_self"  href="/dashboards/weathersource::zip_forecast?Date=7%20days" class="btn btn-primary btn-lg btn-block">7 Day Forecast</a>

      <a type="button" target="_self"  href="/dashboards/weathersource::zip_forecast_anomalies?Date=7%20days" class="btn btn-primary btn-lg btn-block">7 Day Forecast Anomaly</a>
    row: 0
    col: 16
    width: 8
    height: 3
  - title: Max / Min Temperature by Day
    name: Max / Min Temperature by Day
    model: weathersource
    explore: history_day_zips
    type: looker_line
    fields: [history_day_zips.date_valid_std_date, history_day_zips.max_temp,
      history_day_zips.min_temp]
    fill_fields: [history_day_zips.date_valid_std_date]
    sorts: [history_day_zips.date_valid_std_date desc]
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
    show_null_points: false
    interpolation: monotone
    x_axis_label: Date
    series_types: {}
    series_colors:
      history_day_zips.max_temp: red
      history_day_zips.min_temp: blue
    defaults_version: 1
    listen:
      Date: history_day_zips.date_valid_std_date
      City: zip_to_city.city
      State: zip_to_city.state
      Postal Code: history_day_zips.postal_code
    row: 23
    col: 0
    width: 24
    height: 6
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 30 days
    allow_multiple_values: true
    required: false
  - name: City
    title: City
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: weathersource
    explore: history_day_zips
    listens_to_filters: [State]
    field: zip_to_city.city
  - name: State
    title: State
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: weathersource
    explore: history_day_zips
    listens_to_filters: [City]
    field: zip_to_city.state
  - name: Postal Code
    title: Postal Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: weathersource
    explore: history_day_zips
    listens_to_filters: [City, State]
    field: history_day_zips.postal_code
