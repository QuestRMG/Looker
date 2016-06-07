- view: column_mapping
  sql_table_name: dbo.ColumnMapping
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: excel_column
    type: string
    sql: ${TABLE}.ExcelColumn

  - dimension: lob
    type: string
    sql: ${TABLE}.LOB

  - dimension: required
    type: string
    sql: ${TABLE}.Required

  - dimension: sqlcolumn
    type: string
    sql: ${TABLE}.SQLColumn

  - measure: count
    type: count
    drill_fields: [id]

