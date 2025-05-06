- dashboard: azure_summary
  title: AZURE Summary
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: YTD Costs
    name: YTD Costs
    model: azure_billing_block
    explore: azure_billing
    type: single_value
    fields: [azure_billing.total_pre_tax_cost, azure_billing.period_selected]
    filters:
      azure_billing.period: Year
      azure_billing.period_selected: "-NULL"
    sorts: [azure_billing.period_selected desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${azure_billing.total_pre_tax_cost}/offset(${azure_billing.total_pre_tax_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#00A2ED"
    single_value_title: YTD Costs
    value_format: '[>=1000000]$0.0,,"M";$0.0,"K"'
    conditional_formatting: [{type: not equal to, value: -999, background_color: "#00A2ED",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 2
    col: 0
    width: 4
    height: 2
  - name: "<b>SPEND TO DATE</b>"
    type: text
    title_text: "<b>SPEND TO DATE</b>"
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 2
  - title: QTD Costs
    name: QTD Costs
    model: azure_billing_block
    explore: azure_billing
    type: single_value
    fields: [azure_billing.total_pre_tax_cost, azure_billing.period_selected]
    filters:
      azure_billing.period: Quarter
      azure_billing.period_selected: "-NULL"
    sorts: [azure_billing.period_selected desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${azure_billing.total_pre_tax_cost}/offset(${azure_billing.total_pre_tax_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#00A2ED"
    single_value_title: QTD Costs
    value_format: '[>=1000000]$0.0,,"M";$0.0,"K"'
    conditional_formatting: [{type: not equal to, value: -999, background_color: "#00A2ED",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 4
    col: 0
    width: 4
    height: 2
  - title: MTD Costs
    name: MTD Costs
    model: azure_billing_block
    explore: azure_billing
    type: single_value
    fields: [azure_billing.total_pre_tax_cost, azure_billing.period_selected]
    filters:
      azure_billing.period: Month
      azure_billing.period_selected: "-NULL"
    sorts: [azure_billing.period_selected desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${azure_billing.total_pre_tax_cost}/offset(${azure_billing.total_pre_tax_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#00A2ED"
    single_value_title: MTD Costs
    value_format: '[>=1000000]$0.0,,"M";$0.0,"K"'
    conditional_formatting: [{type: not equal to, value: -999, background_color: "#00A2ED",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 6
    col: 0
    width: 4
    height: 2
  - title: WTD Costs
    name: WTD Costs
    model: azure_billing_block
    explore: azure_billing
    type: single_value
    fields: [azure_billing.total_pre_tax_cost, azure_billing.period_selected]
    filters:
      azure_billing.period: Week
      azure_billing.period_selected: "-NULL"
    sorts: [azure_billing.period_selected desc]
    limit: 500
    column_limit: 50
    dynamic_fields: [{_kind_hint: measure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: "${azure_billing.total_pre_tax_cost}/offset(${azure_billing.total_pre_tax_cost},1)-1",
        label: Change, value_format: !!null '', value_format_name: percent_1}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
    custom_color: "#00A2ED"
    single_value_title: WTD Costs
    value_format: '[>=1000000]$0.0,,"M";$0.0,"K"'
    conditional_formatting: [{type: not equal to, value: -999, background_color: "#00A2ED",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 8
    col: 0
    width: 4
    height: 2
  - title: YEAR OVER YEAR SPEND
    name: YEAR OVER YEAR SPEND
    model: azure_billing_block
    explore: azure_billing
    type: looker_line
    fields: [azure_billing.total_pre_tax_cost, azure_billing.usage_date_time_year,
      azure_billing.usage_date_time_month_name]
    pivots: [azure_billing.usage_date_time_year]
    filters:
      azure_billing.currency: USD
      azure_billing.usage_date_time_month: before 0 months from now
      azure_billing.usage_date_time_year: 3 years ago for 3 years,1 years
      azure_billing.total_pre_tax_cost: NOT NULL
    sorts: [azure_billing.usage_date_time_year, azure_billing.usage_date_time_month_name]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
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
    color_application:
      collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
      custom:
        id: d5dc5c69-681e-c501-2edd-fb26ebddff5a
        label: Custom
        type: discrete
        colors:
        - "#00A2ED"
        - "#002d7f"
        - "#3399ff"
        - "#c6e2ff"
        - "#ffa500"
        - "#ffdb99"
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: azure_billing.total_pre_tax_cost,
            id: 2019 - azure_billing.total_pre_tax_cost, name: '2019'}, {axisId: azure_billing.total_pre_tax_cost,
            id: 2020 - azure_billing.total_pre_tax_cost, name: '2020'}, {axisId: azure_billing.total_pre_tax_cost,
            id: 2021 - azure_billing.total_pre_tax_cost, name: '2021'}], showLabels: true,
        showValues: true, valueFormat: '[>=1000000]$0.0,,"M";$0,"K"', unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    series_types: {}
    series_colors:
      2019 - azure_billing.total_pre_tax_cost: "#ffa500"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: true
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#00A2ED"
    single_value_title: YTD Costs
    value_format: '[>=1000000]$0.0,,"M";$0.0,"K"'
    conditional_formatting: [{type: not equal to, value: -999, background_color: "#00A2ED",
        font_color: "#FFF", color_application: {collection_id: google, palette_id: google-diverging-0},
        bold: false, italic: false, strikethrough: false, fields: !!null ''}]
    defaults_version: 1
    listen:
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 2
    col: 4
    width: 20
    height: 8
  - title: TOP BILLED RESOURCES
    name: TOP BILLED RESOURCES
    model: azure_billing_block
    explore: azure_billing
    type: looker_waterfall
    fields: [azure_billing.total_pre_tax_cost, azure_billing.resource_group]
    sorts: [azure_billing.total_pre_tax_cost desc]
    limit: 10
    dynamic_fields: [{_kind_hint: measure, table_calculation: total_cost, _type_hint: number,
        category: table_calculation, expression: "${azure_billing.total_pre_tax_cost}",
        label: Total Cost, value_format: '[>=1000000]$0.0,,"M";$0.0,"K"', value_format_name: !!null ''}]
    up_color: "#00A2ED"
    down_color: "#EA4335"
    total_color: "#9AA0A6"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: false
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_gridlines: false
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    label_color: [white]
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: [azure_billing.total_pre_tax_cost]
    listen:
      Usage Date: azure_billing.usage_date_time_date
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 12
    col: 0
    width: 24
    height: 8
  - name: "<b>COST BREAKDOWN</b>"
    type: text
    title_text: "<b>COST BREAKDOWN</b>"
    subtitle_text: ''
    body_text: ''
    row: 10
    col: 0
    width: 24
    height: 2
  - title: RESOURCE GROUP
    name: RESOURCE GROUP
    model: azure_billing_block
    explore: azure_billing
    type: looker_grid
    fields: [azure_billing.resource_group, azure_billing.total_pre_tax_cost, azure_billing.period_selected]
    pivots: [azure_billing.period_selected]
    filters:
      azure_billing.period: Quarter
      azure_billing.period_selected: "-NULL"
    sorts: [azure_billing.total_pre_tax_cost desc 0, azure_billing.period_selected]
    limit: 10
    dynamic_fields: [{_kind_hint: supermeasure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: 'pivot_index(${azure_billing.total_pre_tax_cost},
          2)/pivot_index(${azure_billing.total_pre_tax_cost}, 1)-1', label: Change,
        value_format: !!null '', value_format_name: percent_1}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
      palette_id: e7303a54-e53e-4cf0-abc9-2f175c1128e0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths: {}
    series_cell_visualizations:
      azure_billing.total_pre_tax_cost:
        is_active: true
        palette:
          palette_id: f34e59c8-efe0-5e31-dc2e-d78156323ccb
          collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
          custom_colors:
          - "#c6e2ff"
          - "#3399ff"
          - "#002d7f"
      change:
        is_active: false
    series_text_format:
      azure_billing.period_selected: {}
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 592616d0-58e4-4968-9030-928ef38b7b50,
          palette_id: 721299c7-f114-43fc-926f-5bf0462bbfca}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    up_color: "#00A2ED"
    down_color: "#EA4335"
    total_color: "#9AA0A6"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: false
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_gridlines: false
    label_color: [white]
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen:
      Usage Date: azure_billing.usage_date_time_date
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 20
    col: 0
    width: 12
    height: 6
  - title: METER CATEGORY
    name: METER CATEGORY
    model: azure_billing_block
    explore: azure_billing
    type: looker_grid
    fields: [azure_billing.total_pre_tax_cost, azure_billing.period_selected, azure_billing.meter_category]
    pivots: [azure_billing.period_selected]
    filters:
      azure_billing.period: Quarter
      azure_billing.period_selected: "-NULL"
    sorts: [azure_billing.total_pre_tax_cost desc 0, azure_billing.period_selected]
    limit: 10
    dynamic_fields: [{_kind_hint: supermeasure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: 'pivot_index(${azure_billing.total_pre_tax_cost},
          2)/pivot_index(${azure_billing.total_pre_tax_cost}, 1)-1', label: Change,
        value_format: !!null '', value_format_name: percent_1}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
      palette_id: e7303a54-e53e-4cf0-abc9-2f175c1128e0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths: {}
    series_cell_visualizations:
      azure_billing.total_pre_tax_cost:
        is_active: true
        palette:
          palette_id: f34e59c8-efe0-5e31-dc2e-d78156323ccb
          collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
          custom_colors:
          - "#c6e2ff"
          - "#3399ff"
          - "#002d7f"
      change:
        is_active: false
    series_text_format:
      azure_billing.period_selected: {}
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 592616d0-58e4-4968-9030-928ef38b7b50,
          palette_id: 721299c7-f114-43fc-926f-5bf0462bbfca}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    up_color: "#00A2ED"
    down_color: "#EA4335"
    total_color: "#9AA0A6"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: false
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_gridlines: false
    label_color: [white]
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen:
      Usage Date: azure_billing.usage_date_time_date
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 20
    col: 12
    width: 12
    height: 6
  - title: CONSUMED SERVICE
    name: CONSUMED SERVICE
    model: azure_billing_block
    explore: azure_billing
    type: looker_grid
    fields: [azure_billing.total_pre_tax_cost, azure_billing.period_selected, azure_billing.consumed_service]
    pivots: [azure_billing.period_selected]
    filters:
      azure_billing.period: Quarter
      azure_billing.period_selected: "-NULL"
    sorts: [azure_billing.total_pre_tax_cost desc 0, azure_billing.period_selected]
    limit: 10
    dynamic_fields: [{_kind_hint: supermeasure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: 'pivot_index(${azure_billing.total_pre_tax_cost},
          2)/pivot_index(${azure_billing.total_pre_tax_cost}, 1)-1', label: Change,
        value_format: !!null '', value_format_name: percent_1}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
      palette_id: e7303a54-e53e-4cf0-abc9-2f175c1128e0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths: {}
    series_cell_visualizations:
      azure_billing.total_pre_tax_cost:
        is_active: true
        palette:
          palette_id: f34e59c8-efe0-5e31-dc2e-d78156323ccb
          collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
          custom_colors:
          - "#c6e2ff"
          - "#3399ff"
          - "#002d7f"
      change:
        is_active: false
    series_text_format:
      azure_billing.period_selected: {}
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 592616d0-58e4-4968-9030-928ef38b7b50,
          palette_id: 721299c7-f114-43fc-926f-5bf0462bbfca}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    up_color: "#00A2ED"
    down_color: "#EA4335"
    total_color: "#9AA0A6"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: false
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_gridlines: false
    label_color: [white]
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen:
      Usage Date: azure_billing.usage_date_time_date
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 26
    col: 0
    width: 12
    height: 6
  - title: SUBSCRIPTION ID
    name: SUBSCRIPTION ID
    model: azure_billing_block
    explore: azure_billing
    type: looker_grid
    fields: [azure_billing.total_pre_tax_cost, azure_billing.period_selected, azure_billing.subscription_guid]
    pivots: [azure_billing.period_selected]
    filters:
      azure_billing.period: Quarter
      azure_billing.period_selected: "-NULL"
    sorts: [azure_billing.total_pre_tax_cost desc 0, azure_billing.period_selected]
    limit: 10
    dynamic_fields: [{_kind_hint: supermeasure, table_calculation: change, _type_hint: number,
        category: table_calculation, expression: 'pivot_index(${azure_billing.total_pre_tax_cost},
          2)/pivot_index(${azure_billing.total_pre_tax_cost}, 1)-1', label: Change,
        value_format: !!null '', value_format_name: percent_1}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '10'
    rows_font_size: '10'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
      palette_id: e7303a54-e53e-4cf0-abc9-2f175c1128e0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_column_widths: {}
    series_cell_visualizations:
      azure_billing.total_pre_tax_cost:
        is_active: true
        palette:
          palette_id: f34e59c8-efe0-5e31-dc2e-d78156323ccb
          collection_id: 592616d0-58e4-4968-9030-928ef38b7b50
          custom_colors:
          - "#c6e2ff"
          - "#3399ff"
          - "#002d7f"
      change:
        is_active: false
    series_text_format:
      azure_billing.period_selected: {}
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: !!null '',
        font_color: !!null '', color_application: {collection_id: 592616d0-58e4-4968-9030-928ef38b7b50,
          palette_id: 721299c7-f114-43fc-926f-5bf0462bbfca}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    up_color: "#00A2ED"
    down_color: "#EA4335"
    total_color: "#9AA0A6"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: false
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_gridlines: false
    label_color: [white]
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields:
    listen:
      Usage Date: azure_billing.usage_date_time_date
      Service Name: azure_billing.service_name
      Resource Group: azure_billing.resource_group
    row: 26
    col: 12
    width: 12
    height: 6
  filters:
  - name: Usage Date
    title: Usage Date
    type: field_filter
    default_value: 365 day
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: azure_billing_block
    explore: azure_billing
    listens_to_filters: []
    field: azure_billing.usage_date_time_date
  - name: Service Name
    title: Service Name
    type: string_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
  - name: Resource Group
    title: Resource Group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: azure_billing_block
    explore: azure_billing
    listens_to_filters: []
    field: azure_billing.resource_group