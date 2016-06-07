- view: sharepoint_user
  sql_table_name: dbo.SharepointUser
  fields:

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: url
    type: string
    sql: ${TABLE}.URL

  - dimension: user_name
    type: string
    sql: ${TABLE}.UserName

  - measure: count
    type: count
    drill_fields: [user_name]

