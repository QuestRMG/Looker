- view: bharecycle
  sql_table_name: dbo.BHARECYCLE
  fields:

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: name
    type: string
    sql: ${TABLE}.Name

  - dimension: state
    type: string
    sql: ${TABLE}.State

  - measure: count
    type: count
    drill_fields: [name]

