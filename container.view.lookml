- view: container
  sql_table_name: dbo.Container
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: calc_summary_values
    type: string
    sql: ${TABLE}.CalcSummaryValues

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: customer_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: frequency
    type: number
    sql: ${TABLE}.Frequency

  - dimension: material
    type: string
    sql: ${TABLE}.Material

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: rpt_year_mo
    type: number
    sql: ${TABLE}.RptYearMo

  - dimension: service_category_id
    type: number
    # hidden: true
    sql: ${TABLE}.ServiceCategoryID

  - dimension: size
    type: number
    sql: ${TABLE}.Size

  - dimension: type
    type: string
    sql: ${TABLE}.Type

  - dimension: uom
    type: string
    sql: ${TABLE}.UOM

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdateDate

  - dimension: update_user
    type: string
    sql: ${TABLE}.UpdateUser

  - measure: count
    type: count
    drill_fields: [id, customer.id, customer.name, service_category.id, service_category.display_name]

