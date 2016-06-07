- view: customer_type_customer_segments
  sql_table_name: dbo.CustomerTypeCustomerSegments
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

  - dimension: customer_segment_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerSegmentID

  - dimension: customer_type_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerTypeID

  - measure: count
    type: count
    drill_fields: [id, customer_type.id, customer_type.image_name, customer_segment.id, customer_segment.level_name]

