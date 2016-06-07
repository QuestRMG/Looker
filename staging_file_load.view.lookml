- view: staging_file_load
  sql_table_name: dbo.StagingFileLoad
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: archived_file_name
    type: string
    sql: ${TABLE}.ArchivedFileName

  - dimension: notes
    type: string
    sql: ${TABLE}.Notes

  - dimension: original_file_name
    type: string
    sql: ${TABLE}.OriginalFileName

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

  - dimension: vendor_id
    type: number
    # hidden: true
    sql: ${TABLE}.VendorID

  - measure: count
    type: count
    drill_fields: [id, original_file_name, archived_file_name, vendor.id, vendor.name]

