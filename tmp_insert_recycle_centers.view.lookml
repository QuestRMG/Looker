- view: tmp_insert_recycle_centers
  sql_table_name: dbo.TmpInsertRecycleCenters
  fields:

  - dimension: city
    type: string
    sql: ${TABLE}.city

  - dimension: name
    type: string
    sql: ${TABLE}.Name

  - dimension: state
    type: string
    sql: ${TABLE}.STATE

  - measure: count
    type: count
    drill_fields: [name]

