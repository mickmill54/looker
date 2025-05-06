include: "//azure-billing/**/*.view.lkml"
include: "//azure-billing/**/*.explore.lkml"

# Use LookML refinements to refine views and explores defined in the remote project.
# Learn more at: https://docs.looker.com/data-modeling/learning-lookml/refinements

# This Refinement Template demonstrates mapping of REST API GET Results to the corresponding
#  fields that would have been generated if utilizing the Cost Management export.
# This can be copied into the Marketplace Project's default Refinement File
# (which resides in the installed project's root directory) and then revised as necessary.

view: +azure_billing {

  dimension: currency {
    type: string
    ## Currency = BillingCurrencyCode
    ## sql: ${TABLE}.Currency ;;
    sql: ${TABLE}.BillingCurrencyCode ;;
  }

  dimension: instance_id {
    group_label: "IDs"
    type: string
    ## InstanceId = ResourceId
    ## sql: ${TABLE}.InstanceId ;;
    sql: ${TABLE}.ResourceId ;;
  }

  dimension: resource_rate {
    group_label: "Resource"
    type: string
    ## ResourceRate = EffectivePrice
    ## sql: ${TABLE}.ResourceRate ;;
    sql: ${TABLE}.EffectivePrice ;;
  }

  dimension: resource_type {
    group_label: "Resource"
    type: string
    ## ResourceType = ChargeType
    ## sql: ${TABLE}.ResourceType ;;
    sql: ${TABLE}.ChargeType ;;
  }

  dimension: subscription_guid {
    group_label: "IDs"
    type: string
    ## SubscriptionGuid = SubscriptionId
    ## sql: ${TABLE}.SubscriptionGuid ;;
    sql: ${TABLE}.SubscriptionId ;;
  }

  dimension_group: usage_date_time {
    label: "Usage"
    type: time
    ## UsageDateTime = BillingPeriodStartDate
    ## sql: TIMESTAMP(${TABLE}.UsageDateTime) ;;
    sql: TIMESTAMP(${TABLE}.BillingPeriodStartDate) ;;
  }

  dimension: pre_tax_cost {
    hidden: yes
    type: number
    ## PreTaxCost = CostInBillingCurrency
    sql: CAST(${TABLE}.CostInBillingCurrency  AS FLOAT64)*200 ;;
  }

  dimension: service_name {
    group_label: "Service"
    type: string
    ## ServiceName = ProductName
    sql: ${TABLE}.ProductName ;;
  }

  dimension: service_tier {
    group_label: "Service"
    type: string
    ## ServiceTier = ServiceFamily
    sql: ${TABLE}.ServiceFamily ;;
  }

  dimension: usage_quantity {
    hidden: yes
    type: string
    ## UsageQuantity = Quantity
    sql: ${TABLE}.quantity ;;
  }

  measure: total_usage_quantity {
    type: sum
    sql: ${usage_quantity} ;;
    ## Changing Value Format Name
    value_format_name: decimal_2
  }
}
