- view: asp_net_user_logins
  sql_table_name: dbo.AspNetUserLogins
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.Id

  - dimension: login_provider
    type: string
    sql: ${TABLE}.LoginProvider

  - dimension: provider_key
    type: string
    sql: ${TABLE}.ProviderKey

  - dimension: user_id
    type: number
    sql: ${TABLE}.UserId

  - measure: count
    type: count
    drill_fields: [id]

