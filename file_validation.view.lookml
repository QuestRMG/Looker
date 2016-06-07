- view: file_validation
  sql_table_name: dbo.FileValidation
  fields:

  - dimension: file_validation_id
    primary_key: true
    type: number
    sql: ${TABLE}.FileValidationID

  - dimension: file_extension
    type: string
    sql: ${TABLE}.FileExtension

  - dimension: file_name
    type: string
    sql: ${TABLE}.FileName

  - dimension: folder_path
    type: string
    sql: ${TABLE}.FolderPath

  - dimension: header
    type: string
    sql: ${TABLE}.Header

  - measure: count
    type: count
    drill_fields: [file_validation_id, file_name]

