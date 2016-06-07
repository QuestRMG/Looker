- view: exception
  sql_table_name: dbo.Exception
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: active
    type: string
    sql: ${TABLE}.Active

  - dimension: code
    type: number
    sql: ${TABLE}.Code

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: description
    type: string
    sql: ${TABLE}.Description

  - dimension: service_category_id
    type: number
    # hidden: true
    sql: ${TABLE}.ServiceCategoryID

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdateDate

  - dimension: update_user
    type: string
    sql: ${TABLE}.UpdateUser

  - measure: count
    type: count
    drill_fields: [id, service_category.id, service_category.display_name, vendor_service.count, vendor_service_bak.count]

