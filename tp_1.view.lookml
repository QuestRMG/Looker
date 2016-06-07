- view: tp_1
  sql_table_name: dbo.tp_1
  fields:

  - dimension: nmonth
    type: string
    sql: ${TABLE}.nmonth

  - dimension: ntotal
    type: number
    sql: ${TABLE}.ntotal

  - dimension: nuom
    type: string
    sql: ${TABLE}.nuom

  - dimension: nyear
    type: string
    sql: ${TABLE}.nyear

  - dimension: rownbr
    type: number
    sql: ${TABLE}.rownbr

  - measure: count
    type: count
    drill_fields: []

