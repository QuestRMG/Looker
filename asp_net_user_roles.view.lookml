- view: asp_net_user_roles
  sql_table_name: dbo.AspNetUserRoles
  fields:

  - dimension: role_id
    type: number
    sql: ${TABLE}.RoleId

  - dimension: user_id
    type: number
    sql: ${TABLE}.UserId

  - measure: count
    type: count
    drill_fields: []

