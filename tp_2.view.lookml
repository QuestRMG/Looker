- view: tp_2
  sql_table_name: dbo.tp_2
  fields:

  - dimension: nmonth
    type: string
    sql: ${TABLE}.nmonth

  - dimension: ntotal
    type: string
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

