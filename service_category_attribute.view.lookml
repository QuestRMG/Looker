- view: service_category_attribute
  sql_table_name: dbo.ServiceCategoryAttribute
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: active
    type: string
    sql: ${TABLE}.Active

  - dimension: attribute_desc
    type: string
    sql: ${TABLE}.AttributeDesc

  - dimension: attribute_name
    type: string
    sql: ${TABLE}.AttributeName

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

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
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - attribute_name
    - service_category.id
    - service_category.display_name
    - service_category_attribute_value.count
    - service_category_attribute_value_bk.count

