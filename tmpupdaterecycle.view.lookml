- view: tmpupdaterecycle
  sql_table_name: dbo.tmpupdaterecycle
  fields:

  - dimension: recyclecentercity
    type: string
    sql: ${TABLE}.recyclecentercity

  - dimension: recyclecentername
    type: string
    sql: ${TABLE}.recyclecentername

  - dimension: recyclecenterstate
    type: string
    sql: ${TABLE}.recyclecenterstate

  - dimension: recyid
    type: number
    value_format_name: id
    sql: ${TABLE}.recyid

  - dimension: type
    type: string
    sql: ${TABLE}.type

  - measure: count
    type: count
    drill_fields: [recyclecentername]

