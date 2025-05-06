# Cloud Cost Management: Azure

Connect directly to your billing data in Azure to provide a consolidated reporting view of cloud spend.

This Looker Block for Azure billing provides insights around usage of Azure services and the associated costs,
and focuses on the three most common levers of cost-savings, including:
- Increasing reserved instance coverage and utilization
- Decreasing data transfer costs
- Allocating costs over custom variable

Whether you need the report segmented by product type, user identity, or region, this block's Explore and Dashboard can be cut-and-sliced any number of ways to properly allocate costs for any of your business needs.
You can then drill into any specific line item to see even more detail, such as the selected operating system, tenancy, purchase option (on-demand, spot, or reserved), etc..

## Installation Requirements
* This block assumes a [Looker connection to Microsoft Azure Synapse Analytics](https://docs.looker.com/setup-and-management/database-config/ms-azure-sql-dw) is being used to retreive the Cost Management data residing on a Microsoft Azure SQL Warehouse.

* This block leverages the [Azure Cost Management's default export schema](https://docs.microsoft.com/en-us/azure/cost-management-billing/costs/tutorial-export-acm-data?tabs=azure-portal). However, if you have extracted your data utilizing the [Azure Billing REST API](https://docs.microsoft.com/en-us/rest/api/billing/), this block will still be useful. In this scenario, a Refinement File will likely be required to ensure the field names on your exported data are matched to the expected dimensions defined in this block. Please see the included **"BILLING_API_REFINEMENT_TEMPLATE.LKML"** File within the block for an example template matching common API GET call results to the block dimensions.

* For additional information on using refinements to customize marketplace blocks, please see [this documentation](https://docs.looker.com/data-modeling/marketplace/customize-blocks).
