- view: asp_net_roles
  sql_table_name: dbo.AspNetRoles
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.Id

  - dimension: description
    type: string
    sql: ${TABLE}.Description

  - dimension: name
    type: string
    sql: ${TABLE}.Name

  - measure: count
    type: count
    drill_fields: [id, name]

