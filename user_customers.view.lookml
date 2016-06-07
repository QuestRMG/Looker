- view: user_customers
  sql_table_name: dbo.UserCustomers
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: asp_net_user_id
    type: number
    # hidden: true
    sql: ${TABLE}.AspNetUserID

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

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - asp_net_users.id
    - asp_net_users.user_name
    - asp_net_users.first_name
    - asp_net_users.last_name
    - customer_profile.id
    - customer_profile.name
    - customer_profile.image_name

