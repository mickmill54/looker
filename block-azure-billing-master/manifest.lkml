project_name: "azure-billing"

constant: AZURE_BILLING_CONNECTION {
  export: override_required
  value: "mw-alpha-cloud-usage"
}

constant: AZURE_SCHEMA_NAME {
  export: override_optional
  value: "cloud_cost_final"
}

constant: AZURE_TABLE_NAME {
  export: override_optional
  value: "base_table_date_impute_azure"
}
