- view: user_geoaccess
  sql_table_name: dbo.UserGEOAccess
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.Id

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

  - dimension: customer_segment_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerSegmentID

  - dimension: user_id
    type: number
    sql: ${TABLE}.UserId

  - measure: count
    type: count
    drill_fields: [id, customer_segment.id, customer_segment.level_name, customer.id, customer.name]

