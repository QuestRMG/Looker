- view: asp_net_user_claims
  sql_table_name: dbo.AspNetUserClaims
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.Id

  - dimension: claim_type
    type: string
    sql: ${TABLE}.ClaimType

  - dimension: claim_value
    type: string
    sql: ${TABLE}.ClaimValue

  - dimension: user_id
    type: number
    sql: ${TABLE}.UserId

  - measure: count
    type: count
    drill_fields: [id]

