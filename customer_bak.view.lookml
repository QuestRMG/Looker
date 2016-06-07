- view: customer_bak
  sql_table_name: dbo.Customer_bak
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: address
    type: string
    sql: ${TABLE}.Address

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

  - dimension: customer_profile_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerProfileID

  - dimension: customer_segment_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerSegmentID

  - dimension: has_organics
    type: string
    sql: ${TABLE}.HasOrganics

  - dimension: location
    type: string
    sql: ${TABLE}.Location

  - dimension: name
    type: string
    sql: ${TABLE}.Name

  - dimension: site_type
    type: string
    sql: ${TABLE}.SiteType

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

  - dimension: zip
    type: string
    sql: ${TABLE}.Zip

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - name
    - customer_profile.id
    - customer_profile.name
    - customer_profile.image_name
    - customer_segment.id
    - customer_segment.level_name

