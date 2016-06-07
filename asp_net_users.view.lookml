- view: asp_net_users
  sql_table_name: dbo.AspNetUsers
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.Id

  - dimension: access_failed_count
    type: number
    sql: ${TABLE}.AccessFailedCount

  - dimension: active
    type: string
    sql: ${TABLE}.Active

  - dimension: email
    type: string
    sql: ${TABLE}.Email

  - dimension: email_confirmed
    type: string
    sql: ${TABLE}.EmailConfirmed

  - dimension: first_name
    type: string
    sql: ${TABLE}.FirstName

  - dimension: last_name
    type: string
    sql: ${TABLE}.LastName

  - dimension: lockout_enabled
    type: string
    sql: ${TABLE}.LockoutEnabled

  - dimension_group: lockout_end_date_utc
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.LockoutEndDateUtc

  - dimension: password_hash
    type: string
    sql: ${TABLE}.PasswordHash

  - dimension: phone_number
    type: string
    sql: ${TABLE}.PhoneNumber

  - dimension: phone_number_confirmed
    type: string
    sql: ${TABLE}.PhoneNumberConfirmed

  - dimension: quest_user
    type: string
    sql: ${TABLE}.QuestUser

  - dimension: security_stamp
    type: string
    sql: ${TABLE}.SecurityStamp

  - dimension: terms_of_use_accept
    type: string
    sql: ${TABLE}.TermsOfUseAccept

  - dimension_group: terms_of_use_accept
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.TermsOfUseAcceptDate

  - dimension: two_factor_enabled
    type: string
    sql: ${TABLE}.TwoFactorEnabled

  - dimension: user_name
    type: string
    sql: ${TABLE}.UserName

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - user_name
    - first_name
    - last_name
    - user_activity.count
    - user_customers.count

