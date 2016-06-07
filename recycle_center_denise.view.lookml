- view: recycle_center_denise
  sql_table_name: dbo.RecycleCenterDENISE
  fields:

  - dimension: active
    type: number
    sql: ${TABLE}.active

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: name
    type: string
    sql: ${TABLE}.name

  - dimension: net_suite_id
    type: number
    sql: ${TABLE}.NetSuiteId

  - dimension: state
    type: string
    sql: ${TABLE}.state

  - measure: count
    type: count
    drill_fields: [name]

