- view: user_activity
  sql_table_name: dbo.UserActivity
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: asp_net_user_id
    type: number
    # hidden: true
    sql: ${TABLE}.AspNetUserID

  - dimension_group: login
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Login

  - dimension_group: logout
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.Logout

  - dimension: logout_method
    type: string
    sql: ${TABLE}.LogoutMethod

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
    - user_activity_detail.count

