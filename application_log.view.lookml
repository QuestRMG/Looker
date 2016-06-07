- view: application_log
  sql_table_name: dbo.ApplicationLog
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.Id

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Date

  - dimension: exception
    type: string
    sql: ${TABLE}.Exception

  - dimension: level
    type: string
    sql: ${TABLE}.Level

  - dimension: logger
    type: string
    sql: ${TABLE}.Logger

  - dimension: message
    type: string
    sql: ${TABLE}.Message

  - dimension: thread
    type: string
    sql: ${TABLE}.Thread

  - measure: count
    type: count
    drill_fields: [id]

