# GCP Billing and BigQuery Audit

This repository contains a Looker block for analysing **Google Cloud Platform logs**. We provide a Looker model called **GCP Billing** which sits on top of GCP billing log exports. This model allows you to analyse billing data across projects and across services and resource types, allowing you to efficiently manage you GCP Billing account. We also provide projected monthly spend based on your current daily billing, so you can take actions to control spending across your organization.

## Getting Started

Let's run through the steps in Google Cloud Platform to setup the logging exports.

### GCP Setup

Create a BigQuery dataset for the billing logs. Go to the Google Cloud Platform console, and select **BigQuery**, or go to https://bigquery.cloud.google.com/. Click the drop down next to the project name and select **Create New Dataset**, set a location and click **OK**.

*Optional:* We recommend setting up a new GCP Project, purely for this purpose.

### Setting up the Billing Export

To setup a billing export to BigQuery do the following:

1. Go to the Google Cloud Platform console and select **Billing**
2. Choose the appropriate billing account (if you have more than one) using **Manage billing accounts**
3. Click **Billing Export** > **BigQuery export**
4. Select the Project and Dataset you created earlier
5. Click **Enable BigQuery export**

Billing data will now be exported to your dataset at regular intervals. The Billing export table is date partitioned, and will incur a small data storage charge.

```
Note: Recently the GCP Billing Export moved from Beta to v1. If you activated the billing export before the change, then there will be two tables in your export dataset. This model sits on top of the new v1 table, as the old table will soon be deprecated.
```

## Looker Configuration

1. Go to **BigQuery** and copy the name of the billing export table, this will start **gcp_billing_export_**
2. Create a new **Database Connection** in Looker to connect to the BigQuery dataset: follow the steps [here](https://docs.looker.com/setup-and-management/database-config/google-bigquery) to create a service account in GCP and add a new connection to Looker, ensure you use **BigQuery standard SQL**

You should now be ready to start monitoring your GCP usage.

## Block Customization
This block uses Refinements to facilitate customization of most LookML components included. These refinements can be used to add new content, or update existing content (such as the link and drill_field parameters on the total_cost measure.)
For more information on using refinements to customize marketplace blocks, please see [this documentation](https://docs.looker.com/data-modeling/marketplace/customize-blocks).
