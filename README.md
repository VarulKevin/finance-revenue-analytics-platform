# Finance Revenue Analytics using Snowflake, dbt and Tableau

## Project Overview

This project demonstrates an end-to-end Analytics Engineering workflow using Snowflake, dbt, and Tableau.

The objective is to transform raw e-commerce transactional data into a curated analytics layer that enables business reporting, KPI monitoring, and executive dashboards.

The project follows modern data engineering and analytics engineering best practices including:

* Source modeling
* Staging transformations
* Dimensional modeling
* Fact tables
* Reporting layer creation
* Data quality testing
* Lineage tracking
* Dashboard development

---

## Tech Stack

| Technology     | Purpose                              |
| -------------- | ------------------------------------ |
| Snowflake      | Cloud Data Warehouse                 |
| dbt Cloud      | Data Transformation & Modeling       |
| SQL            | Data Transformation Logic            |
| Tableau Public | Dashboard & Visualization            |
| GitHub         | Version Control & Portfolio Showcase |

---

## Architecture

![Architecture](screenshots/architecture_diagram.png)

---

## Data Model

### Raw Layer

Source tables loaded into Snowflake:

* customers
* orders
* order_items
* products
* payments

### Staging Layer

* stg_customers
* stg_orders
* stg_order_items
* stg_products
* stg_payments

### Mart Layer

#### Dimensions

* dim_customers
* dim_products

#### Facts

* fct_revenue
* fct_finance_summary

### Reporting Layer

* rpt_monthly_revenue
* rpt_state_revenue
* rpt_payment_analysis
* rpt_product_performance
* rpt_executive_summary

---

## Executive KPIs

The project produces executive-level KPIs including:

| KPI                  | Value   |
| -------------------- | ------- |
| Total Revenue        | €20.3M  |
| Total Orders         | 98,666  |
| Products Sold        | 117,604 |
| Average Order Value  | €164.40 |
| Revenue per Customer | €205.83 |

---

## Data Quality Testing

Implemented dbt tests:

* Not Null Tests
* Unique Tests
* Source Validation

All tests successfully passed.

---

## dbt Lineage

The project uses dbt lineage to track dependencies from source systems through staging, marts, reporting models, and executive KPI outputs.

---

## Tableau Dashboard

The final dashboard includes:

* Revenue by State
* Monthly Revenue Trend
* Payment Method Analysis
* Product Category Performance
* Executive KPI Cards

---

## Key Business Insights

* Credit Card payments generate the majority of revenue.
* Revenue is concentrated in a small number of states.
* Revenue trends show strong growth throughout the reporting period.
* Certain product categories consistently outperform others.

---

## Screenshots

### dbt Lineage

![Lineage](screenshots/initial_lineage.png)

### Executive KPI Output

![Executive KPI](screenshots/executive_kpi_output.png)

### Tableau Dashboard

![Dashboard](screenshots/Tableau_dashboard.png)

---

## Author

Karan Demta

Analytics Engineering Portfolio Project
Snowflake | dbt | SQL | Tableau
