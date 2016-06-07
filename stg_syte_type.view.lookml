- view: stg_syte_type
  sql_table_name: dbo.StgSyteType
  fields:

  - dimension: syte_type
    type: string
    sql: ${TABLE}.SyteType

  - measure: count
    type: count
    drill_fields: []

