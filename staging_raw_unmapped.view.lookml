- view: staging_raw_unmapped
  sql_table_name: dbo.StagingRawUnmapped
  fields:

  - dimension: column_name
    type: string
    sql: ${TABLE}.ColumnName

  - dimension: column_value
    type: string
    sql: ${TABLE}.ColumnValue

  - dimension: file_load_id
    type: number
    sql: ${TABLE}.FileLoadID

  - dimension: staging_row_id
    type: number
    sql: ${TABLE}.StagingRowID

  - measure: count
    type: count
    drill_fields: [column_name]

