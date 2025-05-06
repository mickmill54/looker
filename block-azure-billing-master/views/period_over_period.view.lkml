include: "azure_billing.view.lkml"

view: +azure_billing {
  ###################### Period over Period Reporting Metrics ######################

  parameter: period {
    label: "Timeframe"
    view_label: "Period over Period"
    type: unquoted
    allowed_value: {
      label: "Week to Date"
      value: "Week"
    }
    allowed_value: {
      label: "Month to Date"
      value: "Month"
    }
    allowed_value: {
      label: "Quarter to Date"
      value: "Quarter"
    }
    allowed_value: {
      label: "Year to Date"
      value: "Year"
    }
    default_value: "Period"
  }

  # To get start date we need to get either first day of the year, month or quarter
  # T-SQL does not support DATE_TRUNC methods (!) so we have to use a pattern: http://www.silota.com/docs/recipes/sql-server-date-parts-truncation.html
  dimension: first_date_in_period {
    view_label: "Period over Period"
    type: date
    datatype: date
    hidden: no
    sql: DATEADD({% parameter period %}, DATEDIFF({% parameter period %}, 0, CURRENT_TIMESTAMP), 0);;
    convert_tz: no
  }

  #Now get the total number of days in the period
  dimension: days_in_period {
    view_label: "Period over Period"
    type: number
    hidden: no
    sql: DATEDIFF(DAY, ${first_date_in_period}, CURRENT_TIMESTAMP) ;;
  }

  #Now get the first date in the prior period
  dimension: first_date_in_prior_period {
    view_label: "Period over Period"
    type: date
    datatype: date
    hidden: no
    sql: DATEADD({% parameter period %}, DATEDIFF({% parameter period %}, 0, DATEADD({% parameter period %}, -1, CURRENT_TIMESTAMP)), 0);;
    convert_tz: no
  }

  #Now get the last date in the prior period
  dimension: last_date_in_prior_period {
    view_label: "Period over Period"
    type: date
    datatype: date
    hidden: no
    sql: DATEADD(DAY, ${days_in_period}, ${first_date_in_prior_period}) ;;
    convert_tz: no
  }

  # Now figure out which period each date belongs in
  dimension: period_selected {
    view_label: "Period over Period"
    type: string
    sql:
        CASE
          WHEN ${azure_billing.usage_date_time_date} >=  ${first_date_in_period}
          THEN 'This {% parameter period %} to Date'
          WHEN ${azure_billing.usage_date_time_date} >= ${first_date_in_prior_period}
          AND ${azure_billing.usage_date_time_date} <= ${last_date_in_prior_period}
          THEN 'Prior {% parameter period %} to Date'
          ELSE NULL
          END ;;
  }


  dimension: days_from_period_start {
    view_label: "Period over Period"
    type: number
    sql: CASE WHEN ${period_selected} = 'This {% parameter period %} to Date'
          THEN DATEDIFF(DAY, ${first_date_in_period}, ${azure_billing.usage_date_time_date})
          WHEN ${period_selected} = 'Prior {% parameter period %} to Date'
          THEN DATEDIFF(DAY, ${first_date_in_prior_period}, ${azure_billing.usage_date_time_date})
          ELSE NULL END;;
  }


}
