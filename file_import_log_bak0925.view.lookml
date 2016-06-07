- view: file_import_log_bak0925
  sql_table_name: dbo.FileImportLogBak0925
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: customer_profile_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerProfileID

  - dimension: data_source_id
    type: number
    # hidden: true
    sql: ${TABLE}.DataSourceId

  - dimension: file_name
    type: string
    sql: ${TABLE}.FileName

  - dimension: notes
    type: string
    sql: ${TABLE}.Notes

  - dimension: upload_by
    type: string
    sql: ${TABLE}.UploadBy

  - dimension_group: upload
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UploadDate

  - dimension: upload_successful
    type: string
    sql: ${TABLE}.UploadSuccessful

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - file_name
    - customer_profile.id
    - customer_profile.name
    - customer_profile.image_name
    - data_source.id

