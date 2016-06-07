- view: user_activity_detail
  sql_table_name: dbo.UserActivityDetail
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: action
    type: string
    sql: ${TABLE}.Action

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: page_name
    type: string
    sql: ${TABLE}.PageName

  - dimension: user_activity_id
    type: number
    # hidden: true
    sql: ${TABLE}.UserActivityID

  - measure: count
    type: count
    drill_fields: [id, page_name, user_activity.id]

