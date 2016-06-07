- view: customer_segment_label
  sql_table_name: dbo.CustomerSegmentLabel
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: customer_profile_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerProfileID

  - dimension: level_label
    type: string
    sql: ${TABLE}.LevelLabel

  - dimension: parent_id
    type: number
    sql: ${TABLE}.ParentID

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdateDate

  - dimension: update_user
    type: string
    sql: ${TABLE}.UpdateUser

  - measure: count
    type: count
    drill_fields: [id, customer_profile.id, customer_profile.name, customer_profile.image_name]

