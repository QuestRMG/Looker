- view: vendor_service_bak
  sql_table_name: dbo.VendorService_bak
  fields:

  - dimension: id
    primary_key: true
    type: number
    sql: ${TABLE}.ID

  - dimension: amount
    type: number
    sql: ${TABLE}.Amount

  - dimension: collected_units
    type: number
    sql: ${TABLE}.CollectedUnits

  - dimension: collected_uom
    type: string
    sql: ${TABLE}.CollectedUOM

  - dimension_group: create
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.CreateDate

  - dimension: create_user
    type: string
    sql: ${TABLE}.CreateUser

  - dimension: customer_id
    type: number
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: data_source_id
    type: number
    # hidden: true
    sql: ${TABLE}.DataSourceID

  - dimension: equipment_type
    type: string
    sql: ${TABLE}.EquipmentType

  - dimension: exception_id
    type: number
    # hidden: true
    sql: ${TABLE}.ExceptionID

  - dimension: exception_notes
    type: string
    sql: ${TABLE}.ExceptionNotes

  - dimension: file_import_log_id
    type: number
    # hidden: true
    sql: ${TABLE}.FileImportLogID

  - dimension: hauler_name
    type: string
    sql: ${TABLE}.HaulerName

  - dimension: item_id
    type: number
    sql: ${TABLE}.ItemID

  - dimension: recycle_center_id
    type: number
    # hidden: true
    sql: ${TABLE}.RecycleCenterID

  - dimension: service_category_id
    type: number
    # hidden: true
    sql: ${TABLE}.ServiceCategoryID

  - dimension_group: service
    type: time
    timeframes: [date, week, month]
    convert_tz: false
    sql: ${TABLE}.ServiceDate

  - dimension_group: update
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.UpdateDate

  - dimension: update_user
    type: string
    sql: ${TABLE}.UpdateUser

  - dimension: vendor_id
    type: number
    # hidden: true
    sql: ${TABLE}.VendorID

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - id
    - hauler_name
    - customer.id
    - customer.name
    - vendor.id
    - vendor.name
    - service_category.id
    - service_category.display_name
    - recycle_center.id
    - recycle_center.name
    - exception.id
    - data_source.id
    - file_import_log.id
    - file_import_log.file_name

