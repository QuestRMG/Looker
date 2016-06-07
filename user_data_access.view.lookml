- view: user_data_access
  sql_table_name: dbo.UserDataAccess
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

  - dimension: line_of_business_id
    type: number
    # hidden: true
    sql: ${TABLE}.LineOfBusinessID

  - dimension: service_category_id
    type: number
    # hidden: true
    sql: ${TABLE}.ServiceCategoryID

  - dimension: user_id
    type: number
    sql: ${TABLE}.UserId

  - measure: count
    type: count
    drill_fields: [id, line_of_business.id, service_category.id, service_category.display_name]

