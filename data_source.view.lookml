- view: data_source
  sql_table_name: dbo.DataSource
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: source
    type: string
    sql: ${TABLE}.Source

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - file_import_log.count
    - file_import_log_bak.count
    - file_import_log_bak0925.count
    - service_request.count
    - vendor_service.count
    - vendor_service_bak.count

