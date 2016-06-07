- view: food_rescue
  sql_table_name: dbo.FoodRescue
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: agency
    type: string
    sql: ${TABLE}.Agency

  - dimension: customer_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: data_source
    type: string
    sql: ${TABLE}.DataSource

  - dimension: non_produce
    type: number
    sql: ${TABLE}.NonProduce

  - dimension: produce
    type: number
    sql: ${TABLE}.Produce

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: report_date
    type: string
    sql: ${TABLE}.ReportDate

  - dimension: rpt_month
    type: number
    sql: ${TABLE}.RptMonth

  - dimension: rpt_year
    type: number
    sql: ${TABLE}.RptYear

  - dimension: rpt_year_mo
    type: number
    sql: ${TABLE}.RptYearMo

  - dimension: store
    type: number
    sql: ${TABLE}.Store

  - measure: count
    type: count
    drill_fields: [id, customer.id, customer.name]

