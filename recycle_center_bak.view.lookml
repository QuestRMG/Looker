- view: recycle_center_bak
  sql_table_name: dbo.RecycleCenter_bak
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: active
    type: string
    sql: ${TABLE}.Active

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: name
    type: string
    sql: ${TABLE}.Name

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdateDate

  - dimension: update_user
    type: string
    sql: ${TABLE}.UpdateUser

  - measure: count
    type: count
    drill_fields: [id, name]

